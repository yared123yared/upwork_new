import 'dart:async';

import 'package:complex/common/widgets/common_list_tile.dart';
import 'package:complex/common/widgets/custom_action_button.dart';
import 'package:complex/common/widgets/custom_app_bar.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:complex/data/data.dart';
import 'package:complex/newentityfeatures/Models/assignment_model.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_model.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_score_model.dart';
import 'package:complex/newentityfeatures/school/Parent%20info/repo/parentinfomodel_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter/cupertino.dart' show CupertinoSlidingSegmentedControl;
import 'package:complex/common/widgets/segment_tab.dart';
import '../bloc/bloc.dart';

// enum AnswerFormState { studnetAnswer, teacherGiveScore, studentShowScore }

///will show the materials and submit the answer for the student
class QuestionsAnswerForm extends StatefulWidget {
  final AnsweredPaper answer;
  final AssignmentModel assignment;
  final VrAssignmentModel vrAssignment;
  final String idCardNum;
  final AnswerFormState state;
  final String entityid;
  final String entitytype;
  final String detailstype;

  const QuestionsAnswerForm({
    Key key,
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.assignment,
    @required this.state,
    @required this.vrAssignment,
    @required this.idCardNum,
    @required this.answer,
  })  : assert(assignment != null),
        assert(idCardNum != null),
        assert(vrAssignment != null),
        super(key: key);

  @override
  _QuestionsAnswerFormState createState() => _QuestionsAnswerFormState();
}

class _QuestionsAnswerFormState extends State<QuestionsAnswerForm> {
  Map<Question, Answer> questions = Map();

  ///wither the student is answering or the teacher is giving the mark
  bool answering = true;

  int currentSegment = 0;

  Timer timer;
  Duration remainingTime;

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    answering = widget.state == AnswerFormState.studnetAnswer;

    if (answering) {
      remainingTime = Duration(minutes: widget.vrAssignment.timeAllowed);
      timer = Timer.periodic(
        Duration(milliseconds: 1000),
        (tick) {
          setState(() {
            remainingTime -= Duration(seconds: 1);
          });
          if (remainingTime.inSeconds == 0) {
            submit(context);
            timer.cancel();
          }
        },
      );
    }

    for (var i = 0; i < widget.assignment.questions.length; i++) {
      if (widget.answer != null) {
        questions[widget.assignment.questions[i]] = widget.answer.answers[i];
      } else {
        questions[widget.assignment.questions[i]] = Answer(
          id: widget.assignment.questions[i].qid,
          choices: [],
        );
      }
    }

    controller.addListener(() {
      if (controller.page > .5) {
        setState(() {
          currentSegment = 1;
        });
      } else {
        setState(() {
          currentSegment = 0;
        });
      }
    });
    super.initState();
  }

  var controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Assignemtn"),
      body: BlocListener<ParentInfoModelBloc, ParentInfoModelState>(
        listener: (context, state) {
          if (state is IsSaved) {
            Navigator.pop(context, state);
          } else if (state is VrAssignmentAnsweredPaperListState) {
            Navigator.pop(context, state);
          }
        },
        child: Column(
          children: [
            if (remainingTime != null)
              Text(
                  "Remaining Time : ${remainingTime.inMinutes}:${remainingTime.inSeconds % 60}"),
            if (answering) _buildTopNavigator(),
            Expanded(
              child: PageView(
                controller: controller,
                children: [
                  if (answering) _buildStudymaterialpage(context),
                  ListView(
                    children: [
                      ListTile(
                        title: Text("Questions"),
                        selected: true,
                        onTap: () {
                          controller.animateToPage(
                            0,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeOut,
                          );
                        },
                      ),
                      for (var i = 0; i < questions.length; i++)
                        _buildQuestion(i, questions.keys.toList()[i]),
                      if (questions.isEmpty)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 24.0,
                            horizontal: 28.0,
                          ),
                          child: Center(
                            child: Text(
                              "There are no questions for this assignment",
                              textAlign: TextAlign.center,

                            ),
                          ),
                        ),
                      if (widget.state != AnswerFormState.studentShowScore)
                        CustomActionButton(
                          title: "SUBMIT",
                          onTap: () => submit(context),
                          gradient: C.bgGradient,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> submit(context) async {
    if (answering) {
      BlocProvider.of<ParentInfoModelBloc>(context).add(
        SubmitAnswerForStudentSchoolEvent(
          entityid: widget.entityid,
          entitytype: widget.entitytype,
          detailstype: widget.detailstype,
          idCardNum: widget.idCardNum,
          assignmentID: widget.assignment?.assignmentID,
          vrAssignmentID: widget.vrAssignment,
          questions: questions.values.toList(),
        ),
      );
    } else {
      BlocProvider.of<ParentInfoModelBloc>(context).add(
        SubmitAnswerForTeacherSchoolEvent(
          entityid: widget.entityid,
          entitytype: widget.entitytype,
          detailstype: widget.detailstype,
          idCardNum: widget.idCardNum,
          assignmentID: widget.assignment?.assignmentID,
          vrAssignmentID: widget.vrAssignment,
          questions: questions.values.toList(),
        ),
      );
    }
  }

  ListView _buildStudymaterialpage(BuildContext context) {
    return ListView(
      children: widget.assignment.studyMaterials
          .map<Widget>((e) => CommonListTile(
                listState: ListStateClass(
                    title: e.name,
                    subtitle: e.description,
                    tapAction: () {
                      if (e.studyUrl != null) {
                        buildUrlPage(context, e);
                      } else {
                        ///this must not happens in real sitiution
                        asuka.showSnackBar(
                          SnackBar(
                            content: Text(
                              'The study material dosn`t has a link, inform the instractor of that',
                            ),
                          ),
                        );
                      }
                    }),
              ))
          .toList()
            ..insert(
              0,
              ListTile(
                title: Text("Study Materials"),
                selected: true,
                onTap: () {
                  controller.animateToPage(
                    1,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  );
                },
              ),
            )
            ..add(CustomActionButton(
              title: 'Questions',
              onTap: () {
                controller.animateToPage(
                  1,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeOut,
                );
              },
            )),
    );
  }

  _buildTopNavigator() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: height * 2),
      width: width * 90,
      child: CupertinoSlidingSegmentedControl<int>(
        backgroundColor: Colors.white24,
        groupValue: currentSegment,
        children: {
          0: SegmentTab(
            text: 'Study Materials',
            isSelected: currentSegment == 0,
          ),
          1: SegmentTab(
            text: "Questions",
            isSelected: currentSegment == 1,
          ),
        },
        onValueChanged: (i) {
          controller.animateToPage(
            i,
            duration: Duration(
              milliseconds: 500,
            ),
            curve: Curves.easeIn,
          );
          setState(() {
            currentSegment = i;
          });
        },
      ),
      decoration: BoxDecoration(
          color: C.multiColor_3, borderRadius: BorderRadius.circular(width)),
    );
  }

  ///navigate the user to a page with link of the data contained in the study material item
  Future buildUrlPage(BuildContext context, StudyMaterial e) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: CustomAppBar(
            title: "Study Material",
            leading: BackButton(),
          ),
          body: WebView(
            initialUrl: e.studyUrl,
          ),
        ),
      ),
    );
  }

  List controllers = [];
  Widget _buildQuestion(int questionIndex, Question info) {
    try {
      final x = controllers[questionIndex * 2].runtimeType;
      final x2 = controllers[questionIndex * 2 + 1].runtimeType;
    } catch (e) {
      controllers.add(CustomTextFieldController());
      controllers.add(CustomTextFieldController());
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: CircleAvatar(
            child: Text("$questionIndex"),
          ),
          title: Text(info.questionText),
          selected: true,
          trailing: Text(info.score?.toString() ?? ""),
        ),
        if (widget.assignment.questions[questionIndex].questionType ==
                "Multi" ||
            widget.assignment.questions[questionIndex].questionType ==
                "Mix") ...[
          for (var c in info.choices)
            CheckboxListTile(
              title: Text(c ?? ""),
              onChanged: (_) {
                if (answering) {
                  setState(() {
                    if (!questions[info].choices.remove(c))
                      questions[info].choices.add(c);
                  });
                }
              },
              value: questions[info].choices.contains(c),
            ),
        ],
        if (widget.assignment.questions[questionIndex].questionType == "Long" ||
            widget.assignment.questions[questionIndex].questionType == "Mix")
          CustomTextField(
            initialValue: info.questionType == "study"
                ? info.answers.first
                : answering
                    ? ""
                    : questions[info].answer,
            controller: controllers[questionIndex * 2],
            title: "Answer",
            enabled: answering,
            isMultiLine: true,
            validate: Validate.withOption(isRequired: true),
            onChange: (text) {
              questions[info].answer = text;
            },
          ),
        if (!answering)
          CustomTextField(
            initialValue: widget.state == AnswerFormState.studentShowScore
                ? questions[info].score?.toString() ??
                    "There are no submitted score yet"
                : null,
            controller: controllers[questionIndex * 2 + 1],
            title: "Score",
            enabled: widget.state == AnswerFormState.teacherGiveScore,
            validate: widget.state == AnswerFormState.studentShowScore
                ? null
                : Validate.withOption(isRequired: true, isNumber: true),
            onChange: (text) {
              questions[info].score = int.tryParse(text);
            },
          ),
        Divider(),
      ],
    );
  }
}

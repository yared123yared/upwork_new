import 'dart:io';

import 'package:complex/common/widgets/custom_switchWithTitle.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
//import "package:asuka/asuka.dart" as asuka;
import 'package:complex/newentityfeatures/Models/assignment_model.dart';

import '../itembloc/bloc.dart';

import 'package:complex/newentityfeatures/Models/offering_model.dart';

enum DynamicSchoolListState {
  Questions,
  StudyMaterials,
}

class CreateAssignmentForm extends StatefulWidget {
  final AssignmentModel assignmentModel;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;
  final int formMode;

  CreateAssignmentForm({
    @required this.assignmentModel,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
    this.formMode = 1,
  });

  @override
  _CreateAssignmentFormState createState() => _CreateAssignmentFormState();
}

class _CreateAssignmentFormState extends State<CreateAssignmentForm> {
  AssignmentModel _assignmentModel;
  // Question _questionModel;
  // StudyMaterial _studyMaterialModel;
  // QuestionStudyMaterialData _questionStudyMateriaModel;

  int timelineIndex = 1;

  // final AssignmentModel widget.assignmentModel;
  Future<List<TeacherOfferingsAssignment>> Function(String grade)
      offeringsFunction;
  List<String> grades;
  ButtonState buttonState;

  // Assignment
  CustomTextFieldController _basicInfo = CustomTextFieldController();
  CustomTextFieldController _assignmentTittle = CustomTextFieldController();
  CustomTextFieldController _grade = CustomTextFieldController();
  CustomTextFieldController _offering = CustomTextFieldController();
  CustomTextFieldController _topic = CustomTextFieldController();
  CustomTextFieldController _type = CustomTextFieldController();
  List<String> offerings;
  bool _update = false;

  // Question

  int questionIndex;
  Question question;
  int index;
  // ButtonState buttonState;
  String assignmentID;

  CustomTextFieldController _questionScore = CustomTextFieldController();
  CustomTextFieldController _questionText = CustomTextFieldController();
  CustomTextFieldController _addImage = CustomTextFieldController();
  CustomTextFieldController _uploadSolution = CustomTextFieldController();
  CustomTextFieldController _answers = CustomTextFieldController();
  CustomTextFieldController _choice1 = CustomTextFieldController();
  CustomTextFieldController _choice2 = CustomTextFieldController();
  CustomTextFieldController _choice3 = CustomTextFieldController();
  CustomTextFieldController _choice4 = CustomTextFieldController();

  bool _addChoices = false;
  int choice_length = 1;
  String current_qyuestionType = 'Long';
  List<String> questionTypes = ['Long', 'Multi'];

  bool _isPublished;

  bool chice1Val = false;
  bool chice2Val = false;
  bool chice3Val = false;
  bool chice4Val = false;

  String choice1Initial;
  String choice2Initial;
  String choice3Initial;
  String choice4Initial;

  // Study material

  StudyMaterial studyMaterial;
  // String assignmentID;

  CustomTextFieldController _name = CustomTextFieldController();
  CustomTextFieldController _description = CustomTextFieldController();
  CustomTextFieldController _studyMaterialType = CustomTextFieldController();
  CustomTextFieldController _enterURL = CustomTextFieldController();
  CustomTextFieldController _document = CustomTextFieldController();

  bool studyMaterialExists = false;
  bool fileExists = false;

  ///the selected file from the phone
  File file;

  bool isFile = false;

  // Question study material list page

  dynamic dynamicListState;
  List<dynamic> listItems;
  // String assignmentID;
  VoidCallback addItemAction;
  String appBarTitle;
  String inAppTitle;
  bool emptyList;

  bool _validate(/* int timelineIndex */) {
    if (timelineIndex == 1) {
      return _basicInfo.isValid &&
          _assignmentTittle.isValid &&
          _grade.isValid &&
          _offering.isValid &&
          _topic.isValid &&
          _type.isValid;
    } else if (timelineIndex == 2) {
      if (!_questionScore.isValid || !_questionText.isValid) return false;

      if (current_qyuestionType == "Long" && !_uploadSolution.isValid)
        return false;

      if (current_qyuestionType == "Multi") {
        if (!(_choice1?.isValid ?? false) ||
            !(_choice2?.isValid ?? false) ||
            !(_choice3?.isValid ?? false) ||
            !(_choice4?.isValid ?? false)) return false;
      }

      return true;
    } else if (timelineIndex == 3) {
      return _name.isValid &&
          _description.isValid &&
          _studyMaterialType.isValid &&
          ((_enterURL?.isValid ?? false) || (_document?.isValid ?? false));
    } else if (timelineIndex == 4) {}
    return false;
  }

  void _initFiledValue() {
    // Assignment
    _isPublished = widget.assignmentModel?.publish ?? false;
    if (widget.assignmentModel != null) {
      _update = true;
      Future.delayed(Duration(milliseconds: 80), () {
        setState(() {
          _basicInfo.text = widget.assignmentModel.basicInfo;
          _assignmentTittle.text = widget.assignmentModel.assignmentTitle;
          _grade.text = widget.assignmentModel.grade;
          _offering.text = widget.assignmentModel.offering;
          _topic.text = widget.assignmentModel.topic;
          _type.text = widget.assignmentModel.type;
        });
      });
    }

    // Question

    // question.choices.length == null
    //     ? choice_length
    //     : choice_length = question.choices.length;
    if (question != null) {
      _addChoices = question.choices != null && question.choices.length != 0;
      current_qyuestionType = question.questionType;

      try {
        choice1Initial = question.choices[0];
      } catch (e) {}
      try {
        choice2Initial = question.choices[1];
      } catch (e) {}
      try {
        choice3Initial = question.choices[2];
      } catch (e) {}
      try {
        choice4Initial = question.choices[3];
      } catch (e) {}

      //initialize the booleans
      chice1Val = question.answers.contains(choice1Initial);
      chice2Val = question.answers.contains(choice2Initial);
      chice3Val = question.answers.contains(choice3Initial);
      chice4Val = question.answers.contains(choice4Initial);

      Future.delayed(Duration(milliseconds: 80), () {
        _questionText.text = question.questionText;
        _addImage.text = question.imageUrl;
        _uploadSolution.text = question.solution;
        _questionScore.text = question.score?.toString();
        _answers.text = question.answers?.join(", ");
        try {
          _choice1.text = question.choices[0];
          _choice2.text = question.choices[1];
          _choice3.text = question.choices[2];
          _choice4.text = question.choices[3];
        } catch (e) {}
      });
    }

    // Study
    if (studyMaterial != null) {
      setState(() {
        studyMaterialExists = studyMaterial.type == "VIDEO";
        fileExists = studyMaterial.type == "PDF";
      });
      // studyMaterialExists = true;
      Future.delayed(Duration(milliseconds: 80), () {
        setState(() {
          _name.text = studyMaterial.name;
          _description.text = studyMaterial.description;
          _studyMaterialType.text = studyMaterial.type;
          _enterURL.text = studyMaterial.studyUrl;
          _document.text = studyMaterial.studyUrl;
        });
      });
    }
  }

  @override
  void initState() {
    _initFiledValue();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateAssignmentBloc()
        ..add(getForNewEntry(
          entityid: widget.entityid,
          entitytype: widget.entitytype,
        )),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Assignment Details'),
          centerTitle: true,
        ),
        body: BlocListener<CreateAssignmentBloc, CreateAssignmentState>(
          listener: (context, state) {
            if (state is IsSaved) {
              EasyLoading.showSuccess("Item is Created/Saved");
              widget.givenreloadaction(true);
              Navigator.of(context).pop(false);
            }
            if (state is QuestionFormSchoolState) {
              setState(() {
                timelineIndex = 2;
                question = state.question;
                questionIndex = state.questionIndex;
                assignmentID = state.assignmentId;
              });
            }
            if (state is StudyMaterialsFormSchoolState) {
              setState(() {
                timelineIndex = 3;
                studyMaterial = state.studyMaterial;
                assignmentID = state.assignmentId;
              });
            }

            if (state is IsReadyForDetailsPage) {
              offeringsFunction = state.offerings;
              grades = state.grades;
              buttonState = ButtonState.idle;
              _assignmentModel = widget.assignmentModel ?? AssignmentModel();
              timelineIndex = widget.formMode;

              _initFiledValue();
            }
          },
          child: BlocBuilder<CreateAssignmentBloc, CreateAssignmentState>(
            builder: (context, state) {
              if (state is IsBusy)
                return Center(
                  child: Container(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator()),
                );
              if (state is HasLogicalFaliur)
                return Center(child: Text(state.error));
              if (state is HasExceptionFaliur)
                return Center(child: Text(state.error));
              if (state is HasExceptionFaliur)
                return Center(child: Text(state.error));

              if (state is IsReadyForDetailsPage) {
                return _blocBuilder(context);
              }

              return Center(child: Text('Empty'));
            },
          ),
        ),
      ),
    );
  }

  _blocBuilder(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: height * 4),
        // Center(
        //     child: HorizontalTimeline(
        //   timeline: timeline,
        // )),
        Expanded(
          child: FlowBuilder<int>(
            state: timelineIndex,
            onGeneratePages: (dynamic data, List<Page> pages) {
              return [
                if (timelineIndex == 1) MaterialPage(child: screen1(context)),
                if (timelineIndex == 2) MaterialPage(child: screen2(context)),
                if (timelineIndex == 3) MaterialPage(child: screen3(context)),
                if (timelineIndex == 4) MaterialPage(child: screen4(context)),
              ];
            },
          ),
        ),
        // CustomActionButton(
        //   state: btnState,
        //   title: timelineIndex == 4
        //       ? _isUpdate
        //           ? "Update"
        //           : "Add"
        //       : 'Next',
        //   gradient: C.bgGradient,
        //   padding: EdgeInsets.symmetric(vertical: height * 1.5),
        //   margin: EdgeInsets.symmetric(
        //     horizontal: width * 25,
        //     vertical: height,
        //   ),
        //   onTap: () async {
        //     if (btnState != ButtonState.idle) return;
        //     if (!_validate()(timelineIndex)) return;

        //     if (timelineIndex < timeline.length) {
        //       BlocProvider.of<ComplexBloc>(context)
        //           .add(StaffFormNextComplexEvent(
        //         timeLineIndex: timelineIndex,
        //         staffModelx: extractStaffModel,
        //       ));
        //     } else {
        //       if (_isUpdate) {
        //         BlocProvider.of<ComplexBloc>(context).add(
        //           UpdateStaffComplexEvent(
        //             staffModel: extractStaffModel,
        //           ),
        //         );
        //       } else {
        //         BlocProvider.of<ComplexBloc>(context).add(
        //           AddStaffComplexEvent(staffModel: extractStaffModel),
        //         );
        //       }
        //     }
        //   },
        // ),
      ],
    );
  }

  Widget screen1(context) {
    return StatefulBuilder(
      builder: (context, setInnerState) => ListView(
        padding: EdgeInsets.symmetric(horizontal: width * 6),
        children: <Widget>[
          CustomTextField(
            title: "Basic Info",
            controller: _basicInfo,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomTextField(
            title: "Assignment Tittle",
            controller: _assignmentTittle,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomTextField(
            controller: _topic,
            title: "Topic",
            validate: Validate.withOption(isRequired: true),
          ),
          CustomDropDownList<String>(
            title: "Grade",
            controller: _grade,
            loadData: () async => grades ?? [],
            displayName: (x) => x,
            validate: Validate.withOption(
              isRequired: true,
            ),
            onSelected: (value, index) => setState(() {}),
          ),
          CustomDropDownList<TeacherOfferingsAssignment>(
            title: "Offering",
            shouldReload: true,
            controller: _offering,
            enabled: true,
            // _grade.text != null && _grade.text.isNotEmpty,
            loadData: () async {
              try {
                return await offeringsFunction(_grade.text);
              } catch (e) {
                print("ee" + e);
              }
              return null;
            },
            displayName: (x) => x.offeringgroupname,
            onSelected: (value, index) {},
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          // CustomDropDownList<String>(
          //   title: "Topic",
          //   controller: _topic,
          //   loadData: () async =>
          //       topic ?? ["Topic 1", "Topic 2", "Topic 3"],
          //   displayName: (x) => x,
          //   validate: Validate.withOption(
          //     isRequired: true,
          //   ),
          // ),

          CustomDropDownList<String>(
            title: "Type",
            controller: _type,
            loadData: () async => ["test", "study"],
            displayName: (x) => x,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),

          CustomSwitchWithTitle(
            title: "Is Published",
            isEnabled: _isPublished,
            // enabled: false,
            onChange: (value) {
              setState(() {
                _isPublished = value;
              });
              setInnerState(() {});
            },
          ),

          if (_update)
            CustomActionButton(
              state: buttonState,
              title: "Update and Publish",
              gradient: C.bgGradient,
              padding: EdgeInsets.symmetric(
                  vertical: height * 1.5, horizontal: width * 10),
              margin: EdgeInsets.symmetric(
                horizontal: width * 5,
                vertical: 10,
              ),
              onTap: () {
                if (_validate()) {
                  _assignmentModel = AssignmentModel(
                    publish: true,
                    basicInfo: _basicInfo.text,
                    assignmentTitle: _assignmentTittle.text,
                    grade: _grade.text,
                    offering: _offering.text,
                    topic: _topic.text,
                    assignmentID: widget.assignmentModel?.assignmentID,
                    type: _type.text,
                    questions: widget.assignmentModel?.questions ?? [],
                    studyMaterials:
                        widget.assignmentModel?.studyMaterials ?? [],
                  );

                  if (_assignmentModel.questions.length == 0) {
                    FocusScope.of(context).unfocus();
                    EasyLoading.showInfo(
                        "The widget.assignmentModel have no questions inside it");

                    return;
                  }
                  if (_isPublished)
                    BlocProvider.of<CreateAssignmentBloc>(context).add(
                      publishItem(
                        item: _assignmentModel,
                        entityid: widget.entityid,
                      ),
                    );
                  // BlocProvider.of<SchoolBloc>(context).add(
                  //   PublishAssignmentSchoolEvent(
                  //     asssignment: _assignmentModel,
                  //   ),
                  // );
                }
              },
            ),
          CustomActionButton(
            state: buttonState,
            title: _update ? "Update" : "Add",
            // title: "Next",
            gradient: C.bgGradient,
            padding: EdgeInsets.symmetric(
                vertical: height * 1.5, horizontal: width * 10),
            margin: EdgeInsets.symmetric(
              horizontal: width * 5,
              vertical: 10,
            ),
            onTap: () async {
              if (buttonState == ButtonState.idle) {
                if (_validate()) {
                  AssignmentModel assignmentModel = AssignmentModel(
                    basicInfo: _basicInfo.text,
                    assignmentTitle: _assignmentTittle.text,
                    grade: _grade.text,
                    offering: _offering.text,
                    topic: _topic.text,
                    assignmentID: widget.assignmentModel?.assignmentID,
                    type: _type.text,
                    questions: widget.assignmentModel?.questions ?? [],
                    studyMaterials:
                        widget.assignmentModel?.studyMaterials ?? [],
                    publish: _isPublished,
                  );
                  if (_update) {
                    BlocProvider.of<CreateAssignmentBloc>(context).add(
                      updateItem(
                        item: _assignmentModel,
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                      ),
                    );
                  }
                  if (_isPublished)
                    BlocProvider.of<CreateAssignmentBloc>(context).add(
                      publishItem(
                        item: _assignmentModel,
                        entityid: widget.entityid,
                      ),
                    );
                  else {
                    print("testing assignment ${assignmentModel.basicInfo}");
                    BlocProvider.of<CreateAssignmentBloc>(context).add(
                      createItem(
                        item: assignmentModel,
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                      ),
                    );
                  }
                  setState(() {
                    _assignmentModel = assignmentModel;
                    //timelineIndex = 2;
                  });

                  //   if (_update) {
                  //     BlocProvider.of<SchoolBloc>(context).add(
                  //       UpdateAssignmentSchoolEvent(
                  //         widget.assignmentModel: _assignmentModel,
                  //       ),
                  //     ); // Update Event
                  //   } else {
                  //     BlocProvider.of<SchoolBloc>(context).add(
                  //         AddAssignmentSchoolEvent(widget.assignmentModel: _assignmentModel));
                  //   }
                  // }
                } else if (buttonState == ButtonState.fail) {
                  // BlocProvider.of<SchoolBloc>(context)
                  //     .add(AllAssignmentListSchoolEvent());
                }
              }
            },
          )
        ],
      ),
    );
  }

  Widget screen2(context) {
    return StatefulBuilder(
      builder: (context, setInnerState) {
        String CurrentQyuestionType = current_qyuestionType;
        return Container(
          margin: EdgeInsets.symmetric(horizontal: width * 6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          const SizedBox(height: 15),
                          CustomTextField(
                            initialValue: question?.score?.toString(),
                            controller: _questionScore,
                            title: "Score",
                            validate: Validate.withOption(
                              isRequired: true,
                              isNumber: true,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Question type: ',
                                  style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: DropdownButton<String>(
                                    underline: Container(),
                                    value: CurrentQyuestionType,
                                    icon: Icon(
                                      Icons.more_horiz,
                                      color: Colors.black,
                                    ),
                                    style: TextStyle(
                                      fontFamily: 'Merriweather',
                                      color: Colors.black,
                                      fontSize: 18.0,
                                    ),
                                    onChanged: (String newValue) {
                                      setState(() {
                                        current_qyuestionType = newValue;
                                        CurrentQyuestionType = newValue;
                                        _choice1.text = '';
                                        _choice2.text = '';
                                        _choice3.text = '';
                                        _choice4.text = '';
                                        _uploadSolution.text = '';
                                      });
                                      setInnerState(() {});
                                    },
                                    items: questionTypes
                                        .map<DropdownMenuItem<String>>(
                                      (dynamic value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      },
                                    ).toList(),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          CustomTextField(
                            title: "Question Text",
                            controller: _questionText,
                            validate: Validate.withOption(isRequired: true),
                          ),
                          // CustomTextField(
                          //   title: "Add Image",
                          //   controller: _addImage,
                          // validate: Validate.withOption(isRequired: true),
                          // ),
                          ///this will shown to the student to answer
                          if (CurrentQyuestionType == 'Long')
                            CustomTextField(
                              title: "Question Answer",
                              controller: _uploadSolution,
                              isMultiLine: true,
                              validate: Validate.withOption(isRequired: true),
                            ),
                          // if (_current_qyuestionType == 'Mix' ||
                          //     _current_qyuestionType == 'Multi')
                          //   CustomSwitch(
                          //     title: "Add Choices",
                          //     isEnabled: _addChoices,
                          //     onChange: (x) {
                          //       setState(() {
                          //         _addChoices = x;
                          //       });
                          //     },
                          //   ),
                          ///just un show the choices when its not required but
                          ///keep it on the try so we can initialize its value
                          if (CurrentQyuestionType == "Multi") ...[
                            CheckboxListTile(
                              value: chice1Val,
                              onChanged: (value) =>
                                  setState(() => chice1Val = value),
                              title: CustomTextField(
                                initialValue: choice1Initial,
                                title: "Choice 1",
                                controller: _choice1,
                                validate: Validate.withOption(
                                  isRequired: true,
                                ),
                              ),
                            ),
                            CheckboxListTile(
                              value: chice2Val,
                              onChanged: (value) =>
                                  setState(() => chice2Val = value),
                              title: CustomTextField(
                                initialValue: choice2Initial,
                                title: "Choice 2",
                                controller: _choice2,
                                validate: Validate.withOption(
                                  isRequired: true,
                                ),
                              ),
                            ),
                            CheckboxListTile(
                              value: chice3Val,
                              onChanged: (value) =>
                                  setState(() => chice3Val = value),
                              title: CustomTextField(
                                initialValue: choice3Initial,
                                title: "Choice 3",
                                controller: _choice3,
                                validate: Validate.withOption(
                                  isRequired: true,
                                ),
                              ),
                            ),
                            CheckboxListTile(
                              value: chice4Val,
                              onChanged: (value) =>
                                  setState(() => chice4Val = value),
                              title: CustomTextField(
                                initialValue: choice4Initial,
                                title: "Choice 4",
                                controller: _choice4,
                                validate: Validate.withOption(
                                  isRequired: true,
                                ),
                              ),
                            ),
                          ]
                          // CustomTextField(
                          //   title: "Answers",
                          //   controller: _answers,
                          //   validate: Validate.withOption(
                          //     isRequired: true,
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              CustomActionButton(
                state: buttonState,
                // title: _addChoices ? "Add" : "Submit",
                // title: index < choice_length ? "Next" : "Submit",
                // title: question != null ? "UPDATE" : "ADD",
                title: "Update",
                gradient: C.bgGradient,
                padding: EdgeInsets.symmetric(vertical: height * 1.5),
                margin: EdgeInsets.symmetric(
                    horizontal: width * 25, vertical: height * 6),
                onTap: () {
                  print('add userSession');
                  if (_validate()) {
                    Question question = Question(
                      solution: _uploadSolution.text,
                      questionText: _questionText.text,
                      imageUrl: _addImage.text,
                      choices: [
                        _choice1?.text,
                        _choice2?.text,
                        _choice3?.text,
                        _choice4?.text
                      ]..removeWhere((element) => element == null),
                      score: int.tryParse(_questionScore.text),
                      answers: CurrentQyuestionType == "Long"
                          ? [_uploadSolution.text]
                          : [
                              if (chice1Val) _choice1.text,
                              if (chice2Val) _choice2.text,
                              if (chice3Val) _choice3.text,
                              if (chice4Val) _choice4.text,
                            ]
                        ..removeWhere(
                          (element) => element == null || element == '',
                        ),
                      questionType: CurrentQyuestionType,
                      difficultyType: 0,
                    );
                    setState(() {
                      _assignmentModel.questions.add(question);
                      // timelineIndex = 3;
                    });
                    BlocProvider.of<CreateAssignmentBloc>(context).add(
                      updateItem(
                        item: _assignmentModel,
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                      ),
                    );

                    // if (question == null) {
                    //   BlocProvider.of<SchoolBloc>(context).add(
                    //     AddQuestionSchoolEvent(
                    //       question: _question,
                    //       assignmentID: assignmentID,
                    //     ),
                    //   );
                    // } else {
                    //   _question.qid = question.qid;
                    //   BlocProvider.of<SchoolBloc>(context).add(
                    //     UpdateQuestionSchoolEvent(
                    //       question: _question,
                    //       assignmentID: assignmentID,
                    //     ),
                    //   );
                    // }
                  } else {
                    EasyLoading.showInfo("Please fill all fields");
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget screen3(context) {
    return StatefulBuilder(
      builder: (context, setInnerState) {
        CustomTextFieldController studyMaterialType = _studyMaterialType;
        return Container(
          margin: EdgeInsets.symmetric(horizontal: width * 6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          CustomTextField(
                            title: "Name",
                            controller: _name,
                            validate: Validate.withOption(isRequired: true),
                          ),
                          CustomTextField(
                            title: "Description",
                            controller: _description,
                            validate: Validate.withOption(isRequired: true),
                          ),
                          if (!studyMaterialExists) ...[
                            CustomDropDownList<String>(
                              title: "Type",
                              controller: studyMaterialType,
                              loadData: () async => [
                                "Youtube",
                                "Article Link",
                                "PDF",
                                "Video",
                                "Other File Types",
                              ],
                              onSelected: (value, index) {
                                setState(() {
                                  _document.text = '';
                                  _enterURL.text = '';
                                });
                                setInnerState(() {});
                              },
                              displayName: (x) => x,
                              validate: Validate.withOption(
                                isRequired: true,
                              ),
                            ),
                          ],

                          ///u can add file or a link
                          if (!studyMaterialExists &&
                              (studyMaterialType.text == 'Youtube' ||
                                  studyMaterialType.text == 'Article Link'))
                            CustomTextField(
                              initialValue: studyMaterial?.studyUrl,
                              title: "Enter URL here",
                              controller: _enterURL,
                              icon: Icons.link,
                              validate: Validate.withOption(
                                isRequired: true,
                              ),
                              onChange: (text) {
                                //you can have either link or document in one material study item
                                setState(() {
                                  file = null;
                                });
                              },
                            ),

                          if (studyMaterialType.text != 'Youtube' &&
                              studyMaterialType.text != 'Article Link')
                            GestureDetector(
                              onTap: () async {
                                FilePickerResult files;

                                //if the permission is not granted the user can pick a file
                                try {
                                  files = await FilePicker.platform.pickFiles(
                                    allowMultiple: false,
                                    allowCompression: true,
                                    type: studyMaterialType.text == "Video"
                                        ? FileType.video
                                        : studyMaterialType.text == "PDF"
                                            ? FileType.any
                                            : FileType.any,
                                  );
                                } catch (e) {
                                  Get.showSnackbar(GetBar(
                                    message:
                                        'Storage permission is refused, you can reaccept from the setting',
                                  ));
                                }
                                setState(() {
                                  if (files != null && files.count != 0)
                                    this.file = File(files.paths.first);
                                  _document.text =
                                      file?.path?.split("/")?.last ?? "";
                                });
                              },
                              child: CustomTextField(
                                initialValue: studyMaterial?.studyUrl,
                                enabled: false,
                                title: "Attach Document",
                                icon: Icons.attach_file,
                                controller: _document,
                                validate: Validate.withOption(
                                  isRequired: true,
                                  maxLength: 30000,
                                ),
                              ),
                            ),

                          if (studyMaterialExists) ...[
                            // Padding(
                            // padding: const EdgeInsets.only(
                            //   top: 8.0,
                            //   bottom: 8.0,
                            // ),
                            // child: Container(
                            //   height: 60,
                            //   width: MediaQuery.of(context).size.width - 20,
                            //   decoration: BoxDecoration(
                            //     gradient: C.bgGradient,
                            //     borderRadius:
                            //         BorderRadius.all(Radius.circular(8)),
                            //   ),
                            //   child: Row(
                            //     mainAxisAlignment:
                            //         MainAxisAlignment.spaceEvenly,
                            //     children: [
                            //       Padding(
                            //         padding: const EdgeInsets.all(8.0),
                            //         child: Container(
                            //           child: Text(
                            //             "Play Video Tutorial",
                            //             // 'Enter URL here',
                            //             style: TextStyle(
                            //               color: Colors.white,
                            //             ),
                            //             overflow: TextOverflow.ellipsis,
                            //           ),
                            //         ),
                            //       ),
                            //       IconButton(
                            //           icon: Icon(Icons.play_arrow,
                            //               color: Colors.white),
                            //           onPressed: () {
                            //             BlocProvider.of<SchoolBloc>(context)
                            //                 .add(
                            //               VideoPageEvent(
                            //                 videoURL:
                            //                     studyMaterial.studyUrl,
                            //               ),
                            //             );
                            //           }),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                          ],
                          if (fileExists) ...[
                            // Padding(
                            //   padding: const EdgeInsets.only(
                            //     top: 8.0,
                            //     bottom: 8.0,
                            //   ),
                            //   child: Container(
                            //     height: 60,
                            //     width: MediaQuery.of(context).size.width - 20,
                            //     decoration: BoxDecoration(
                            //       gradient: C.bgGradient,
                            //       borderRadius:
                            //           BorderRadius.all(Radius.circular(8)),
                            //     ),
                            //     child: Row(
                            //       mainAxisAlignment:
                            //           MainAxisAlignment.spaceEvenly,
                            //       children: [
                            //         Padding(
                            //           padding: const EdgeInsets.all(8.0),
                            //           child: Container(
                            //             child: Text(
                            //               "Open Articles",
                            //               // 'Enter URL here',
                            //               style: TextStyle(
                            //                 color: Colors.white,
                            //               ),
                            //               overflow: TextOverflow.ellipsis,
                            //             ),
                            //           ),
                            //         ),
                            //         IconButton(
                            //             icon: Icon(
                            //               Icons.file_present,
                            //               color: Colors.white,
                            //             ),
                            //             onPressed: () {
                            //               // BlocProvider.of<SchoolBloc>(context)
                            //               //     .add(
                            //               //   PDFViewPageEvent(
                            //               //     pdfFileURL:
                            //               //         studyMaterial.docLink,
                            //               //   ),
                            //               // );
                            //             }),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                          ],
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              CustomActionButton(
                state: ButtonState.idle,
                title: "Next",
                gradient: C.bgGradient,
                padding: EdgeInsets.symmetric(vertical: height * 1.5),
                margin: EdgeInsets.symmetric(
                  horizontal: width * 25,
                  vertical: height * 6,
                ),
                onTap: () async {
                  print('add userSession');
                  if (_validate()) {
                    StudyMaterial studyMaterialModel = StudyMaterial(
                      name: _name.text,
                      description: _description.text,
                      type: _studyMaterialType.text,
                      studyUrl: _enterURL?.text ?? _document?.text,
                    );

                    setState(() {
                      _assignmentModel?.studyMaterials?.add(studyMaterialModel);
                      // timelineIndex = 4;
                    });
                    // if (studyMaterial.type == )
                    BlocProvider.of<CreateAssignmentBloc>(context).add(
                      AddStudyMaterialAndUpdateItem(
                        item: _assignmentModel,
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                        studyMaterial: studyMaterialModel,
                        file: file,
                      ),
                    );

                    // BlocProvider.of<SchoolBloc>(context).add(
                    //   AddStudyMaterialSchoolEvent(
                    //     studyMaterial: _studyMaterialModel,
                    //     assignmentID: assignmentID,
                    //     file: file,
                    //   ),
                    // );
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget screen4(context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 6),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 4),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: listItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return CommonListTile(
                    listState: toQuestionStudyMaterialListState(
                      listItems,
                      context,
                      emptyList,
                      assignmentID,
                      schoolListState: dynamicListState,
                    )[index],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomActionButton(
              // state: btnState,
              title: widget.assignmentModel != null ? "Update" : "Add",
              gradient: C.bgGradient,
              padding: EdgeInsets.symmetric(vertical: height * 1.5),
              margin: EdgeInsets.symmetric(
                horizontal: width * 25,
                vertical: height,
              ),
              onTap: () async {
                // if (btnState != ButtonState.idle) return;
                // if (!_validate()(timelineIndex)) return;
                // if (widget.assignmentModel != null) {
                //   BlocProvider.of<itembloc.CreateAssignmentBloc>(context).add(
                //     itembloc.updateItem(
                //       item: _assignmentModel,
                //       entityid: widget.entityid,
                //       entitytype: widget.entitytype,
                //     ),
                //   );
                // } else {
                //   BlocProvider.of<itembloc.CreateAssignmentBloc>(context).add(
                //     itembloc.createItem(
                //       item: _assignmentModel,
                //       entityid: widget.entityid,
                //       entitytype: widget.entitytype,
                //     ),
                //   );
                // }

                // if (timelineIndex < timeline.length) {
                //   BlocProvider.of<SchoolBloc>(context).add(
                //     StaffFormNextComplexEvent(
                //       timeLineIndex: timelineIndex,
                //       staffModelx: extractStaffModel,
                //     ),
                //   );
                // } else {
                //   if (_isUpdate) {
                //     BlocProvider.of<SchoolBloc>(context).add(
                //       itembloc.createItem(
                //         entityid: widget.entityid,
                //         entitytype: widget.entitytype,
                //         item: _assignmentModel,
                //       ),
                //       UpdateStaffComplexEvent(
                //         staffModel: extractStaffModel,
                //       ),
                //     );
                //   } else {
                //     BlocProvider.of<SchoolBloc>(context).add(
                //       AddStaffComplexEvent(staffModel: extractStaffModel),
                //     );
                //   }
                // }
              },
            ),
          ],
        ),
      ),
    );
  }

  List<ListStateClass> toQuestionStudyMaterialListState(
    List<dynamic> listItems,
    BuildContext context,
    bool emptyList,
    String assignmentID, {
    @required DynamicSchoolListState schoolListState,
  }) {
    List<ListStateClass> _dynamicList = [];
    if (schoolListState != null) {
      switch (schoolListState) {
        case DynamicSchoolListState.Questions:
          if (listItems is List<Question>)
            listItems.asMap().forEach((index, question) {
              _dynamicList.add(
                ListStateClass(
                  title: question.questionText,
                  subtitle: question.questionType,
                  tapAction: () {
                    BlocProvider.of<CreateAssignmentBloc>(context).add(
                      QuestionFormSchoolEvent(
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                        question: question,
                        index: index,
                        emptyList: emptyList,
                        assignmentID: assignmentID,
                      ),
                    );
                  },
                  // deleteAction: () {
                  //   BlocProvider.of<CreateAssignmentBloc>(context).add(
                  //     RemoveQuestionSchoolEvent(
                  //       question: question,
                  //       assignmentID: assignmentID,
                  //     ),
                  //   );
                  // },
                ),
              );
            });
          break;
        case DynamicSchoolListState.StudyMaterials:
          if (listItems is List<StudyMaterial>)
            listItems.asMap().forEach((index, studyMaterial) {
              _dynamicList.add(ListStateClass(
                title: "Study Material ${index++}",
                subtitle: studyMaterial.type,
                tapAction: () {
                  BlocProvider.of<CreateAssignmentBloc>(context).add(
                    StudyMaterialsFormSchoolEvent(
                      entityid: widget.entityid,
                      entitytype: widget.entitytype,
                      index: index,
                      studyMaterial: studyMaterial,
                      assignmentID: assignmentID,
                      emptyList: emptyList,
                    ),
                  );
                },
              ));
            });
          break;
      }
      return _dynamicList;
    }
  }
}

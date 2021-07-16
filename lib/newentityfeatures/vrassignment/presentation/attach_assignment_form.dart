import 'dart:async';

import 'package:complex/common/widgets/custom_app_bar.dart';
import 'package:complex/common/widgets/custom_switchWithTitle.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
//import "package:asuka/asuka.dart" as asuka;
import 'package:complex/newentityfeatures/Models/assignment_model.dart';
import 'package:complex/newentityfeatures/vrassignment/itembloc/bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../itembloc/bloc.dart' as itembloc;

import 'package:complex/newentityfeatures/Models/vrassignment_model.dart'
    as cmodel;
import 'package:complex/newentityfeatures/Models/offering_model.dart';

class AttachedAssignmentForm extends StatefulWidget {
  final String entityid;

  final String entitytype;

  final cmodel.VrAssignmentModel vrAssignmentModel;
  final ReloadAction givenreloadaction;

  AttachedAssignmentForm(
      {this.entitytype,
      this.entityid,
      @required this.vrAssignmentModel,
      @required this.givenreloadaction});

  @override
  _AttachedAssignmentFormState createState() => _AttachedAssignmentFormState();
}

class _AttachedAssignmentFormState extends State<AttachedAssignmentForm> {
  //VrAssignmentModelBloc mbloc;

  CustomTextFieldController _session = CustomTextFieldController();
  CustomTextFieldController _grade = CustomTextFieldController();
  CustomTextFieldController _virtualRoom = CustomTextFieldController();

  //CustomTextFieldController _vrId = CustomTextFieldController();
  CustomTextFieldController _offering = CustomTextFieldController();
  CustomTextFieldController _assignment = CustomTextFieldController();
  CustomTextFieldController _examTermInfo = CustomTextFieldController();
  CustomTextFieldController _timeAllowed = CustomTextFieldController();

  // CustomTextFieldController _totalQuestion = CustomTextFieldController();
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now();
  CustomTextFieldController _totalScore = CustomTextFieldController();

  CustomTextFieldController _startDateController = CustomTextFieldController();
  CustomTextFieldController _endDateController = CustomTextFieldController();

  bool update = false;
  bool lockedforwrite = false;

  AssignmentModel _selectedAssignment;
  TeacherOfferingsAssignment _selectedTeacherOfferingsAssignment;
  List<String> sessiontermlist;
  List<String> gradeslist;
  Future<List<AssignmentModel>> Function(String, String)
      assignmentModellistbyofferinggroupfunc;
  Future<List<TeacherOfferingsAssignment>> Function(String, String)
      teacherofferingassignmentlistbyGrade;
  List<ExamTermInfo> examtermlist;

  Future<List<AssignmentModel>> assignmentModellist;
  Future<List<TeacherOfferingsAssignment>> teacherofferingassignmentlist;

  bool _validate() {
    return _grade.isValid &&
        _virtualRoom.isValid &&
        _session.isValid &&
        // _vrId.isValid &&
        _offering.isValid &&
        _assignment.isValid &&
        _examTermInfo.isValid &&
        _timeAllowed.isValid &&
        // _totalQuestion.isValid &&
        _totalScore.isValid;
  }

  void _initFiledValue() {
    if (widget.vrAssignmentModel != null) {
      update = true;
      lockedforwrite = widget.vrAssignmentModel.lockedforwrite ?? false;
      _startDate = widget.vrAssignmentModel.startDate;
      _endDate = widget.vrAssignmentModel.endDate;
      Future.delayed(Duration(milliseconds: 80), () {
        setState(() {
          _timeAllowed.text = '${widget.vrAssignmentModel.timeAllowed ?? 0}';
          // _totalQuestion.text = '${widget.vrAssignmentModel.totalQuestion ?? 0}';
          _totalScore.text = "${widget.vrAssignmentModel.totalScore ?? 0}";
          _session.text = widget.vrAssignmentModel.session;
          _grade.text = widget.vrAssignmentModel.grade;

          _virtualRoom.text = widget.vrAssignmentModel.virtualRoom;
          _offering.text = widget.vrAssignmentModel.offering;
          _examTermInfo.text = widget.vrAssignmentModel.examTermInfo;
          _assignment.text = widget.vrAssignmentModel.assignmentId;
        });
      });

      /*
      {
        setState(() {
          _timeAllowed.text = '${widget.vrAssignmentModel.timeAllowed ?? 0}';
          // _totalQuestion.text = '${widget.vrAssignmentModel.totalQuestion ?? 0}';
          _totalScore.text = "${widget.vrAssignmentModel.totalScore ?? 0}";
          _session.text = widget.vrAssignmentModel.session;
          _grade.text = widget.vrAssignmentModel.grade;
          _virtualRoom.text = widget.vrAssignmentModel.virtualRoom;
           _offering.text = widget.vrAssignmentModel.offering;
          _examTermInfo.text = widget.vrAssignmentModel.examTermInfo;
          _assignment.text = widget.vrAssignmentModel.assignmentId;
        });
      };
    }
    */

    }
  }

  @override
  void initState() {
    super.initState();
    print('init state');
  }

  @override
  Widget build(BuildContext context) {
    // _grade.text = widget.vrAssignmentModel.grade;
    print(_grade.text);
    return BlocProvider(
      create: (context) => VrAssignmentModelBloc()
        ..add(getForNewEntry(
            entityid: widget.entityid, entitytype: widget.entitytype)),
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Attach Assignment',
        ),
        body: BlocListener<VrAssignmentModelBloc, VrAssignmentModelState>(
            listener: (context, state) {
          if (state is itembloc.IsSaved) {
            EasyLoading.showSuccess("Item is Created/Saved");
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            setState(() {
              sessiontermlist = state.sessiontermlist;
              gradeslist = state.gradelist;
              assignmentModellistbyofferinggroupfunc =
                  state.assignmentModellistbyofferinggroupfunc;
              teacherofferingassignmentlistbyGrade =
                  state.teacherofferingassignmentlistbyGrade;
              examtermlist = state.examtermlist;
              _initFiledValue();
            });
          }
        }, child: BlocBuilder<VrAssignmentModelBloc, VrAssignmentModelState>(
                builder: (context, state) {
          if (state is itembloc.IsBusy)
            return Center(
              child: Container(
                  width: 20, height: 20, child: CircularProgressIndicator()),
            );
          if (state is itembloc.HasLogicalFaliur)
            return Center(child: Text(state.error));
          if (state is itembloc.HasExceptionFaliur)
            return Center(child: Text(state.error));
          if (state is itembloc.HasExceptionFaliur)
            return Center(child: Text(state.error));

          if (state is itembloc.IsReadyForDetailsPage) {
            return _blocBuilder(context);
          }

          return Center(child: Text('Empty'));
        })),
      ),
    );
  }

  _blocBuilder(context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: width * 6),
      children: <Widget>[
        CustomDropDownList<String>(
          title: "Session",
          controller: _session,
          //initialValue: widget.vrAssignmentModel.session,
          enabled: !update,
          loadData: () async => sessiontermlist,
          displayName: (x) => x,
          validate: Validate.withOption(isRequired: true),
        ),
        CustomDropDownList<String>(
          title: "Grade",
          enabled: !update,
          controller: _grade,
          loadData: () async => gradeslist,
          //initialValue: widget.vrAssignmentModel.grade,
          displayName: (x) => x,
          validate: Validate.withOption(isRequired: true),
          onSelected: (value, index) => setState(() {
            _grade.text = value;
            _assignment.text = '';
            print("grade $value");
            teacherofferingassignmentlist =
                teacherofferingassignmentlistbyGrade(value, widget.entityid);
            print("grade $teacherofferingassignmentlist");
          }),
        ),
        CustomDropDownList<TeacherOfferingsAssignment>(
            enabled: !update && _grade.text != null && _grade.text.isNotEmpty,
            title: "Offering Group Name",
            controller: _offering,
            shouldReload: true,
            //initialValue: widget.vrAssignmentModel.offering,
            loadData: () async => teacherofferingassignmentlist == null
                ? []
                : teacherofferingassignmentlist,
            displayName: (x) => x.offeringgroupname,
            validate: Validate.withOption(
              isRequired: true,
            ),
            onSelected: (value, index) {
              setState(() {
                _selectedTeacherOfferingsAssignment = value;
                assignmentModellist = assignmentModellistbyofferinggroupfunc(
                    value.offeringgroupname, widget.entityid);
              });
            }),

        CustomDropDownList<AssignmentModel>(
          title: "Assignment",
          controller: _assignment,
          enabled: !update,
          shouldReload: true,
          loadData: () async =>
              assignmentModellist == null ? [] : assignmentModellist,
          displayName: (x) => x.assignmentTitle,
          onSelected: (value, index) {
            setState(() {
              _selectedAssignment = value;
              _totalScore.text = value.questions
                  .fold(0.0, (x, elem) => x + elem.score)
                  .toString();
            });
          },
          validate: Validate.withOption(
            isRequired: true,
          ),
        ),

        // CustomDropDownList<VirtualRoomModelNewFormat>(
        //   title: "Virtual Room",
        //   enabled: _grade.text?.isNotEmpty == true && !update,
        //   shouldReload: true,
        //   controller: _virtualRoom,
        //   loadData: () async => widget.virtualRooms(_grade.text),
        //   displayName: (x) => x.virtualRoomName,
        //   validate: Validate.withOption(isRequired: true),
        //   // onSelected: (value, index) => ,
        // ),
        CustomDropDownList<String>(
          title: "Virtual Room",
          enabled: _offering.text?.isNotEmpty == true && !update,
          shouldReload: true,
          controller: _virtualRoom,
          //initialValue: widget.vrAssignmentModel.virtualRoom,
          loadData: () async => _selectedTeacherOfferingsAssignment == null
              ? []
              : _selectedTeacherOfferingsAssignment.vrlist,
          displayName: (x) => x,
          validate: Validate.withOption(isRequired: true),
          //  onSelected: (value, index) => ,
        ),
        // CustomTextField(
        //   controller: _session,
        //   title: "Session",
        //   enabled: false,
        //   validate: Validate.withOption(isRequired: false),
        // ),

        CustomTextField(
          title: "Attached Assignments",
          controller: _examTermInfo,
          //initialValue: widget.vrAssignmentModel.examTermInfo,
          enabled: !update,
          validate: Validate.withOption(isRequired: true),
        ),
        // CustomDropDownList<num>(
        //   title: "Time Allowed",
        //   controller: _timeAllowed,
        //   loadData: () async => [30, 60, 90, 120],
        //   displayName: (x) => x.toString(),
        //   validate: Validate.withOption(
        //     isRequired: true,
        //   ),
        // ),
        // CustomDropDownList<num>(
        //   title: "Total Question",
        //   controller: _totalQuestion,
        //   loadData: () async => [1, 2, 3, 4],
        //   displayName: (x) => x.toString(),
        //   validate: Validate.withOption(
        //     isRequired: true,
        //   ),
        // ),
        // CustomDropDownList<num>(
        //   title: "Total Score",
        //   controller: _totalScore,
        //   loadData: () async => [10, 15, 20, 25],
        //   displayName: (x) => x.toString(),
        //   validate: Validate.withOption(
        //     isRequired: true,
        //   ),
        // ),
        CustomTextField(
          title: "Time Allowed m",
          controller: _timeAllowed,
          enabled: !update,
          validate: Validate.withOption(
            isRequired: true,
            isNumber: true,
          ),
        ),
        // CustomTextField(
        //   title: "Total Questions",
        //   controller: _totalQuestion,
        //   enabled: !update,
        //   validate: Validate.withOption(
        //     isRequired: true,
        //     isNumber: true,
        //   ),
        // ),
        CustomTextField(
          enabled: false,
          title: "Total Score",
          controller: _totalScore,
          validate: Validate.withOption(
            isRequired: true,
            isNumber: true,
          ),
        ),
        CustomDateTimePicker(
          controller: _startDateController,
          dateTime: _startDate,
          title: 'Start Date',
          enabled: !update,
          mode: DateTimeMode.DATE,
          onChange: (x) => _startDate = x,
        ),
        CustomDateTimePicker(
          controller: _endDateController,
          dateTime: _endDate,
          title: 'End Date',
          enabled: !update,
          mode: DateTimeMode.DATE,
          onChange: (x) => _endDate = x,
        ),
        CustomSwitchWithTitle(
          title: 'Locked for Write',
          isEnabled: lockedforwrite,
          onChange: (x) => setState(() => lockedforwrite = x),
        ),
        Center(
          child: CustomActionButton(
            state: ButtonState.idle,
            title: update ? "Update" : "Add",
            color: Theme.of(context).primaryColor,
            onTap: () {
              print("id ashe na ${widget.vrAssignmentModel?.vrid}");
              if (_validate()) {
                String offering = _selectedAssignment?.offering ??
                    widget.vrAssignmentModel?.offering;

                cmodel.VrAssignmentModel _vrAssignmentModel =
                    cmodel.VrAssignmentModel(
                  vrid: _virtualRoom.text,
                  assignmentId: widget.vrAssignmentModel?.assignmentId ??
                      _selectedAssignment?.assignmentID,
                  endDate: _endDate,
                  startDate: _startDate,
                  hasScore: true,
                  session: _session.text,
                  grade: _grade.text,
                  virtualRoom: _virtualRoom.text,
                  examTermInfo: _examTermInfo.text,
                  timeAllowed: int.tryParse(_timeAllowed.text),
                  lockedforwrite: lockedforwrite,
                  totalScore: _selectedAssignment?.questions?.fold(
                          0.0,
                          (previousValue, element) =>
                              previousValue + element.score) ??
                      widget.vrAssignmentModel?.totalScore,
                  type: _selectedAssignment?.type ??
                      widget.vrAssignmentModel?.type,
                  offering: _selectedAssignment?.offering ??
                      widget.vrAssignmentModel?.offering,
                  topic: _selectedAssignment?.topic ??
                      widget.vrAssignmentModel?.topic,
                  totalQuestion: _selectedAssignment?.totalQuestion ??
                      widget.vrAssignmentModel?.totalQuestion,
                  showSolution: (_selectedAssignment?.type == '') ??
                      widget.vrAssignmentModel?.type,
                );
                if (update) {
                  context.read<VrAssignmentModelBloc>().add(
                        updateItem(
                          entityid: widget.entityid,
                          entitytype: widget.entitytype,
                          item: _vrAssignmentModel,
                        ),
                      );
                } else {
                  BlocProvider.of<VrAssignmentModelBloc>(context).add(
                    createItem(
                      entityid: widget.entityid,
                      entitytype: widget.entitytype,
                      item: _vrAssignmentModel,
                    ),
                  );
                }
              }
            },
          ),
        ),
      ],
    );
  }
}

import 'package:complex/common/widgets/custom_app_bar.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:complex/newentityfeatures/Models/school_owner_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
//import "package:asuka/asuka.dart" as asuka;

import '../itembloc/bloc.dart' as itembloc;
import 'package:complex/newentityfeatures/Models/offering_model.dart';

class OfferingWeeklyScheduleForm extends StatefulWidget {
  final OfferingWeeklySchedule offeringsScheduleModel;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;

  OfferingWeeklyScheduleForm({
    @required this.offeringsScheduleModel,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
  });

  @override
  _OfferingWeeklyScheduleFormState createState() =>
      _OfferingWeeklyScheduleFormState();
}

class _OfferingWeeklyScheduleFormState
    extends State<OfferingWeeklyScheduleForm> {
  CustomTextFieldController _grade = CustomTextFieldController();
  CustomTextFieldController _offeringGroupID = CustomTextFieldController();
  CustomTextFieldController _periodType = CustomTextFieldController();
  CustomTextFieldController _roomName = CustomTextFieldController();
  CustomTextFieldController _monday = CustomTextFieldController();
  CustomTextFieldController _tuesday = CustomTextFieldController();
  CustomTextFieldController _wednesday = CustomTextFieldController();
  CustomTextFieldController _thursday = CustomTextFieldController();
  CustomTextFieldController _friday = CustomTextFieldController();
  CustomTextFieldController _saturday = CustomTextFieldController();
  CustomTextFieldController _sunday = CustomTextFieldController();
  CustomTextFieldController _primaryOwnerController =
      CustomTextFieldController();

  ButtonState buttonstate;

  ///this function takes the grade and return the groups of the grade
  Future<List<OfferingModelGroup>> Function(String) getOfferingGroupModel;
  OfferingWeeklySchedule offeringsScheduleModel;
  List<String> grades;
  List<String> rooms;
  List<SchoolOwner> schoolOwner;
  List<ClassPeriodInfo> periods;

  ///this function used to auto fill the primary and secondary fields
  Future<List<TeacherOfferingsAssignment>> Function(String)
      getAssignmentsWithGrade;

  SchoolOwner _primaryOwner;
  List<SchoolOwner> _secondaryOwners = [];

  // List<String> offeringModelGroupNames = [];

  ClassPeriodInfo _selectedPeriod;
  List<TeacherOfferingsAssignment> _selectedAssignments;

  bool edit = false;

  bool _validate() {
    return Validate.validateAll([
      _grade,
      _roomName,
      _offeringGroupID,
      _periodType,
    ]);
  }

  @override
  void initState() {
    if (widget.offeringsScheduleModel != null) {
      edit = true;
      try {
        _selectedPeriod = periods.firstWhere(
          (element) => element.type == widget.offeringsScheduleModel.priodtype,
        );
      } catch (e) {}

      Future.delayed(Duration(milliseconds: 80), () {
        setState(() {
          _grade.text = widget.offeringsScheduleModel.grade;
          _offeringGroupID.text = widget.offeringsScheduleModel.offeringgroupid;
          // _periodType.text = widget.offeringsScheduleModel.priodtype;
          _roomName.text = widget.offeringsScheduleModel.roomname;
          // _monday.text = widget.offeringsScheduleModel.mon?.toString() ?? "";
          // _tuesday.text = widget.offeringsScheduleModel?.tue.toString() ?? "";
          // _wednesday.text = widget.offeringsScheduleModel.wed?.toString() ?? "";
          // _thursday.text = widget.offeringsScheduleModel.thu?.toString() ?? "";
          // _friday.text = widget.offeringsScheduleModel.fri?.toString() ?? "";
          // _saturday.text = widget.offeringsScheduleModel.sat?.toString() ?? "";
          // _sunday.text = widget.offeringsScheduleModel.sun?.toString() ?? "";
          _primaryOwner = widget.offeringsScheduleModel.primaryOwner;
          _primaryOwnerController.text =
              widget.offeringsScheduleModel?.primaryOwner?.display ?? "";
        });
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => itembloc.OfferingWeeklyScheduleBloc()
        ..add(
          itembloc.getForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
          ),
        ),
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Offering Schedule',
        ),
        body: BlocListener<itembloc.OfferingWeeklyScheduleBloc,
            itembloc.OfferingWeeklyScheduleState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            EasyLoading.showSuccess("Item is Created/Saved");
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            setState(() {
              getOfferingGroupModel = state.getOfferingGroupModel;
              offeringsScheduleModel = state.offeringsScheduleModel;
              grades = state.grades;
              rooms = state.rooms;
              schoolOwner = state.schoolOwner;
              periods = state.periods;
              getAssignmentsWithGrade = state.getAssignmentsWithGrade;
            });

            // sessiontermlist = state.sessiontermlist;
            // gradeslist = state.gradelist;
            // assignmentModellistbyofferinggroupfunc =
            //     state.assignmentModellistbyofferinggroupfunc;
            // teacherofferingassignmentlistbyGrade =
            //     state.teacherofferingassignmentlistbyGrade;
            // examtermlist = state.examtermlist;
            // _initFiledValue();
          }
        }, child: BlocBuilder<itembloc.OfferingWeeklyScheduleBloc,
            itembloc.OfferingWeeklyScheduleState>(builder: (context, state) {
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    CustomDropDownList<String>(
                      validate: Validate.withOption(isRequired: true),
                      enabled: !edit,
                      loadData: () async => grades,
                      displayName: (x) => x,
                      controller: _grade,
                      title: "Grade",
                      onSelected: (value, index) async {
                        _selectedAssignments =
                            await getAssignmentsWithGrade(value);
                        setState(() {
                          _roomName.text = "";
                          _offeringGroupID.text = '';
                        });
                      },
                    ),
                    CustomDropDownList<String>(
                      validate: Validate.withOption(isRequired: true),
                      initialValue: widget.offeringsScheduleModel?.roomname,
                      loadData: () async => rooms,
                      displayName: (x) => x,
                      // shouldReload: true,
                      controller: _roomName,
                      title: "Room Name",
                    ),
                    const SizedBox(height: 10),
                    CustomDropDownList<String>(
                      validate: Validate.withOption(isRequired: true),
                      enabled: _grade?.text != null &&
                          _grade.text.isNotEmpty &&
                          !edit,
                      loadData: () async =>
                          getOfferingGroupModel(_grade.text).then(
                        (value) =>
                            value.map((e) => e.offeringgroupid).toList() ?? [],
                      ),
                      shouldReload: true,
                      displayName: (x) => x,
                      controller: _offeringGroupID,
                      title: "Offering Group ID",
                      onSelected: (value, index) {
                        try {
                          var assignment = _selectedAssignments.firstWhere(
                            (element) => element.offeringgroupname == value,
                          );
                          setState(() {
                            _primaryOwner = assignment.primaryOwner;
                            _primaryOwnerController.text =
                                _primaryOwner.display;
                            _secondaryOwners = assignment.secondaryOwner;
                          });
                        } catch (e) {
                          print("has exception in getting assignments");
                          print("------------------------------------");
                          print(e);
                        }
                      },
                    ),
                    CustomDropDownList<SchoolOwner>(
                      enabled: true,
                      title: "Primary Owner",
                      controller: _primaryOwnerController,
                      loadData: () async => schoolOwner ?? [],
                      displayName: (x) => x.display,
                      onSelected: (owner, i) => _primaryOwner = owner,
                    ),
                    // CustomMultiSelect(
                    //   title: "Second owners",
                    //   items: (widget.schoolOwner ?? <SchoolOwner>[])
                    //       .map((e) => MultiSelectItem(
                    //             value: e,
                    //             label: e.display,
                    //           ))
                    //       .toList(),
                    //   initialValue: _secondaryOwners,
                    //   chipDisplay: MultiSelectChipDisplay(
                    //     items: _secondaryOwners
                    //         .map((e) => MultiSelectItem(
                    //               value: e,
                    //               label: e.display,
                    //             ))
                    //         .toList(),
                    //   ),
                    // ),
                    CustomDropDownList<ClassPeriodInfo>(
                      validate: Validate.withOption(isRequired: true),
                      // enabled: !edit,
                      initialValue: widget.offeringsScheduleModel?.priodtype,
                      loadData: () async => periods,
                      displayName: (x) => x.type,
                      controller: _periodType,
                      title: "Period Type",
                      onSelected: (val, ind) {
                        setState(() {
                          _monday.text = '';
                          _tuesday.text = '';
                          _wednesday.text = '';
                          _thursday.text = '';
                          _friday.text = '';
                          _saturday.text = '';
                          _sunday.text = '';
                          _selectedPeriod = val;
                        });
                      },
                    ),

                    ///first select the period then chose the days and schedule

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Define Class Period',
                        style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomDropDownList<String>(
                      loadData: () async =>
                          (_selectedPeriod?.schedule ?? <Schedule>[])
                              .map((e) => e.classPeriodName)
                              .toList(),
                      displayName: (x) => x,
                      controller: _monday,
                      initialValue:
                          widget.offeringsScheduleModel?.mon?.toString(),
                      title: "Monday",
                      enabled: _selectedPeriod != null,
                    ),
                    CustomDropDownList<String>(
                      loadData: () async =>
                          (_selectedPeriod?.schedule ?? <Schedule>[])
                              .map((e) => e.classPeriodName)
                              .toList(),
                      displayName: (x) => x,
                      controller: _tuesday,
                      title: "Tuesday",
                      initialValue:
                          widget.offeringsScheduleModel?.tue?.toString(),
                      enabled: _selectedPeriod != null,
                    ),
                    CustomDropDownList<String>(
                      loadData: () async =>
                          (_selectedPeriod?.schedule ?? <Schedule>[])
                              .map((e) => e.classPeriodName)
                              .toList(),
                      displayName: (x) => x,
                      controller: _wednesday,
                      enabled: _selectedPeriod != null,
                      initialValue:
                          widget.offeringsScheduleModel?.wed?.toString(),
                      title: "Wednesday",
                    ),
                    CustomDropDownList<String>(
                      loadData: () async =>
                          (_selectedPeriod?.schedule ?? <Schedule>[])
                              .map((e) => e.classPeriodName)
                              .toList(),
                      displayName: (x) => x,
                      controller: _thursday,
                      enabled: _selectedPeriod != null,
                      initialValue:
                          widget.offeringsScheduleModel?.thu?.toString(),
                      title: "Thursday",
                    ),
                    CustomDropDownList<String>(
                      loadData: () async =>
                          (_selectedPeriod?.schedule ?? <Schedule>[])
                              .map((e) => e.classPeriodName)
                              .toList(),
                      displayName: (x) => x,
                      controller: _friday,
                      enabled: _selectedPeriod != null,
                      initialValue:
                          widget.offeringsScheduleModel?.fri?.toString(),
                      title: "Friday",
                    ),
                    CustomDropDownList<String>(
                      loadData: () async =>
                          (_selectedPeriod?.schedule ?? <Schedule>[])
                              .map((e) => e.classPeriodName)
                              .toList(),
                      displayName: (x) => x,
                      controller: _saturday,
                      enabled: _selectedPeriod != null,
                      initialValue:
                          widget.offeringsScheduleModel?.sat.toString(),
                      title: "Saturday",
                    ),
                    CustomDropDownList<String>(
                      loadData: () async =>
                          (_selectedPeriod?.schedule ?? <Schedule>[])
                              .map((e) => e.classPeriodName)
                              .toList(),
                      displayName: (x) => x,
                      controller: _sunday,
                      enabled: _selectedPeriod != null,
                      initialValue:
                          widget.offeringsScheduleModel?.sun?.toString(),
                      title: "Sunday",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        CustomActionButton(
          state: ButtonState.idle,
          title: edit ? "update" : "add",
          color: Theme.of(context).primaryColor,
          onTap: () async {
            print('add userSession');
            if (_validate()) {
              OfferingWeeklySchedule newOfferingWeeklySchedule =
                  OfferingWeeklySchedule(
                grade: _grade.text,
                offeringgroupid: _offeringGroupID.text,
                priodtype: _periodType.text,
                roomname: _roomName.text,
                primaryOwner: _primaryOwner,
                mon: int.tryParse(_monday.text),
                tue: int.tryParse(_tuesday.text),
                wed: int.tryParse(_wednesday.text),
                thu: int.tryParse(_thursday.text),
                fri: int.tryParse(_friday.text),
                sat: int.tryParse(_saturday.text),
                sun: int.tryParse(_sunday.text),
              );
              if (edit) {
                BlocProvider.of<itembloc.OfferingWeeklyScheduleBloc>(context)
                    .add(
                  itembloc.updateItem(
                    item: newOfferingWeeklySchedule,
                    entityid: widget.entityid,
                    entitytype: widget.entitytype,
                  ),
                );
              } else {
                BlocProvider.of<itembloc.OfferingWeeklyScheduleBloc>(context)
                    .add(
                  itembloc.createItem(
                    item: newOfferingWeeklySchedule,
                    entityid: widget.entityid,
                    entitytype: widget.entitytype,
                  ),
                );
              }
            } else {
              EasyLoading.showInfo("Please fill all fields");
            }
          },
        ),
      ],
    );
  }
}

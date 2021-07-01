import 'package:complex/newentityfeatures/Models/school_owner_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;

import '../itembloc/bloc.dart' as itembloc;
import '../listbloc/bloc.dart' as listbloc;
import 'package:complex/newentityfeatures/Models/offering_model.dart';

class TeacherAssignmentModelForm extends StatefulWidget {
  final TeacherOfferingsAssignment teacherOfferingsAssignment;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;

  TeacherAssignmentModelForm({
    @required this.teacherOfferingsAssignment,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
  });

  @override
  _TeacherAssignmentModelFormState createState() =>
      _TeacherAssignmentModelFormState();
}

class _TeacherAssignmentModelFormState
    extends State<TeacherAssignmentModelForm> {
  CustomTextFieldController _offeringGroupName = CustomTextFieldController();
  CustomTextFieldController _grade = CustomTextFieldController();
  CustomTextFieldController _primaryOwnerController =
      CustomTextFieldController();

  TeacherOfferingsAssignment teacherOfferingsAssignment;
  ButtonState buttonState;
  List<String> grades;
  List<SchoolOwner> schoolOwners;
  Future<List<String>> Function(String) offeringModelGroup;
  Future<List<String>> Function(String grade) virtualRooms;

  // CustomTextFieldController _secondaryOwnerController =
  //     CustomTextFieldController();
  // CustomTextFieldController _periodType = CustomTextFieldController();
  // CustomTextFieldController _classPeriodName = CustomTextFieldController();
  // CustomTextFieldController _roomName = CustomTextFieldController();
  // CustomTextFieldController _virtualRoomName = CustomTextFieldController();
  // CustomTextFieldController _sessionTermName = CustomTextFieldController();

  bool edit = false;
  String buttonTitle = "Add";
  SchoolOwner _primaryOwner;
  List<SchoolOwner> _secondaryOwners = [];

  // OfferingModelGroup _selectedOffering;
  List<String> _selectedVirtualRooms = [];
  List<String> _virtualRooms = [];

  // List<String> offeringModelGroupNames = [];

  bool _validate() {
    return Validate.validateAll([
      _offeringGroupName,
      _grade,
      _primaryOwnerController,
    ]);
  }

  _initFiledValue() {
    if (widget.teacherOfferingsAssignment != null) {
      edit = true;
      buttonTitle = "Update";
      _selectedVirtualRooms = widget.teacherOfferingsAssignment.vrlist;
      _primaryOwner = widget.teacherOfferingsAssignment.primaryOwner;
      _secondaryOwners = widget.teacherOfferingsAssignment.secondaryOwner;

      Future.delayed(Duration(milliseconds: 80), () {
        _offeringGroupName.text =
            widget.teacherOfferingsAssignment.offeringgroupname;
        _grade.text = widget.teacherOfferingsAssignment.grade;
        _primaryOwnerController.text =
            widget.teacherOfferingsAssignment.primaryOwner?.display;
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
      create: (context) => itembloc.TeacherAssignmentModelBloc()
        ..add(
          itembloc.getForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tescher Offering Assignment'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.TeacherAssignmentModelBloc,
            itembloc.TeacherAssignmentModelState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            setState(() {
              grades = state.grades;
              schoolOwners = state.schoolOwners;
              offeringModelGroup = state.offeringModelGroup;
              virtualRooms = state.virtualRooms;

              _initFiledValue();
            });
          }
        }, child: BlocBuilder<itembloc.TeacherAssignmentModelBloc,
            itembloc.TeacherAssignmentModelState>(builder: (context, state) {
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
                      title: "Grade",
                      enabled: !edit,
                      controller: _grade,
                      loadData: () async => grades,
                      displayName: (x) => x,
                      onSelected: (value, index) => setState(() {
                        _virtualRooms = [];
                        _selectedVirtualRooms = [];
                        _offeringGroupName.text = '';

                        virtualRooms(value).then(
                            (value) => setState(() => _virtualRooms = value));
                      }),
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomDropDownList<String>(
                      enabled: !edit &&
                          _grade.text != null &&
                          _grade.text.isNotEmpty,
                      title: "Offering Group Name",
                      controller: _offeringGroupName,
                      shouldReload: true,
                      loadData: () async => offeringModelGroup(_grade.text),
                      displayName: (x) => x,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomMultiSelect<String>(
                      initialValue: _selectedVirtualRooms,
                      dialogType: MultiSelectDialogType.LIST,
                      buttonText: "Virtual Rooms",
                      title: "List of Virtual Rooms",
                      items: _virtualRooms != null
                          ? _virtualRooms
                              .map((virtualRooms) => MultiSelectItem<String>(
                                    label: virtualRooms,
                                    value: virtualRooms,
                                  ))
                              .toList()
                          : [],
                      onConfirm: (results) {
                        setState(() {
                          _selectedVirtualRooms = results.cast<String>();
                        });
                      },
                      chipDisplay: MultiSelectChipDisplay<String>(
                        items: _selectedVirtualRooms != null
                            ? _selectedVirtualRooms
                                .map((e) => MultiSelectItem<String>(
                                      label: e,
                                      value: e,
                                    ))
                                .toList()
                            : [],
                        onTap: (value) {
                          setState(() {
                            _selectedVirtualRooms.remove(value);
                          });
                        },
                      ),
                    ),
                    CustomDropDownList<SchoolOwner>(
                      title: "Primary Owner",
                      controller: _primaryOwnerController,
                      loadData: () async => schoolOwners ?? [],
                      displayName: (x) => x.display,
                      onSelected: (owner, i) => _primaryOwner = owner,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomMultiSelect(
                      initialValue: _secondaryOwners,
                      dialogType: MultiSelectDialogType.LIST,
                      buttonText: "Secondary Owners",
                      title: "List of Owners",
                      items: schoolOwners != null
                          ? schoolOwners
                              .map((owner) => MultiSelectItem<SchoolOwner>(
                                  label: owner.display, value: owner))
                              .toList()
                          : [],
                      onConfirm: (results) {
                        setState(() {
                          _secondaryOwners = results.cast<SchoolOwner>();
                        });
                      },
                      chipDisplay: MultiSelectChipDisplay<SchoolOwner>(
                        items: _secondaryOwners != null
                            ? _secondaryOwners
                                .map((e) => MultiSelectItem<SchoolOwner>(
                                    label: e.display, value: e))
                                .toList()
                            : [],
                        onTap: (value) {
                          setState(() {
                            _secondaryOwners.remove(value);
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        CustomActionButton(
          state: ButtonState.idle,
          title: buttonTitle,
          gradient: C.bgGradient,
          padding: EdgeInsets.symmetric(
              vertical: height * 1.5, horizontal: width * 5),
          margin: EdgeInsets.symmetric(
              horizontal: width * 25, vertical: height * 6),
          onTap: () async {
            print('add userSession');

            if (_validate()) {
              TeacherOfferingsAssignment toa1 = new TeacherOfferingsAssignment(
                version: 1,
                primaryOwner: _primaryOwner,
                secondaryOwner: _secondaryOwners,
                offeringgroupname: _offeringGroupName.text,
                grade: _grade.text,
                vrlist: _selectedVirtualRooms,
              );

              if (buttonTitle == "Add") {
                BlocProvider.of<itembloc.TeacherAssignmentModelBloc>(context)
                    .add(
                  itembloc.createItem(
                    item: toa1,
                    entityid: widget.entityid,
                    entitytype: widget.entitytype,
                  ),
                );
              } else if (buttonTitle == "Update") {
                BlocProvider.of<itembloc.TeacherAssignmentModelBloc>(context)
                    .add(
                  itembloc.updateItem(
                    item: toa1,
                    entityid: widget.entityid,
                    entitytype: widget.entitytype,
                  ),
                );
              }
              // BlocProvider.of<SchoolBloc>(context).add(
              //   AddOfferingScheduleEvent(
              //     offeringsScheduleModel: _offeringScheduleModel,
              //     sessionID: '2020-2021',
              //   ),
              // );
            }
          },
        ),
      ],
    );
  }
}

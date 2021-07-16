import 'package:complex/common/widgets/custom_app_bar.dart';
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

class VirtualRoomForm extends StatefulWidget {
  final VirtualRoomModelNewFormat virtualRoomModel;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;

  VirtualRoomForm({
    @required this.virtualRoomModel,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
  });

  @override
  _VirtualRoomFormState createState() => _VirtualRoomFormState();
}

class _VirtualRoomFormState extends State<VirtualRoomForm> {
  CustomTextFieldController _virtualRoomName = CustomTextFieldController();
  CustomTextFieldController _sectionName = CustomTextFieldController();
  CustomTextFieldController _grade = CustomTextFieldController();
  CustomTextFieldController _attendanceType = CustomTextFieldController();
  CustomTextFieldController _chatRoomType = CustomTextFieldController();
  CustomTextFieldController _associatedRoom = CustomTextFieldController();
  CustomTextFieldController _numberOfStudent = CustomTextFieldController();
  CustomTextFieldController _primaryOwnerController =
      CustomTextFieldController();

  ButtonState buttonState;
  List<String> rooms;
  List<String> grades;
  List<SchoolOwner> schoolOwners;

  /* CustomTextFieldController _virtualRoomCategory = CustomTextFieldController();
  CustomTextFieldController _listOfOfferings = CustomTextFieldController();
  CustomTextFieldController _listOfRegisteredId = CustomTextFieldController();
  CustomTextFieldController _sessionTermName = CustomTextFieldController(); */

  SchoolOwner _primaryOwner;
  List<SchoolOwner> _secondaryOwners = [];

  List<VirtualRoomModelNewFormat> availableRooms;

  Future<List<String>> get chatRoomType async => ["Read", 'Write'];

  bool isUpdate = false;
  String buttonTitle = 'Add';

  final List<String> sectionNamesList = "ABCDEFGHJKLMNOPQRS".split('');

  ///todo
  bool _validate() {
    return Validate.validateAll([
      _virtualRoomName,
      _sectionName,
      _grade,
      _attendanceType,
      _chatRoomType,
      _associatedRoom,
      _numberOfStudent,
      _primaryOwnerController,
    ]);
    // return _virtualRoomName.isValid &&
    //     _grade.isValid &&
    //     _sectionName.isValid &&
    //     _primaryOwnerController.isValid &&
    //     _attendanceType.isValid &&
    //     _chatRoomType.isValid &&
    //     _associatedRoom.isValid &&
    //     _numberOfStudent.isValid;
  }

  ///init fields value
  // ignore: missing_return
  Future _initFiledValue() {
    if (widget.virtualRoomModel != null) {
      isUpdate = true;
      _primaryOwner = widget.virtualRoomModel.primaryOwner;
      _secondaryOwners = widget.virtualRoomModel.secondaryOwnerV;

      Future.delayed(Duration(milliseconds: 80), () {
        setState(() {
          buttonTitle = "Update";
          _secondaryOwners = widget.virtualRoomModel.secondaryOwnerV;
        });
        _virtualRoomName.text = widget.virtualRoomModel.virtualRoomName;

        _sectionName.text = widget.virtualRoomModel.sectionname;
        _primaryOwnerController.text =
            widget.virtualRoomModel.primaryOwner.display;
        _secondaryOwners = widget.virtualRoomModel.secondaryOwnerV;
        _attendanceType.text = widget.virtualRoomModel.attendenceType;
        _associatedRoom.text = widget.virtualRoomModel.associatedRoom;
        _numberOfStudent.text = widget.virtualRoomModel.numOfStudent.toString();
        _grade.text = widget.virtualRoomModel.grade;
        _chatRoomType.text = widget.virtualRoomModel.chatRoomType;
//          _primaryOwner.text = widget.virtualRoomsModel.listOfRegisteredId[0].idCardNum;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    print(schoolOwners);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => itembloc.VirtualRoomModelBloc()
        ..add(
          itembloc.getForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
          ),
        ),
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Virtual Room Form',
        ),
        body: BlocListener<itembloc.VirtualRoomModelBloc,
            itembloc.VirtualRoomModelState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            EasyLoading.showSuccess("Item is Created/Saved");
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            setState(() {
              buttonState = state.buttonState;
              rooms = state.rooms;
              grades = state.grades;
              schoolOwners = state.schoolOwners;

              _initFiledValue();
            });
          }
        }, child: BlocBuilder<itembloc.VirtualRoomModelBloc,
            itembloc.VirtualRoomModelState>(builder: (context, state) {
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
                    CustomTextField(
                      enabled: !isUpdate,
                      title: "Virtual Room Name",
                      controller: _virtualRoomName,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomDropDownList<String>(
                      enabled: !isUpdate,
                      title: "Grade",
                      controller: _grade,
                      loadData: () async => grades,
                      displayName: (x) => x,
                      onSelected: (value, index) => setState(() {
                        availableRooms = null;
                        _associatedRoom.text = '';
                        _chatRoomType.text = '';
                      }),
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomDropDownList<String>(
                      enabled: !isUpdate,
                      title: "Section",
                      controller: _sectionName,
                      loadData: () async => sectionNamesList,
                      displayName: (x) => x,
                      validate: Validate.withOption(isRequired: true),
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
                      initialValue: widget.virtualRoomModel?.secondaryOwnerV,
                      // state: ,
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
                    CustomDropDownList<String>(
                      title: "Attendance Type",
                      shouldReload: true,
                      controller: _attendanceType,
                      loadData: () async => ["Once", "Twice"],
                      displayName: (x) => x,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomDropDownList<String>(
                      title: "Chat Room Type",
                      controller: _chatRoomType,
                      enabled: _grade?.text != null,
                      loadData: () async => ['read'],
                      displayName: (x) => x,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomDropDownList<String>(
                      title: "Associated Room",
                      controller: _associatedRoom,
                      loadData: () async => rooms,
                      displayName: (x) => x,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      title: "Number of Student",
                      controller: _numberOfStudent,
                      validate: Validate.withOption(
                        isRequired: true,
                        isInt: true,
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
          color: Theme.of(context).primaryColor,
          onTap: () {
            if (_validate()) {
              VirtualRoomModelNewFormat _virtualRoomModelNewFormat =
                  VirtualRoomModelNewFormat(
                version: 1,
                virtualRoomName: _virtualRoomName.text,
                grade: _grade.text,
                primaryOwner: _primaryOwner,
                secondaryOwnerV: _secondaryOwners,
                attendenceType: _attendanceType.text,
                chatRoomType: _chatRoomType.text,
                associatedRoom: _associatedRoom.text,
                numOfStudent: int.parse(_numberOfStudent.text),
                sectionname: _sectionName.text,
              );

              if (buttonTitle == "Add") {
                BlocProvider.of<itembloc.VirtualRoomModelBloc>(context).add(
                  itembloc.createItem(
                    item: _virtualRoomModelNewFormat,
                    entityid: widget.entityid,
                    entitytype: widget.entitytype,
                  ),
                );
              } else if (buttonTitle == "Update") {
                BlocProvider.of<itembloc.VirtualRoomModelBloc>(context).add(
                  itembloc.updateItem(
                    item: _virtualRoomModelNewFormat,
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

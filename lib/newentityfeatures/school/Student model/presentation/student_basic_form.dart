import 'package:complex/common/helputil.dart';
import 'package:complex/common/model/place.dart';
import 'package:complex/common/widgets/custom_image_uploader.dart';
import 'package:complex/common/widgets/custom_switchWithTitle.dart';

import 'package:complex/newentityfeatures/Models/user_registration_model.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
//import "package:asuka/asuka.dart" as asuka;
import 'package:complex/common/helputil.dart' hide DateTimeMode;
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../itembloc/bloc.dart' as itembloc;

class StudentBasicFormForm extends StatefulWidget {
  final UserRegistrationModel userRegistrationModel;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;

  StudentBasicFormForm({
    @required this.userRegistrationModel,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
  });

  @override
  _StudentBasicFormFormState createState() => _StudentBasicFormFormState();
}

class _StudentBasicFormFormState extends State<StudentBasicFormForm> {
  int timelineIndex = 1;
  // Basic
  UserRegistrationModel student;
  String id;

  int formIndex;
  bool update;
  List<Place> availablePlaces;

  //form a
  // CustomTextFieldController _dateOfJoining = CustomTextFieldController();
  // CustomTextFieldController _dateOfBirth = CustomTextFieldController();
  CustomTextFieldController _studentName = CustomTextFieldController();
  CustomTextFieldController _studentEmail = CustomTextFieldController();
  CustomTextFieldController _uploadPhoto = CustomTextFieldController();
  CustomTextFieldController _selectGender = CustomTextFieldController();
  CustomTextFieldController _idCardNumber = CustomTextFieldController();
  DateTime _birthDate = DateTime.now();
  DateTime _joinDate = DateTime.now();
  bool _uploading = false;

//form B
  CustomTextFieldController _addressLine1 = CustomTextFieldController();
  CustomTextFieldController _town = CustomTextFieldController();
  CustomTextFieldController _state = CustomTextFieldController();
  CustomTextFieldController _country = CustomTextFieldController();
  CustomTextFieldController _zipCode = CustomTextFieldController();

  //form c
  CustomTextFieldController _phoneNumber = CustomTextFieldController();
  CustomTextFieldController _email = CustomTextFieldController();
  CustomTextFieldController _name = CustomTextFieldController();
  CustomTextFieldController _phoneNumber2 = CustomTextFieldController();
  CustomTextFieldController _email2 = CustomTextFieldController();
  CustomTextFieldController _name2 = CustomTextFieldController();

  CustomTextFieldController _dateOfJoinController = CustomTextFieldController();
  CustomTextFieldController _dateOfBirthController =
      CustomTextFieldController();

  // Guardian

  CustomTextFieldController _guardianRelation = CustomTextFieldController();
  CustomTextFieldController _guardianName = CustomTextFieldController();
  CustomTextFieldController _guardianEmailAddress = CustomTextFieldController();
  CustomTextFieldController _guardianPhoneNumber = CustomTextFieldController();
  CustomTextFieldController _guardianId = CustomTextFieldController();

  CustomTextFieldController _guardianRelation2 = CustomTextFieldController();
  CustomTextFieldController _guardianName2 = CustomTextFieldController();
  CustomTextFieldController _guardianEmailAddress2 =
      CustomTextFieldController();
  CustomTextFieldController _guardianPhoneNumber2 = CustomTextFieldController();
  CustomTextFieldController _guardianId2 = CustomTextFieldController();

  // Social
  CustomTextFieldController _casteName = CustomTextFieldController();
  bool _bplStudent = false;
  CustomTextFieldController _motherTongue = CustomTextFieldController();
  CustomTextFieldController _religion = CustomTextFieldController();
  //CustomTextFieldController _additionalInfo = CustomTextFieldController();

  // Academic

  CustomTextFieldController _nameOfInstitution = CustomTextFieldController();
  CustomTextFieldController _classAttended = CustomTextFieldController();
  CustomTextFieldController _academicPercentage = CustomTextFieldController();
  // CustomTextFieldController _majorDegree = CustomTextFieldController();

  bool _validate() {
    if (timelineIndex == 1) {
      if (formIndex == 1) {
        return (_studentName.isValid) &&
            (_studentEmail.isValid) &&
            (_selectGender.isValid) &&
            (_idCardNumber.isValid);
      } else if (formIndex == 2) {
        return (_addressLine1.isValid) &&
            (_town.isValid) &&
            (_state.isValid) &&
            (_zipCode.isValid);
      } else if (formIndex == 3) {
        return (_phoneNumber.isValid) &&
            (_email.isValid) &&
            (_name.isValid) &&
            (_phoneNumber2.isValid) &&
            (_name2.isValid) &&
            (_email2.isValid);
      }
    } else if (timelineIndex == 2) {
      return _guardianRelation.isValid &&
          _guardianName.isValid &&
          _guardianEmailAddress.isValid &&
          _guardianPhoneNumber.isValid &&
          _guardianId.isValid;
    } else if (timelineIndex == 3) {
      return _guardianRelation.isValid &&
          _guardianName.isValid &&
          _guardianEmailAddress.isValid &&
          _guardianPhoneNumber.isValid &&
          _guardianId.isValid;
    } else if (timelineIndex == 4) {
      return _casteName.isValid && _motherTongue.isValid && _religion.isValid;
      //  _additionalInfo.isValid;
    } else if (timelineIndex == 5) {
      return _nameOfInstitution.isValid &&
          _classAttended.isValid &&
          _academicPercentage.isValid;
    }
    return false;
  }

  void _initFiledValue() {
    if (widget.userRegistrationModel != null) {
      _birthDate = DateTime.tryParse(widget.userRegistrationModel.dob ?? 'x') ??
          DateTime.now();
      _joinDate = widget.userRegistrationModel.dateOfJoining ?? DateTime.now();
      Future.delayed(Duration(milliseconds: 80), () {
        _guardianRelation.text = widget.userRegistrationModel.guardian1relation;
        _guardianName.text = widget.userRegistrationModel.guardian1name;
        _guardianEmailAddress.text =
            widget.userRegistrationModel.guardian1email;
        _guardianPhoneNumber.text =
            widget.userRegistrationModel?.guardian1phone?.toString();
        _guardianId.text = widget.userRegistrationModel.guardian1AppUserId;
        // });
        // Future.delayed(Duration(milliseconds: 80), () {
        _casteName.text = widget.userRegistrationModel.caste;

        _motherTongue.text = widget.userRegistrationModel.motherToungue;
        _religion.text = widget.userRegistrationModel.religion;
        // });
        // Future.delayed(Duration(milliseconds: 80), () {
        _nameOfInstitution.text = widget.userRegistrationModel.schoolAttended;
        _classAttended.text = widget.userRegistrationModel.classAttended;
        _academicPercentage.text =
            widget.userRegistrationModel?.academicPercentage?.toString();
//          _majorDegree.text = widget.userRegistrationModel.m.
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
      create: (context) => itembloc.StudentBasicFormModelBloc()
        ..add(
          itembloc.getForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('User Registration'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.StudentBasicFormModelBloc,
            itembloc.StudentBasicFormModelState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            EasyLoading.showSuccess("Item is Created/Saved");
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            student = widget.userRegistrationModel;

            update = widget.userRegistrationModel == null ? false : true;

            formIndex = state.formIndex;
            availablePlaces = state.availablePlaces;
            Future.delayed(Duration(milliseconds: 100), () {
              if (widget.userRegistrationModel == null) {
                setState(() {
                  _idCardNumber.text = state.studentId;
                  print('data loaded in form ${state.studentId}');
                });
              }
            });
            _initFiledValue();
          }
        }, child: BlocBuilder<itembloc.StudentBasicFormModelBloc,
            itembloc.StudentBasicFormModelState>(builder: (context, state) {
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
                if (timelineIndex == 1) MaterialPage(child: screen1()),
                if (timelineIndex == 2) MaterialPage(child: screen2()),
                if (timelineIndex == 3) MaterialPage(child: screen22()),
                if (timelineIndex == 4) MaterialPage(child: screen3()),
                if (timelineIndex == 5) MaterialPage(child: screen4(context)),
              ];
            },
          ),
        ),
      ],
    );
  }

  Widget screen1() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: width * 6),
      children: <Widget>[
        //form a
        Visibility(
          visible: formIndex == 1,
          child: Column(
            children: <Widget>[
              CustomTextField(
                initialValue: student?.idCardNum,
                enabled: false,

                ///because the photo is depend on it
                onChange: (text) => setState(() {}),
                title: "Enter ID Card Number",
                controller: _idCardNumber,
                validate: Validate.withOption(
                  isRequired: true,
                  isNumber: true,
                ),
              ),
              CustomDateTimePicker(
                controller: _dateOfBirthController,
                title: "Select Date Of Birth",
                dateTime: _birthDate ?? DateTime.now(),
                onChange: (value) => _birthDate = value,
                mode: DateTimeMode.DATE,
              ),
              CustomTextField(
                initialValue: student?.name,
                title: "Student Name",
                controller: _studentName,
                validate: Validate.withOption(
                  isRequired: true,
                ),
              ),
              CustomTextField(
                initialValue: student?.email,
                title: "Student Email",
                controller: _studentEmail,
                validate: Validate.withOption(
                  isRequired: true,
                  isEmail: true,
                ),
              ),
              CustomDateTimePicker(
                controller: _dateOfJoinController,
                title: "Select Date Of Join",
                dateTime: _joinDate ?? DateTime.now(),
                onChange: (value) => _joinDate = value,
                mode: DateTimeMode.DATE,
              ),
              CustomImageUploader(
                enabled: true,
                path: 'students/${_idCardNumber.text}',
                initialValue: student?.photo,
                validate: Validate.withOption(
                  isRequired: true,
                  maxLength: 500,
                ),
                controller: _uploadPhoto,
              ),
              // Row(
              //   children: [
              //     Expanded(
              //       child: CustomTextField(
              //         initialValue: student?.photo,
              //         title: "Upload Photo",
              //         controller: _uploadPhoto,
              //         enabled: false,
              //         validate: Validate.withOption(
              //           isRequired: true,
              //           maxLength: 250,
              //         ),
              //         onTap: _getAndUploadPhoto,
              //       ),
              //     ),
              //     if (_uploading)
              //       Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: CircularProgressIndicator(),
              //       ),
              //   ],
              // ),
              CustomDropDownList<String>(
                initialValue: student?.gender,
                displayName: (data) => data,
                loadData: () async => ["MALE", "FEMAlE"],
                title: "Select Gender",
                controller: _selectGender,
                validate: Validate.withOption(isRequired: true),
              ),
            ],
          ),
        ),
        //form b
        Visibility(
          visible: formIndex == 2,
          // maintainSize: true,
          // maintainAnimation: true,
          // maintainState: true,
          // replacement: Container(),
          child: Column(
            children: <Widget>[
              CustomTextField(
                initialValue: student?.addressLine,
                title: "Address line1",
                controller: _addressLine1,
                validate: Validate.withOption(isRequired: true),
              ),
              CustomDropDownList<String>(
                initialValue: student?.state,
                displayName: (data) => data,
                title: "State",
                controller: _state,
                loadData: () async =>
                    availablePlaces.map((e) => e.state).toSet().toList(),
                onSelected: (value, index) => setState(() {}),
                validate: Validate.withOption(isRequired: true),
              ),
              CustomDropDownList<String>(
                displayName: (data) => data,
                shouldReload: true,
                enabled: _state.text?.isNotEmpty ?? false,
                loadData: () async => availablePlaces
                    .where((element) => element.state == _state.text)
                    .map((e) => e.district)
                    .toSet()
                    .toList(),
                initialValue: student?.town,
                title: "Town",
                controller: _town,
                validate: Validate.withOption(isRequired: true),
                onSelected: (value, index) => setState(() {}),
              ),
              CustomDropDownList<String>(
                initialValue: student?.zipCode?.toString(),
                title: "Zip Code",
                loadData: () async => availablePlaces
                    .where((element) => element.district == _town.text)
                    .map((e) => e.zipCode)
                    .toSet()
                    .toList(),
                displayName: (data) => data,
                enabled: _town.text?.isNotEmpty ?? false,
                controller: _zipCode,
                validate: Validate.withOption(
                  isRequired: true,
                  isNumber: true,
                ),
              ),
            ],
          ),
        ),
        //form c
        // Visibility(
        //   visible: formIndex == 3,
        //   child: Column(
        //     children: <Widget>[
        //       CustomTextField(
        //         initialValue: student?.guardian1name,
        //         title: "guardian 1 Name",
        //         controller: _name,
        //         validate: Validate.withOption(isRequired: true),
        //       ),
        //       CustomTextField(
        //         initialValue: student?.guardian1phone,
        //         title: "guardian 1 Number",
        //         controller: _phoneNumber,
        //         validate:
        //             Validate.withOption(isRequired: true, isNumber: true),
        //       ),
        //       CustomTextField(
        //         initialValue: student?.guardian1email,
        //         title: "guardian 1 Email",
        //         controller: _email,
        //         validate: Validate.withOption(isRequired: true),
        //       ),
        //       CustomTextField(
        //         initialValue: student?.guardian2name,
        //         title: "guardian 2 Name",
        //         controller: _name2,
        //         validate: Validate.withOption(isRequired: true),
        //       ),
        //       CustomTextField(
        //         initialValue: student?.guardian2phone,
        //         title: "guardian 2 Number",
        //         controller: _phoneNumber2,
        //         validate:
        //             Validate.withOption(isRequired: true, isNumber: true),
        //       ),
        //       CustomTextField(
        //         initialValue: student?.guardian2email,
        //         title: "guardian 2 Email",
        //         controller: _email2,
        //         validate: Validate.withOption(isRequired: true),
        //       ),
        //     ],
        //   ),
        // ),

        CustomActionButton(
          state: ButtonState.idle,
          title: formIndex != 3
              ? "Next"
              : update
                  ? "Update"
                  : "Add",
          gradient: C.bgGradient,
          padding: EdgeInsets.symmetric(vertical: height * 1.5),
          margin: EdgeInsets.symmetric(
              horizontal: width * 25, vertical: height * 6),
          onTap: () async {
            if (_validate()) {
              // if (formIndex == 3) {}
              UserRegistrationModel _userRegPaymentModel =
                  student ?? UserRegistrationModel();
              if (formIndex == 1) {
                _userRegPaymentModel = _userRegPaymentModel.copyWith(

                    ///form 1
                    dateOfJoining: _joinDate,
                    email: _studentEmail.text,
                    dob: _birthDate.toString(),
                    name: _studentName.text,
                    photo: _uploadPhoto.text,
                    gender: _selectGender.text,
                    idCardNum: _idCardNumber.text,
                    bplStudent: _bplStudent);
                // setState(() {
                //   formIndex = 2;
                // });
              }
              //  else if (formIndex == 2) {
              //   _userRegPaymentModel = _userRegPaymentModel.copyWith(
              //     ///form 2
              //     addressLine: _addressLine1.text,
              //     town: _town.text,
              //     country: _country.text,
              //     state: _state.text,
              //     zipCode: int.tryParse(_zipCode.text ?? ""),
              //   );
              //   // setState(() {
              //   //   formIndex = 3;
              //   // });
              // } else if (formIndex == 3) {
              //   _userRegPaymentModel = _userRegPaymentModel.copyWith(
              //     guardian1phone: _phoneNumber.text,
              //     guardian1email: _email.text,
              //     guardian1name: _name.text,
              //     guardian2phone: _phoneNumber.text,
              //     guardian2email: _email2.text,
              //     guardian2name: _name2.text,
              //   );
              // }
              setState(() {
                student = _userRegPaymentModel;
                _initFiledValue();
                timelineIndex = 2;
              });
            }
          },
        ),
      ],
    );
  }

  Widget screen2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                InAppTitle(title: 'Guardian'),
                Column(
                  children: <Widget>[
                    CustomTextField(
                      title: "Guardian Relation",
                      controller: _guardianRelation,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      title: "Guardian Name",
                      controller: _guardianName,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      title: "Guardian email address",
                      controller: _guardianEmailAddress,
                      validate: Validate.withOption(
                        isRequired: true,
                        isEmail: true,
                      ),
                    ),
                    CustomTextField(
                      title: "Guardian phone number",
                      controller: _guardianPhoneNumber,
                      validate: Validate.withOption(
                        isRequired: true,
                        isNumber: true,
                      ),
                    ),
                    CustomTextField(
                      title: "Guardian ID",
                      controller: _guardianId,
                      validate: Validate.withOption(isRequired: true),
                    ),
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
              horizontal: width * 25, vertical: height * 6),
          onTap: () async {
            if (_validate()) {
              UserRegistrationModel updatedUser = student.copyWith(
                guardian1name: _guardianName.text,
                guardian1relation: _guardianRelation.text,
                guardian1email: _guardianEmailAddress.text,
                guardian1phone: _guardianPhoneNumber.text,
                guardian1AppUserId: _guardianId.text,
              );
              setState(() {
                student = updatedUser;
                _initFiledValue();
                timelineIndex = 3;
              });
            }
          },
        ),
      ],
    );
  }

  Widget screen22() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                InAppTitle(title: 'Guardian'),
                Column(
                  children: <Widget>[
                    CustomTextField(
                      title: "Guardian Relation",
                      controller: _guardianRelation2,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      title: "Guardian Name",
                      controller: _guardianName2,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      title: "Guardian email address",
                      controller: _guardianEmailAddress2,
                      validate: Validate.withOption(
                        isRequired: true,
                        isEmail: true,
                      ),
                    ),
                    CustomTextField(
                      title: "Guardian phone number",
                      controller: _guardianPhoneNumber2,
                      validate: Validate.withOption(
                        isRequired: true,
                        isNumber: true,
                      ),
                    ),
                    CustomTextField(
                      title: "Guardian ID",
                      controller: _guardianId2,
                      validate: Validate.withOption(isRequired: true),
                    ),
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
              horizontal: width * 25, vertical: height * 6),
          onTap: () async {
            if (_validate()) {
              UserRegistrationModel updatedUser = student.copyWith(
                guardian2name: _guardianName2.text,
                guardian2relation: _guardianRelation2.text,
                guardian2email: _guardianEmailAddress2.text,
                guardian2phone: _guardianPhoneNumber2.text,
                guardian2appUserId: _guardianId2.text,
              );
              setState(() {
                student = updatedUser;
                _initFiledValue();
                timelineIndex = 4;
              });
            }
          },
        ),
      ],
    );
  }

  Widget screen3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                InAppTitle(
                  title: 'Social Info',
                ),
                Column(
                  children: <Widget>[
                    CustomTextField(
                      title: "Caste Name",
                      controller: _casteName,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomSwitchWithTitle(
                      title: "Bpl  student",
                      isEnabled: _bplStudent,
                      onChange: (x) {
                        setState(() {
                          _bplStudent = x;
                        });
                      },
                    ),
                    CustomDropDownList<String>(
                      displayName: (data) => data,
                      loadData: () async => [
                        "Hindi",
                        "English",
                        "Punjabi",
                        "Haryanavi",
                      ],
                      title: "Selet mother tongue",
                      controller: _motherTongue,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomDropDownList<String>(
                      displayName: (data) => data,
                      loadData: () async => [
                        "Hindu",
                        "Muslim",
                        "Sikh",
                        "Christian",
                      ],
                      title: "Select Religion",
                      controller: _religion,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    // CustomTextField(
                    //   title: "Enter additional info",
                    //   controller: _additionalInfo,
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
          state: ButtonState.idle,
          title: "Next",
          gradient: C.bgGradient,
          padding: EdgeInsets.symmetric(vertical: height * 1.5),
          margin: EdgeInsets.symmetric(
              horizontal: width * 25, vertical: height * 6),
          onTap: () async {
            if (_validate()) {
              UserRegistrationModel updatedUser = student.copyWith(
                caste: _casteName.text,
                motherToungue: _motherTongue.text,
                religion: _religion.text,
              );
              setState(() {
                student = updatedUser;
                _initFiledValue();
                timelineIndex = 5;
              });
            }
          },
        ),
      ],
    );
  }

  Widget screen4(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                InAppTitle(
                  title: 'Academic Info',
                ),
                Column(
                  children: <Widget>[
                    CustomTextField(
                      title: "Name of institution",
                      controller: _nameOfInstitution,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      title: "Class Attended",
                      controller: _classAttended,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      title: "Academic Percentage",
                      controller: _academicPercentage,
                      validate: Validate.withOption(isRequired: true),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        CustomActionButton(
          state: ButtonState.idle,
          title: widget.userRegistrationModel != null ? "Update" : "Add",
          gradient: C.bgGradient,
          padding: EdgeInsets.symmetric(vertical: height * 1.5),
          margin: EdgeInsets.symmetric(
              horizontal: width * 25, vertical: height * 6),
          onTap: () async {
            if (_validate()) {
              var updatedUser = student.copyWith(
                schoolAttended: _nameOfInstitution.text,
                classAttended: _classAttended.text,
                academicPercentage: int.parse(_academicPercentage.text),
              );
              if (widget.userRegistrationModel != null) {
                BlocProvider.of<itembloc.StudentBasicFormModelBloc>(context)
                    .add(
                  itembloc.updateItem(
                    item: updatedUser,
                    entityid: widget.entityid,
                    entitytype: widget.entitytype,
                    // student: updatedUser,
                    // update: true,
                  ),
                );
              } else {
                BlocProvider.of<itembloc.StudentBasicFormModelBloc>(context)
                    .add(
                  itembloc.createItem(
                    item: updatedUser,

                    entityid: widget.entityid,
                    entitytype: widget.entitytype,
                    // student: updatedUser,
                    // update: true,
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

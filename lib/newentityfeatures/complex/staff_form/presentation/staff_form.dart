import 'package:complex/common/model/timeline_model.dart';
import 'package:complex/common/presentation.dart';
import 'package:complex/common/widgets/custom_image_uploader.dart';
import 'package:complex/common/widgets/custom_switchWithTitle.dart';
import 'package:complex/data/models/response/user_response/user_entity.dart';
// import 'package:complex/entity/model/complex_model.dart';
import 'package:complex/newentityfeatures/Models/entity/complex_model.dart';

import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:complex/common/helputil.dart';

import 'package:complex/data/screen_size.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart' hide DateTimeMode;
import "package:asuka/asuka.dart" as asuka;
import 'package:complex/common/widgets/date_time_picker_newentity.dart'
    as newentitytimepicker;
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../itembloc/bloc.dart' as itembloc;
// import 'package:complex/newentityfeatures/staff/model/staff_model.dart';
import 'package:complex/newentityfeatures/Models/entity/staff_model.dart';

class StaffFormComplex extends StatefulWidget {
  final StaffModelx staffModel;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;
  final int origintype;
  StaffFormComplex(
      {@required this.staffModel,
      @required this.givenreloadaction,
      this.entitytype,
      this.entityid,
      this.origintype});

  // final ButtonState btnState;
  // final List<TimeLineModel> timeline;
  // final List<String> staffRoleList;
  // final int timelineIndex;

  //   @required this.staffRoleList,
  //   @required this.btnState,
  //   @required this.timeline,
  //   @required this.timelineIndex,

  @override
  _StaffFormComplexState createState() => _StaffFormComplexState();
}

class _StaffFormComplexState extends State<StaffFormComplex> {
  CustomTextFieldController _firstName = CustomTextFieldController();
  CustomTextFieldController _emailAddress = CustomTextFieldController();
  CustomTextFieldController _contactNumber = CustomTextFieldController();
  CustomTextFieldController _address = CustomTextFieldController();
  CustomTextFieldController _lastName = CustomTextFieldController();
  CustomTextFieldController _middleName = CustomTextFieldController();

  CustomTextFieldController _uploadPhoto = CustomTextFieldController();
  CustomTextFieldController _selectRole = CustomTextFieldController();
  CustomTextFieldController _timeInterval = CustomTextFieldController();
  bool _locationUpdateRequirement = true;
  bool _showAsTeamMember = true;
  bool _suspendIssue = true;
  CustomTextFieldController _education = CustomTextFieldController();
  CustomTextFieldController _basicBio = CustomTextFieldController();
  CustomTextFieldController _category = CustomTextFieldController();

  CustomTextFieldController _dateofBirthController =
      CustomTextFieldController();
  CustomTextFieldController _startDateController = CustomTextFieldController();
  CustomTextFieldController _endDateController = CustomTextFieldController();

  CustomTextFieldController _sickLeaves = CustomTextFieldController();
  CustomTextFieldController _paidLeaves = CustomTextFieldController();
  CustomTextFieldController _casualLeaves = CustomTextFieldController();

  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now();
  DateTime _dateOfBirth = DateTime.now();

  bool _isUpdate = false;

  int timelineIndex = 1;
  ComplexModel _complexModel;

  List<TimeLineModel> _timeline = [
    TimeLineModel(text: 'Basic\ninfo', isChecked: true),
    TimeLineModel(text: 'Additional\nInfo', isChecked: false),
    TimeLineModel(text: 'Bio Data', isChecked: false),
    TimeLineModel(text: 'Leaves', isChecked: false),
  ];

  List<String> staffRoleList;

  StaffModelx _staffModelx;

  void _initFiledValue() {
    if (_complexModel != null) {
      staffRoleList = _complexModel.roles.contains(EntityRoles.Manager)
          ? ["staff", "security", "maid", 'manager']
          : ["staff", "security", "maid"];
    } else {
      staffRoleList = ["staff", "security", "maid"];
    }
    if (widget.staffModel != null) {
      _isUpdate = widget.staffModel.staffID != null;
      _dateOfBirth = widget.staffModel.dob ?? DateTime.now();
      _startDate = widget.staffModel.startDate ?? DateTime.now();
      _endDate = widget.staffModel.endDate ?? DateTime.now();

      _locationUpdateRequirement =
          widget.staffModel.locationUpdateRequired ?? false;
      _showAsTeamMember = widget.staffModel.showAsTeamMember ?? false;
      _suspendIssue = widget.staffModel.isSuspended ?? false;
//       Future.delayed(Duration(milliseconds: 80), () {
//         if (timelineIndex == 1) {
//           _emailAddress.text = widget.staffModel.email;
//           _contactNumber.text = widget.staffModel.phoneNum.toString();
//           _address.text = widget.staffModel.addressInfo;

//           List<String> names = widget.staffModel.name.split('+_+');
//           _firstName.text = names[0] ?? '';
//           _lastName.text = names[1] ?? '';
//           _middleName.text = names[2] ?? '';
//         }
//         if (timelineIndex == 2) {
// //        _uploadPhoto.text = widget.staffModel.buildingName;
//           _selectRole.text = widget.staffModel.allowedRoles[0];
//           _timeInterval.text = widget.staffModel.timeInterval.toString();
//         }
//         if (timelineIndex == 3) {
//           _education.text = widget.staffModel.educationalQualification;
//           _basicBio.text = widget.staffModel.basicBio;
//           _category.text = widget.staffModel.category;
//         }
//         if (timelineIndex == 4) {
//           _sickLeaves.text = widget.staffModel.sickLeave.toString();
//           _paidLeaves.text = widget.staffModel.paidLeave.toString();
//           _casualLeaves.text = widget.staffModel.casualLeave.toString();
//         }
//       });
    }
  }

  @override
  void initState() {
    // _initFiledValue();
    super.initState();
  }

  bool _validate(int i) {
    if (i == 1) {
      return Validate.validateAll([
        _firstName,
        _middleName,
        _lastName,
        _emailAddress,
        _contactNumber,
        _address,
      ]);
    } else if (i == 2) {
      if (!_startDate.isBefore(_endDate)) {
        asuka.showSnackBar(SnackBar(
          content: Text(
            "Start date cannot be after end date",
            style: TextStyle(fontFamily: 'Merriweather', color: C.red),
          ),
        ));
        return false;
      }

      return Validate.validateAll([_selectRole, _timeInterval, _uploadPhoto]);
    } else if (i == 3) {

      return Validate.validateAll([
        _education,
        _basicBio,
        _category,
      ]);
    } else if (i == 4) {

      return Validate.validateAll([
        _sickLeaves,
        _casualLeaves,
        _paidLeaves,
      ]);
    }
    return false;
  }

  List<Page> onGeneratePages(dynamic data, List<Page> pages) {
    return [
      if (timelineIndex == 1) MaterialPage(child: screen1()),
      if (timelineIndex == 2) MaterialPage(child: screen2()),
      if (timelineIndex == 3) MaterialPage(child: screen3()),
      if (timelineIndex == 4) MaterialPage(child: screen4()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // _grade.text = widget.vrAssignmentModel.grade;
    // print(_grade.text);
    return BlocProvider(
      create: (context) => itembloc.StaffModelBloc()
        ..add(
          itembloc.getForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Exam Form'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.StaffModelBloc, itembloc.StaffModelState>(
          listener: (context, state) {
            if (state is itembloc.IsSaved) {
              EasyLoading.showSuccess("Item is Created/Saved");

              widget.givenreloadaction(true);
              Navigator.of(context).pop(false);
            }

            if (state is itembloc.IsReadyForDetailsPage) {
              _staffModelx = widget?.staffModel ?? StaffModelx();
              _complexModel = state.complexModel;

              _initFiledValue();
            }
          },
          child: BlocBuilder<itembloc.StaffModelBloc, itembloc.StaffModelState>(
            builder: (context, state) {
              if (state is itembloc.IsBusy)
                return Center(
                  child: Container(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator()),
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
            },
          ),
        ),
      ),
    );
  }

  Widget _blocBuilder(BuildContext context) {
    // appBar: CustomAppBar(title: 'Staff Details'),
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: height * 4),
          Center(
              child: HorizontalTimeline(
            timeline: _timeline,
          )),
          Expanded(
            child: FlowBuilder<int>(
              state: timelineIndex,
              onGeneratePages: (onGeneratePages),
            ),
          ),
          CustomActionButton(
            // state: widget.btnState,
            title: timelineIndex == 4
                ? _isUpdate
                    ? "Update"
                    : "Add"
                : 'Next',
            gradient: C.bgGradient,
            padding: EdgeInsets.symmetric(vertical: height * 1.5),
            margin: EdgeInsets.symmetric(
              horizontal: width * 25,
              vertical: height,
            ),
            onTap: () async {
              // if (widget.btnState != ButtonState.idle) return;
              // if (!_validate(timelineIndex)) return;

              if (_validate(timelineIndex)) {
                if (timelineIndex < _timeline.length) {
                  setState(() {
                    _timeline[timelineIndex].isChecked = true;
                    _staffModelx = extractStaffModel;
                    timelineIndex++;
                  });
                  // BlocProvider.of<ComplexBloc>(context)
                  //     .add(StaffFormNextComplexEvent(
                  //   timeLineIndex: timelineIndex,
                  //   staffModelx: extractStaffModel,
                  // ));
                } else {
                  if (_isUpdate) {
                    BlocProvider.of<itembloc.StaffModelBloc>(context).add(
                      itembloc.updateItemWithDiff(
                        olditem: widget.staffModel,
                        newitem: extractStaffModel,
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                      ),
                    );
                  } else {
                    BlocProvider.of<itembloc.StaffModelBloc>(context).add(
                      itembloc.createItem(
                        item: extractStaffModel,
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                      ),
                    );
                  }
                }
                // if (_isUpdate) {
                //   BlocProvider.of<ComplexBloc>(context).add(
                //     UpdateStaffComplexEvent(
                //       staffModel: extractStaffModel,
                //     ),
                //   );
                // } else {
                //   BlocProvider.of<ComplexBloc>(context).add(
                //     AddStaffComplexEvent(staffModel: extractStaffModel),
                //   );
                // }
              }
            },
          ),
        ],
      ),
    );
  }

  Widget screen1() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CustomTextField(
            initialValue: nameInit[0],
            title: "First Name",
            controller: _firstName,
            validate: Validate.withOption(isRequired: true),
          ),
          CustomTextField(
            initialValue: nameInit[1],
            title: "Middle Name",
            enabled: _isUpdate != true,
            controller: _middleName,
            validate: Validate.withOption(isRequired: false),
          ),
          CustomTextField(
            initialValue: nameInit[2],
            title: "Last Name",
            enabled: _isUpdate != true,
            controller: _lastName,
            validate: Validate.withOption(isRequired: true),
          ),
          CustomTextField(
            initialValue: widget.staffModel?.email,
            title: "Email Address",
            controller: _emailAddress,
            validate: Validate.withOption(
              isRequired: true,
              isEmail: true,
            ),
          ),
          CustomTextField(
            initialValue: widget.staffModel?.phoneNumStr,
            title: "Contact Number",
            controller: _contactNumber,
            validate: Validate.withOption(
              isRequired: true,
              isNumber: true,
            ),
          ),
          CustomAddressPicker(
            initialValue: widget.staffModel?.addressInfo,
            displayData: (l) => l.address,
            title: "Address",
            controller: _address,
            validate: Validate.withOption(isRequired: true),
          ),
        ],
      ),
    );
  }

  Widget screen2() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          newentitytimepicker.CustomDateTimePicker(
            controller: _dateofBirthController,
            dateTime: _dateOfBirth,
            title: 'Date Of Birth',
            mode: DateTimeMode.DATE,
            onChange: (x) => _dateOfBirth = x,
          ),
          newentitytimepicker.CustomDateTimePicker(
            controller: _startDateController,
            dateTime: _startDate,
            title: 'Start Date',
            mode: DateTimeMode.DATE,
            onChange: (x) => _startDate = x,
          ),
          newentitytimepicker.CustomDateTimePicker(
            controller: _endDateController,
            dateTime: _endDate,
            title: 'End Date',
            mode: DateTimeMode.DATE,
            onChange: (x) => _endDate = x,
          ),
          CustomImageUploader(
            initialValue: widget.staffModel?.photo1,
            path: 'images/staffImages/${widget.staffModel?.name}',
            controller: _uploadPhoto,
            validate: Validate.withOption(isRequired: true),
          ),
          CustomDropDownList<String>(
            initialValue: widget.staffModel?.allowedRoles?.first,
            title: "Select Role",
            controller: _selectRole,
            loadData: () async => staffRoleList,
            displayName: (x) => x,
            validate: Validate.withOption(isRequired: true),
          ),
          CustomTextField(
            initialValue: widget.staffModel?.timeInterval?.toString(),
            title: "Time Interval",
            controller: _timeInterval,
            validate: Validate.withOption(isRequired: true, isNumber: true),
          ),
          CustomSwitchWithTitle(
            title: "Location Update Required?",
            isEnabled: _locationUpdateRequirement,
            onChange: (x) {
              _locationUpdateRequirement = x;
            },
          ),
          CustomSwitchWithTitle(
            title: "Show as a Team Member",
            isEnabled: _showAsTeamMember,
            onChange: (x) {
              _showAsTeamMember = x;
            },
          ),
          CustomSwitchWithTitle(
            title: "Suspend Issue",
            isEnabled: _suspendIssue,
            onChange: (x) {
              _suspendIssue = x;
            },
          ),
        ],
      ),
    );
  }

  Widget screen3() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CustomTextField(
            initialValue: widget.staffModel?.educationalQualification,
            title: "Education",
            controller: _education,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomTextField(
            initialValue: widget.staffModel?.basicBio,
            title: "Basic Bio",
            controller: _basicBio,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomDropDownList<String>(
            initialValue: widget.staffModel?.category,
            title: "Category",
            controller: _category,
            loadData: () async => [
              "gardener",
              "driver",
              "maid",
              "manager",
            ],
            displayName: (x) => x,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
        ],
      ),
    );
  }

  Widget screen4() {
    return Column(
      children: <Widget>[
        CustomTextField(
          initialValue: widget.staffModel?.sickLeave?.toString(),
          title: "Sick Leaves",
          controller: _sickLeaves,
          validate: Validate.withOption(
            isRequired: true,
            isNumber: true,
          ),
        ),
        CustomTextField(
          initialValue: widget.staffModel?.paidLeave?.toString(),
          title: "Paid Leaves",
          controller: _paidLeaves,
          validate: Validate.withOption(
            isRequired: true,
            isNumber: true,
          ),
        ),
        CustomTextField(
          initialValue: widget.staffModel?.casualLeave?.toString(),
          title: "Casual Leaves",
          controller: _casualLeaves,
          validate: Validate.withOption(
            isRequired: true,
            isNumber: true,
          ),
        ),
      ],
    );
  }

  StaffModelx get extractStaffModel {
    var staff = _staffModelx;

    if (timelineIndex == 1) {
      staff = staff.copyWith(
        name: '${_firstName.text}+_+${_middleName.text}+_+${_lastName.text}',
        email: _emailAddress.text,
        phoneNumString: _contactNumber.text,
        addressInfo: _address.text,
      );
    } else if (timelineIndex == 2) {
      staff = staff.copyWith(
        dob: _dateOfBirth,
        startDate: _startDate,
        endDate: _endDate,
        photo1: _uploadPhoto.text,
        allowedRoles: [_selectRole.text],
        timeInterval: int.parse(_timeInterval.text),
        locationUpdateRequired: _locationUpdateRequirement,
        showAsTeamMember: _showAsTeamMember,
        isSuspended: _suspendIssue,
      );
    } else if (timelineIndex == 3) {
      staff = staff.copyWith(
        educationalQualification: _education.text,
        basicBio: _basicBio.text,
        category: _category.text,
      );
    } else if (timelineIndex == 4) {
      staff = staff.copyWith(
        sickLeave: int.parse(_sickLeaves.text),
        paidLeave: int.parse(_paidLeaves.text),
        casualLeave: int.parse(_casualLeaves.text),
      );
    }

    return staff;
  }

  List<String> get nameInit {
    return widget.staffModel?.name?.split("+_+")?.toList() ??
        [null, null, null];
  }
}

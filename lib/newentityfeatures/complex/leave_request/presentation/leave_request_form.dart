import 'package:complex/common/model/button_state.dart';
import 'package:complex/common/presentation.dart';
import 'package:complex/newentityfeatures/Models/leaverequest_model.dart';
// import 'package:complex/newentityfeatures/Models/ui/dynamic_complex_state.dart' as ui;

// import 'package:complex/data/models/response/user_response/user_model.dart';
// import 'package:complex/newentityfeatures/Models/user_model.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/data/screen_size.dart';
// import 'package:complex/newentityfeatures/Models/common/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
// import 'package:complex/common_models/common_model.dart' as model;
//import "package:asuka/asuka.dart" as asuka;
import 'package:complex/newentityfeatures/Models/leaverequest_model.dart';
import 'package:complex/common/widgets/date_time_picker_newentity.dart'
    as newentitytimepicker;
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../itembloc/bloc.dart' as itembloc;

class LeaveRequestForm extends StatefulWidget {
  final LeaveRequestModel leaveRequestModel;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;
  final int origintype;

  LeaveRequestForm(
      {@required this.leaveRequestModel,
      @required this.givenreloadaction,
      this.entitytype,
      this.entityid,
      this.origintype});

  @override
  _LeaveRequestFormState createState() => _LeaveRequestFormState();
}

class _LeaveRequestFormState extends State<LeaveRequestForm> {
  CustomTextFieldController _staffName = CustomTextFieldController();
  CustomTextFieldController _leaveReqType = CustomTextFieldController();
  CustomTextFieldController _periodLeaveType = CustomTextFieldController();
  CustomTextFieldController _reason = CustomTextFieldController();
  CustomTextFieldController _requestStatus = CustomTextFieldController();
  CustomTextFieldController _startDateController = CustomTextFieldController();
  CustomTextFieldController _endDateController = CustomTextFieldController();

  UserModel user;
  bool isManager;

  String _staffID;
  DateTime _startDate = DateTime.now().subtract(Duration(minutes: 1));
  DateTime _endDate = DateTime.now();
  bool _isUpdate = false;

  bool enabled = true;

  List<String> leaveRequest = [
    'SICK',
    'CASUAL',
    'PAID',
    'NOPAY',
  ];
  List<String> periodType = [
    'ONEQUATER',
    'HALFDAY',
    'FULLDAY',
  ];

  List<String> requestStatus = [
    'WAITINGFORAPPROVAL',
    'APPROVED',
    'REJECTED',
    'CANCELED',
  ];

  Future _initFiledValue() async {
    if (widget.leaveRequestModel == null) {
      enabled = true;
    } else {
      if (widget.origintype == 1) {
        if (widget.leaveRequestModel?.leavestatus ==
            LeaveRequestStatus.APPROVED) {
          enabled = false;
        } else if (widget.leaveRequestModel?.leavestatus ==
            LeaveRequestStatus.REJECTED) {
          enabled = true;
        }
      } else if (widget.origintype == 2) {
        enabled = false;
      }
    }

    if (widget.leaveRequestModel != null) {
      _isUpdate = true;
      _startDate = HelpUtil.formattedStringToDate(
          widget.leaveRequestModel.startDate.toString(), DateTimeMode.DATE);
      _startDate = HelpUtil.formattedStringToDate(
          widget.leaveRequestModel.endDate.toString(), DateTimeMode.DATE);

      Future.delayed(Duration(milliseconds: 80), () {
        _staffName.text = widget.leaveRequestModel.staffName;
        _staffID = widget.leaveRequestModel.staffID;
        _leaveReqType.text =
            widget.leaveRequestModel.leavreqType.toString().split('.').last;
        _periodLeaveType.text =
            widget.leaveRequestModel.plType.toString().split('.').last;
        _requestStatus.text =
            widget.leaveRequestModel.leavestatus.toString().split('.').last;
        _reason.text = widget.leaveRequestModel.rejectionReason;
      });
    } else {
      Future.delayed(Duration(milliseconds: 80), () {
        _staffName.text = user?.name;
        _staffID = user?.userID;
        _requestStatus.text = 'WAITINGFORAPPROVAL';
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
      create: (context) => itembloc.LeaveRequestBloc()
        ..add(
          itembloc.GetForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
            originType: widget.origintype,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Leave Request'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.LeaveRequestBloc,
            itembloc.LeaveRequestState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            EasyLoading.showSuccess("Item is Created/Saved");
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            user = state.user;
            isManager = state.isManager;

            _initFiledValue();
          }
        }, child:
            BlocBuilder<itembloc.LeaveRequestBloc, itembloc.LeaveRequestState>(
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
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomTextField(
            title: "Staff Name",
            controller: _staffName,
            enabled: false,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomDropDownList<String>(
            title: "Leave Request Type",
            enabled: enabled,
            controller: _leaveReqType,
            loadData: () async => leaveRequest,
            displayName: (x) => x,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomDropDownList<String>(
            title: "Period Leave Type",
            enabled: enabled,
            controller: _periodLeaveType,
            loadData: () async => periodType,
            displayName: (x) => x,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          newentitytimepicker.CustomDateTimePicker(
            controller: _startDateController,
            enabled: enabled,
            dateTime: _startDate,
            title: 'Start Date',
            mode: DateTimeMode.DATETIME,
            onChange: (x) => _startDate = x,
          ),
          newentitytimepicker.CustomDateTimePicker(
            controller: _endDateController,
            enabled: enabled,
            dateTime: _endDate,
            title: 'End Date',
            mode: DateTimeMode.DATETIME,
            onChange: (x) => _endDate = x,
          ),
          CustomDropDownList<String>(
            title: "Request Status",
            enabled: widget.origintype == 2 && _isUpdate,
            controller: _requestStatus,
            loadData: () async => requestStatus,
            displayName: (x) => x,
            validate: Validate.withOption(
              isRequired: true,
            ),
            onSelected: (s, i) {
              setState(() => _requestStatus.text = s);
            },
          ),
          if (_requestStatus.text == 'REJECTED')
            CustomTextField(
              title: "Reason for Rejection",
              controller: _reason,
              validate: Validate.withOption(
                isRequired: true,
              ),
            ),
          const SizedBox(
            height: 20,
          ),
          CustomActionButton(
            title: _isUpdate ? 'Update' : "Add",
            state: ButtonState.idle,
            gradient: C.bgGradient,
            padding: EdgeInsets.symmetric(vertical: height * 1.5),
            margin:
                EdgeInsets.symmetric(horizontal: width * 25, vertical: height),
            onTap: () {
              LeaveRequestModel _leaveRequestModel = LeaveRequestModel(
                endDate: _endDate,
                startDate: _startDate,
                staffID: _staffID,
                staffName: _staffName.text,
                leavestatus: LeaveRequestModel.stringToRequestStatus(
                    _requestStatus.text),
                rejectionReason: _reason.text,
                leavreqType: LeaveRequestModel.stringtoLeaveRequestType(
                    _leaveReqType.text),
                plType: LeaveRequestModel.stringtoPeriodLeaveType(
                    _periodLeaveType.text),
              );
              if (_isUpdate) {
                BlocProvider.of<itembloc.LeaveRequestBloc>(context).add(
                  itembloc.UpdateItem(
                    item: widget.leaveRequestModel.copyWith(
                      leavestatus: LeaveRequestModel.stringToRequestStatus(
                        _requestStatus.text,
                      ),
                    ),
                    entityid: widget.entityid,
                    entitytype: widget.entitytype,
                  ),
                );
              } else {
                BlocProvider.of<itembloc.LeaveRequestBloc>(context).add(
                  itembloc.CreateItem(
                    item: _leaveRequestModel,
                    entityid: widget.entityid,
                    entitytype: widget.entitytype,
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

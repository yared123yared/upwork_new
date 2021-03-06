import 'package:complex/common/widgets/custom_app_bar.dart';
import 'package:complex/common/widgets/custom_switchWithTitle.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';
import 'package:complex/newentityfeatures/Models/user_registration_model.dart';
import 'package:complex/newentityfeatures/Models/user_session_registration.dart';
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

class SessionRegistrationForm extends StatefulWidget {
  final UserSessionRegModel userSessionRegModel;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;
  final UserRegistrationModel userRegistrationModel;
  final String sessionTerm;
  final String cardNum;

  SessionRegistrationForm({
    this.userSessionRegModel,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
    this.userRegistrationModel,
    this.sessionTerm,
    this.cardNum,
  });

  @override
  _SessionRegistrationFormState createState() =>
      _SessionRegistrationFormState();
}

class _SessionRegistrationFormState extends State<SessionRegistrationForm> {
  CustomTextFieldController _idCardNumber = CustomTextFieldController();
  CustomTextFieldController _virtualRoomController =
      CustomTextFieldController();
  CustomTextFieldController _activeSession = CustomTextFieldController();
  CustomTextFieldController _allocatedTransportCost =
      CustomTextFieldController();
  CustomTextFieldController _feePlanType = CustomTextFieldController();
  CustomTextFieldController _feePlanPeriodType = CustomTextFieldController();
  CustomTextFieldController _startPeriod = CustomTextFieldController();
  CustomTextFieldController _feePlan = CustomTextFieldController();
  CustomTextFieldController _house = CustomTextFieldController();
  CustomTextFieldController _applicableDiscount = CustomTextFieldController();
  CustomTextFieldController _rollNumber = CustomTextFieldController();
  CustomTextFieldController _gradeController = CustomTextFieldController();
  bool _isActive = true;
  bool _isUpdate;
  bool _allocatedTransportRoute = false;

  ButtonState btnState;
  Future<List<String>> virtualRoomList;
  Future<List<FeePlanModel>> feePlanList;
  List<FeeData> feedatapaymentPeriods;
  List<OfferingWeeklySchedule> offeringScheduleList;
  List<OfferingModelGroup> offeringmodelgrouplist;
  List<String> activeSessions;
  List<String> gradelist;
  Future<List<OfferingModelGroup>> Function(String) offeringModelGroupfunc;

  List<OfferingWeeklySchedule> _selectedOfferingSchedules = [];

  List<OfferingModelGroup> _selectedOfferingModels = [];

  FeePlanModel _selectedFeePlan;

  UserSessionRegModel userSessionRegModel;


  Future<List<String>> Function(String grade) virtualroomfunc;
  Future<List<FeePlanModel>> Function(String grade) feePlanListfunc;


  bool _validate() {
    return Validate.validateAll([
      _idCardNumber,
      _virtualRoomController,
      _activeSession,
      if (_allocatedTransportRoute) _allocatedTransportCost,
      _feePlanType,
      _feePlanPeriodType,
      _startPeriod,
      _feePlan,
      _house,
      _applicableDiscount,
      _rollNumber,
    ]);
  }

  void _initFiledValue() {
    if (userSessionRegModel != null) {
      _selectedOfferingSchedules = userSessionRegModel.offeringSchedules;
      _isActive = userSessionRegModel.isActive ?? false;
      _allocatedTransportRoute =
          userSessionRegModel.allocatedTransportedRoute ?? false;
      Future.delayed(Duration(milliseconds: 80), () {
        setState(() {
          _activeSession.text = userSessionRegModel.activeSession;
          _allocatedTransportCost.text =
              _feePlanType.text = userSessionRegModel.feePlanType;
          _feePlanPeriodType.text = userSessionRegModel.feePLan;
          _startPeriod.text = userSessionRegModel.startPeriod;
          _feePlan.text = userSessionRegModel.feePLan;
          _virtualRoomController.text = userSessionRegModel.virtualRoom;
          _idCardNumber.text = userSessionRegModel.idCardNum;
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
      create: (context) => itembloc.SessionRegistrationBloc()
        ..add(
          itembloc.getForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
            cardNum: widget.cardNum,
            sessionTerm: widget.sessionTerm,
          ),
        ),
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Session Registration',
        ),
        body: BlocListener<itembloc.SessionRegistrationBloc,
            itembloc.SessionRegistrationState>(
          listener: (context, state) {
            if (state is itembloc.IsSaved) {
              EasyLoading.showSuccess("Item is Created/Saved");
              widget.givenreloadaction(true);
              // int cont = 0;
              // Navigator.of(context).popUntil((route) {
              //   return cont++ == 2;
              // });
              Navigator.of(context).pop(false);
            }

            if (state is itembloc.IsReadyForDetailsPage) {
              _isUpdate = state.update;
              virtualroomfunc = state.virtualRoomList;
              feePlanListfunc = state.feePlanList;

              offeringScheduleList = state.offeringScheduleList;
              activeSessions = state.activeSessions;
              offeringModelGroupfunc = state.offeringModelGroup;
              gradelist=state.gradelist;
              userSessionRegModel = state.userSessionRegModel;

              _initFiledValue();
            }
          },
          child: BlocBuilder<itembloc.SessionRegistrationBloc,
              itembloc.SessionRegistrationState>(
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

  Widget _blocBuilder(context) {
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
                      initialValue: widget.userRegistrationModel.idCardNum,
                      title: "ID Card Number",
                      controller: _idCardNumber,
                      validate: Validate.withOption(
                        isRequired: true,
                        isNumber: true,
                      ),
                    ),
                    CustomDropDownList<String>(
                      title: "Active Session Term",
                      controller: _activeSession,
                      loadData: () async => activeSessions,
                      displayName: (x) => x,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),

                    CustomDropDownList<String>(
                      title: "Grade",
                      controller: _gradeController,
                      loadData: () async => gradelist,
                      displayName: (x) => x,
                      onSelected: (value, index) => setState(() {

                        virtualRoomList=virtualroomfunc(value);
                        feePlanList=feePlanListfunc(value);

                        offeringModelGroupfunc(value).then(
                                (value) =>  offeringmodelgrouplist = value);

                      }),
                      validate: Validate.withOption(isRequired: true),
                    ),

                    CustomDropDownList<String>(
                      title: "Virtual Room",
                      enabled: _gradeController.text !=null,
                      controller: _virtualRoomController,
                      loadData: () async => virtualRoomList,

                      displayName: (x) => x,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomMultiSelect(
                      dialogType: MultiSelectDialogType.LIST,
                      buttonText: "Offering Schedule",
                      title: "Offering Schedules",
                      items: offeringmodelgrouplist
                          .map(
                            (va) =>
                                MultiSelectItem<String>(
                              label: va.getValueStr(),
                              value: va.offeringgroupid,
                            ),
                          )
                          .toList(),
                      onConfirm: (results) {
                        setState(() {
                          _selectedOfferingSchedules = [];
                          results.forEach((element) {
                            _selectedOfferingSchedules.add(element);
                          });
                        });
                      },
                      chipDisplay:
                          MultiSelectChipDisplay<OfferingWeeklySchedule>(
                        items: _selectedOfferingSchedules != null
                            ? _selectedOfferingSchedules
                                .map((e) =>
                                    MultiSelectItem<OfferingWeeklySchedule>(
                                        label: e.offeringgroupid, value: e))
                                .toList()
                            : [],
                        onTap: (value) {
                          setState(() {
                            _selectedOfferingSchedules.remove(value);
                          });
                        },
                      ),
                    ),
                    CustomSwitchWithTitle(
                      title: "Allocated Transport Route",
                      isEnabled: _allocatedTransportRoute,
                      onChange: (x) {
                        setState(() {
                          _allocatedTransportRoute = x;
                        });
                      },
                    ),
                    Visibility(
                      visible: _allocatedTransportRoute,
                      child: CustomTextField(
                        initialValue: userSessionRegModel
                            ?.allocatedTransportCost
                            ?.toString(),
                        title: "Allocated Transport Cost",
                        controller: _allocatedTransportCost,
                        validate: Validate.withOption(
                          isNumber: true,
                          isRequired: true,
                        ),
                      ),
                    ),
                    CustomDropDownList<FeePlanModel>(
                      title: "Fee Plan",
                      controller: _feePlan,
                      shouldReload: true,
                      loadData: () async => feePlanList ?? [],
                      displayName: (x) => x.feePlanName,
                      onSelected: (value, index) {
                        setState(() {
                          _selectedFeePlan = value;
                          _feePlanType.text = value.feePlanType;
                          _feePlanPeriodType.text = value.paymentPeriodType;
                          feedatapaymentPeriods =value.feeData;
                          _startPeriod.text = '';
                        });
                      },
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomDropDownList<FeeData>(
                      title: "Start Period",
                      controller: _startPeriod,
                      shouldReload: true,
                      enabled: _selectedFeePlan != null,
                      loadData:()async => feedatapaymentPeriods,
                      displayName: (x) => x.paymentPeriodName,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      enabled: false,
                      title: "Payment Period Type",
                      controller: _feePlanPeriodType,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      enabled: false,
                      title: "Fee Plan Type",
                      controller: _feePlanType,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      initialValue:
                          userSessionRegModel?.applicableDiscount?.toString(),
                      title: "Applicable Discount",
                      controller: _applicableDiscount,
                      validate: Validate.withOption(
                        isRequired: true,
                        isNumber: true,
                      ),
                    ),
                    CustomTextField(
                      initialValue: userSessionRegModel?.house,
                      title: "House",
                      controller: _house,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      initialValue: userSessionRegModel?.rollNumber?.toString(),
                      title: "Roll Number",
                      controller: _rollNumber,
                      validate: Validate.withOption(
                        isRequired: true,
                        isNumber: true,
                      ),
                    ),
                    CustomSwitchWithTitle(
                      title: "Is Active",
                      isEnabled: _isActive,
                      onChange: (x) {
                        _isActive = x;
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        CustomActionButton(
          // state: btnState,
          title: _isUpdate ? "Update" : "Add",
          color: Theme.of(context).primaryColor,
          onTap: () async {
            if (_validate()) {
              List<String> _offeringTaken = [];
              _selectedOfferingModels.forEach((element) {
                _offeringTaken.add(element.offeringgroupid);
              });
              UserSessionRegModel _userSessionRegModel = UserSessionRegModel(
                version: 1,
                idCardNum: _idCardNumber.text,
                activeSession: _activeSession.text,
                virtualRoom: _virtualRoomController.text,
                offeringSchedules: _selectedOfferingSchedules,
                allocatedTransportedRoute: _allocatedTransportRoute,
                allocatedTransportCost: 0,
                feePlanType: _feePlanType.text,
                feePlanPeriodType: _feePlanPeriodType.text,
                startPeriod: _startPeriod.text,
                feePLan: _feePlan.text,
                applicableDiscount: int.parse(_applicableDiscount.text),
                house: _house.text,
                rollNumber: int.parse(_rollNumber.text),
                offeringsTaken: _offeringTaken,
                isActive: _isActive,
              );

              if (_isUpdate) {
                BlocProvider.of<itembloc.SessionRegistrationBloc>(context).add(
                  itembloc.updateItemWithDiff(
                    olditem: userSessionRegModel,
                    newitem: _userSessionRegModel,
                    entityid: widget.entityid,
                    entitytype: widget.entitytype,
                  ),
                );
              } else {
                BlocProvider.of<itembloc.SessionRegistrationBloc>(context).add(
                  itembloc.createItem(
                    item: _userSessionRegModel,
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

import 'package:complex/common/helputil.dart';
import 'package:complex/common/widgets/custom_app_bar.dart';
import 'package:complex/common/widgets/custom_switchWithTitle.dart';
import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';
import 'package:complex/newentityfeatures/Models/user_session_registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:complex/common_models/common_model.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart' as helputil;
//import "package:asuka/asuka.dart" as asuka;
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../itembloc/bloc.dart' as itembloc;
import 'package:complex/newentityfeatures/Models/user_reg_fee_collection.dart';

class FeePaymentForm extends StatefulWidget {
  final UserRegFeeCollectionModel userRegFeeCollectionModel;
  final String entityid;
  final String entitytype;
  final String sessionTerm;
  final helputil.ReloadAction givenreloadaction;

  FeePaymentForm({
    @required this.userRegFeeCollectionModel,
    @required this.givenreloadaction,
    @required this.sessionTerm,
    this.entitytype,
    this.entityid,
  });

  @override
  _FeePaymentFormState createState() => _FeePaymentFormState();
}

class _FeePaymentFormState extends State<FeePaymentForm> {
  List<FeePlanModel> _feePlanList;
  List<UserSessionRegModel> _userSessionList;

  //

  CustomTextFieldController _idCardNumber = CustomTextFieldController();
  CustomTextFieldController _virtualRoomId = CustomTextFieldController();
  CustomTextFieldController _userName = CustomTextFieldController();
  CustomTextFieldController _feePlanType = CustomTextFieldController();
  CustomTextFieldController _feePlanName = CustomTextFieldController();
  CustomTextFieldController _paymentPeriodType = CustomTextFieldController();
  CustomTextFieldController _paymentPeriodName = CustomTextFieldController();

  CustomTextFieldController _startDateController = CustomTextFieldController();
  CustomTextFieldController _endDateController = CustomTextFieldController();

  DateTime _periodStartDate = DateTime.now();
  DateTime _periodEndDate = DateTime.now();

  bool paymentValidationPending;

  //

  CustomTextFieldController _feeAmount = CustomTextFieldController();
  CustomTextFieldController _transportFee = CustomTextFieldController();
  CustomTextFieldController _lateFeeAmount = CustomTextFieldController();
  CustomTextFieldController _lateFeeAmountAgreed = CustomTextFieldController();
  CustomTextFieldController _totalFeeAmount = CustomTextFieldController();
  CustomTextFieldController _otherAmount = CustomTextFieldController();
  CustomTextFieldController _totalPaymentMade = CustomTextFieldController();

  bool _validate() {
    bool valid = true;

    if (!_idCardNumber.isValid) valid = false;
    if (!_virtualRoomId.isValid) valid = false;
    if (!_userName.isValid) valid = false;
    if (!_feePlanType.isValid) valid = false;
    if (!_feePlanName.isValid) valid = false;
    if (!_paymentPeriodType.isValid) valid = false;
    if (!_paymentPeriodName.isValid) valid = false;

    // return valid;

    //
    // bool valid = true;

    if (!_feeAmount.isValid) valid = false;
    if (!_transportFee.isValid) valid = false;
    if (!_lateFeeAmount.isValid) valid = false;
    if (!_lateFeeAmountAgreed.isValid) valid = false;
    if (!_totalFeeAmount.isValid) valid = false;
    if (!_otherAmount.isValid) valid = false;
    if (!_totalPaymentMade.isValid) valid = false;

    return valid;
  }

  void _initFiledValue() {
    if (widget.userRegFeeCollectionModel != null) {
      _periodStartDate =
          widget.userRegFeeCollectionModel?.periodStartDay ?? DateTime.now();
      _periodEndDate =
          widget.userRegFeeCollectionModel?.periodEndDay ?? DateTime.now();
    }
    //
    Future.delayed(Duration(milliseconds: 80), () {
      if (widget.userRegFeeCollectionModel != null) {
        _idCardNumber.text = widget.userRegFeeCollectionModel.idCardNum;
        _userName.text = widget.userRegFeeCollectionModel.userName;
        _virtualRoomId.text = widget.userRegFeeCollectionModel.virtualRoomId;

        _feePlanType.text = widget.userRegFeeCollectionModel.feePlanType;
        _feePlanName.text = widget.userRegFeeCollectionModel.feePlaneName;
        _paymentPeriodType.text =
            widget.userRegFeeCollectionModel.paymentPeriodType;
        _paymentPeriodName.text =
            widget.userRegFeeCollectionModel.paymentPeriodName;
        _periodStartDate = widget.userRegFeeCollectionModel.periodStartDay;
        _periodEndDate = widget.userRegFeeCollectionModel.periodEndDay;

        _lateFeeAmount.text =
            widget.userRegFeeCollectionModel.lateFeeAmount?.toString();
        _lateFeeAmountAgreed.text =
            widget.userRegFeeCollectionModel.lateFeeAmountAgreed?.toString();
        _otherAmount.text =
            widget.userRegFeeCollectionModel.otherAmount?.toString();

        // _feeAmount.text =
        //     widget.userRegFeeCollectionModel?.feeAmount?.toString() ?? "0";
        _transportFee.text =
            widget.userRegFeeCollectionModel?.transportFee?.toString() ?? "0";
        _totalFeeAmount.text =
            widget.userRegFeeCollectionModel.totalFeeAmount?.toString();
        // _totalPaymentMade.text =
        //     widget.userRegFeeCollectionModel.totalpaymentmade?.toString() ??
        //         "0";
      }
      _feeAmount.text =
          widget.userRegFeeCollectionModel?.feeAmount?.toString() ?? "0";
      _totalPaymentMade.text =
          widget.userRegFeeCollectionModel?.totalpaymentmade?.toString() ?? "0";
      updateTotal();
    });
  }

  double updateTotal() {
    double total = double.tryParse(_feeAmount.text) ?? 0;
    total += double.tryParse(_otherAmount.text) ?? 0;
    total += double.tryParse(_transportFee.text) ?? 0;
    total += double.tryParse(_lateFeeAmountAgreed.text) ?? 0;
    _totalFeeAmount.text = total.toString();
  }

  @override
  void initState() {
    _initFiledValue();
    super.initState();
  }

  void filedFeePlanFields(
      /* FeePlanModel feePlan */ UserSessionRegModel user) async {
    FeePlanModel _feePlan;
    //  = user.feeplandata;
    _feePlanList.forEach((feePlan) {
      if (feePlan.feePlanName == user.feePLan) {
        _feePlan = feePlan;
      }
    });
    Future.delayed(Duration(milliseconds: 80), () {
      _idCardNumber.text = user.idCardNum;
      _userName.text = user.activeSession;
      _virtualRoomId.text = user.virtualRoom;

      _feePlanType.text = user.feePlanType;
      _feePlanName.text = user.feePLan;
      _paymentPeriodType.text = user.feePlanPeriodType;
      _paymentPeriodName.text = user.feePLan;
      _periodStartDate = _feePlan?.startDate;
      _periodEndDate = _feePlan?.endDate;
      // _feeAmount.text = _feePlan.feeData[1].fe;

      _transportFee.text = user?.allocatedTransportCost?.toString();
      int totalFeeAmount = 0;
      _feePlan?.feeData?.forEach((feeDataItem) {
        totalFeeAmount = feeDataItem.totalAmount + totalFeeAmount;
      });
      // _feeAmount.text = _feePlan?.feeData. ?? 0;
      _feeAmount.text = widget.userRegFeeCollectionModel?.feeAmount?.toString();
      _totalFeeAmount.text = totalFeeAmount?.toString();
      // _totalPaymentMade.text = user.feeplandata.
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => itembloc.FeePaymentBloc()
        ..add(
          itembloc.getForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
            userRegFeeCollectionModel: widget.userRegFeeCollectionModel,
          ),
        ),
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Fee Payment',
        ),
        body: BlocListener<itembloc.FeePaymentBloc, itembloc.FeePaymentState>(
            listener: (context, state) {
          if (state is itembloc.IsSaved) {
            EasyLoading.showSuccess("Item is Created/Saved");
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            _feePlanList = state.feePlanList ?? [];
            _userSessionList = state.userSessionList ?? [];

            _initFiledValue();
          }
        }, child:
                BlocBuilder<itembloc.FeePaymentBloc, itembloc.FeePaymentState>(
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
                    CustomDropDownList<String>(
                      enabled: !(widget?.userRegFeeCollectionModel != null),
                      displayName: (data) => data,
                      loadData: () async {
                        return _userSessionList
                            .map((userSession) => userSession.idCardNum)
                            .toList();
                        // return _feePlanList
                        //     .map((feePlan) => feePlan.feePlanName)
                        //     .toList();
                      },
                      // initialValue:
                      //     widget.userRegFeeCollectionModel?.feePlanType,
                      title: "User Session",
                      controller: _idCardNumber,
                      // controller: _feePlanType,
                      validate: Validate.withOption(isRequired: true),
                      onSelected: (item, index) {
                        filedFeePlanFields(_userSessionList[index]);
                        // filedFeePlanFields(_feePlanList[index]);
                      },
                    ),
                    CustomTextField(
                      enabled: false,
                      initialValue: widget.userRegFeeCollectionModel?.idCardNum,
                      title: "ID Card Number",
                      controller: _idCardNumber,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomTextField(
                      enabled: false,
                      title: "User Name",
                      initialValue: widget.userRegFeeCollectionModel?.userName,
                      controller: _userName,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomTextField(
                      enabled: false,
                      initialValue:
                          widget.userRegFeeCollectionModel?.virtualRoomId,
                      title: "Virtual Room ID",
                      controller: _virtualRoomId,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),

                    CustomTextField(
                      enabled: false,
                      initialValue:
                          widget.userRegFeeCollectionModel?.feePlanType,
                      title: "Fee Plan Type",
                      controller: _feePlanType,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomTextField(
                      enabled: false,
                      initialValue:
                          widget.userRegFeeCollectionModel?.feePlaneName,
                      title: "Fee Plan Name",
                      controller: _feePlanName,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomTextField(
                      enabled: false,
                      initialValue:
                          widget.userRegFeeCollectionModel?.paymentPeriodType,
                      title: "Payment Period Type",
                      controller: _paymentPeriodType,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomTextField(
                      enabled: false,
                      initialValue:
                          widget.userRegFeeCollectionModel?.paymentPeriodName,
                      title: "Payment Period Name",
                      controller: _paymentPeriodName,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomDateTimePicker(
                      controller: _startDateController,
                      enabled: false,
                      dateTime: _periodStartDate,
                      title: 'Period Start date',
                      mode: DateTimeMode.DATE,
                      onChange: (x) => _periodStartDate = x,
                    ),
                    CustomDateTimePicker(
                      controller: _endDateController,
                      enabled: false,
                      dateTime: _periodEndDate,
                      title: ' Period End Date',
                      mode: DateTimeMode.DATE,
                      onChange: (x) => _periodEndDate = x,
                    ),

                    // --
                    CustomTextField(
                      enabled:
                          !(widget?.userRegFeeCollectionModel?.closed ?? false),
                      initialValue: widget
                          ?.userRegFeeCollectionModel?.lateFeeAmount
                          ?.toString(),
                      title: "Late Fee Amount",
                      controller: _lateFeeAmount,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      enabled:
                          !(widget?.userRegFeeCollectionModel?.closed ?? false),
                      initialValue: widget
                          ?.userRegFeeCollectionModel?.lateFeeAmountAgreed
                          ?.toString(),
                      title: "Late Fee Amount Agreed",
                      controller: _lateFeeAmountAgreed,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      enabled:
                          !(widget?.userRegFeeCollectionModel?.closed ?? false),
                      initialValue: widget
                          ?.userRegFeeCollectionModel?.otherAmount
                          ?.toString(),
                      title: "Other Amount",
                      controller: _otherAmount,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      enabled: false,
                      initialValue: widget?.userRegFeeCollectionModel?.feeAmount
                          .toString(),
                      title: "Fee Amount",
                      controller: _feeAmount,
                      onChange: (text) => updateTotal(),
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      enabled: false,
                      initialValue: widget
                          ?.userRegFeeCollectionModel?.transportFee
                          .toString(),
                      title: "Transport Fee",
                      controller: _transportFee,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      enabled: false,
                      initialValue: widget
                          ?.userRegFeeCollectionModel?.totalFeeAmount
                          ?.toString(),
                      title: "Total Fee Amount",
                      controller: _totalFeeAmount,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      enabled: false,
                      initialValue: widget
                          ?.userRegFeeCollectionModel?.totalpaymentmade
                          ?.toString(),
                      title: "Total Payment Made",
                      controller: _totalPaymentMade,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomSwitchWithTitle(
                      enabled:
                          !(widget?.userRegFeeCollectionModel?.closed ?? false),
                      isEnabled: (widget?.userRegFeeCollectionModel
                              ?.paymentValidationPending ??
                          false),
                      onChange: (value) {
                        setState(() {
                          widget.userRegFeeCollectionModel
                              .paymentValidationPending = value;
                          paymentValidationPending = value;
                        });
                      },
                      title: "Payment Validation Pending",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomActionButton(
              fontSize: 13,
              state: ButtonState.idle,
              title: "Make\nPayment",
              color: Theme.of(context).primaryColor,
              onTap: () async {
                if (_validate()) {
                  UserRegFeeCollectionModel reg =
                      (widget.userRegFeeCollectionModel ??
                              UserRegFeeCollectionModel())
                          ?.copyWith(
                    lateFeeAmount: double.tryParse(_lateFeeAmount.text),
                    lateFeeAmountAgreed:
                        double.tryParse(_lateFeeAmountAgreed.text),
                    otherAmount: double.tryParse(_otherAmount.text),
                    totalfeeamount: double.tryParse(_totalFeeAmount.text),
                    idCardNum: _idCardNumber.text,
                    userName: _userName.text,
                    feeAmount: int.parse(_feeAmount.text),
                    totalPaymentMade: int.parse(_totalPaymentMade.text),
                    transportFee: int.parse(_transportFee.text),
                    virtualRoomId: _virtualRoomId.text,
                    feePlanType: _feePlanType.text,
                    feePlaneName: _feePlanName.text,
                    paymentPeriodType: _paymentPeriodType.text,
                    paymentPeriodName: _paymentPeriodName.text,
                    periodStartDay: _periodStartDate,
                    periodEndDay: _periodEndDate,
                    sessionTerm: widget.sessionTerm,
                    paymentValidationPending: paymentValidationPending,
                    closed: false,
                    // docID: null,
                  );

                  if (widget.userRegFeeCollectionModel != null) {
                    BlocProvider.of<itembloc.FeePaymentBloc>(context).add(
                      itembloc.updateItemWithDiff(
                        newitem: reg,
                        olditem: widget.userRegFeeCollectionModel,
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                      ),
                    );
                  } else {
                    BlocProvider.of<itembloc.FeePaymentBloc>(context).add(
                      itembloc.createItem(
                        item: reg,
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                      ),
                    );
                  }
                  // UserRegFeeByPeriodPayProcessingAddMasterEvent(
                  //   userRegFeeCollectionModel: reg,
                  // ),
                } else {
                  EasyLoading.showInfo("Please fill all fields");
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}

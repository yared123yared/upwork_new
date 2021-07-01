import 'package:complex/common/widgets/custom_image_uploader.dart';
import 'package:complex/common/widgets/custom_switchWithTitle.dart';
import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';
import 'package:complex/newentityfeatures/Models/school_owner_model.dart';
import 'package:complex/newentityfeatures/Models/user_session_registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:complex/common_models/common_model.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart' as helputil;
import "package:asuka/asuka.dart" as asuka;
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import '../itembloc/bloc.dart' as itembloc;
import 'package:complex/newentityfeatures/Models/user_reg_fee_collection.dart';

class PaymentDetailsForm extends StatefulWidget {
  final UserRegFeeCollectionModel userRegFeeCollectionModel;
  final PaymentDetails paymentDetails;
  final FeeData feeData;
  final String entityid;
  final String entitytype;
  final helputil.ReloadAction givenreloadaction;

  PaymentDetailsForm({
    @required this.userRegFeeCollectionModel,
    @required this.paymentDetails,
    @required this.feeData,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
  });

  @override
  _PaymentDetailsFormState createState() => _PaymentDetailsFormState();
}

class _PaymentDetailsFormState extends State<PaymentDetailsForm> {
  List<FeePlanModel> _feePlanList;
  List<UserSessionRegModel> _userSessionList;
  List<SchoolOwner> _membersList;

  CustomTextFieldController _amountReceivedDate = CustomTextFieldController();
  CustomTextFieldController _amountValidateDate = CustomTextFieldController();
  CustomTextFieldController _checkDetails = CustomTextFieldController();
  CustomTextFieldController _creditCardTransactionNum =
      CustomTextFieldController();
  CustomTextFieldController _image = CustomTextFieldController();
  // CustomTextFieldController _lateFeeIncluded = CustomTextFieldController();
  bool _lateFeeIncluded = false;
  CustomTextFieldController _paymentAmount = CustomTextFieldController();
  CustomTextFieldController _paymentDate = CustomTextFieldController();
  CustomTextFieldController _paymentMechanism = CustomTextFieldController();
  CustomTextFieldController _receivedByMemberId = CustomTextFieldController();
  CustomTextFieldController _receivedByMemberName = CustomTextFieldController();

  bool _validate() {
    bool valid = true;

    if (!_amountReceivedDate.isValid) valid = false;
    if (!_amountValidateDate.isValid) valid = false;
    if (!_checkDetails.isValid) valid = false;
    if (!_creditCardTransactionNum.isValid) valid = false;
    if (!_image.isValid) valid = false;
    if (!_paymentAmount.isValid) valid = false;
    if (!_paymentDate.isValid) valid = false;
    if (!_paymentMechanism.isValid) valid = false;
    if (!_receivedByMemberId.isValid) valid = false;
    if (!_receivedByMemberName.isValid) valid = false;

    return valid;
  }

  void _initFiledValue() {
    Future.delayed(Duration(milliseconds: 80), () {
      if (widget.paymentDetails != null) {
        _amountReceivedDate.text = widget.paymentDetails.amountReceivedDate;
        _amountValidateDate.text = widget.paymentDetails.amountValidateDate;
        _checkDetails.text = widget.paymentDetails.checkDetails;
        _creditCardTransactionNum.text =
            widget.paymentDetails.creditCardTransactionNum.toString();
        _image.text = widget.paymentDetails.image;

        _lateFeeIncluded = widget.paymentDetails.lateFeeIncluded;
        _paymentAmount.text = widget.paymentDetails.paymentAmount.toString();
        _paymentDate.text = widget.paymentDetails.paymentDate;
        _paymentMechanism.text = widget.paymentDetails.paymentMechanism;
        _receivedByMemberId.text = widget.paymentDetails.receivedByMemberId;
        _receivedByMemberName.text = widget.paymentDetails.receivedByMemberName;
      } else {
        _amountReceivedDate.text = widget.feeData.startDate.toString();
        _amountValidateDate.text = widget.feeData.endDate.toString();
        _paymentDate.text = widget.feeData.dueDate.toString();
        _paymentAmount.text = widget.feeData.totalAmount.toString();
      }
    });
  }

  @override
  void initState() {
    _initFiledValue();
    super.initState();
  }

  void fillPaymentDetails() {
    _amountReceivedDate.text = widget.paymentDetails.amountReceivedDate;
    _amountValidateDate.text = widget.paymentDetails.amountValidateDate;
    _checkDetails.text = widget.paymentDetails.checkDetails;
    _creditCardTransactionNum.text =
        widget.paymentDetails.creditCardTransactionNum.toString();
    _image.text = widget.paymentDetails.image;

    _lateFeeIncluded = widget.paymentDetails.lateFeeIncluded;
    _paymentAmount.text = widget.paymentDetails.paymentAmount.toString();
    _paymentDate.text = widget.paymentDetails.paymentDate;
    _paymentMechanism.text = widget.paymentDetails.paymentMechanism;
    _receivedByMemberId.text = widget.paymentDetails.receivedByMemberId;
    _receivedByMemberName.text = widget.paymentDetails.receivedByMemberName;
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
        appBar: AppBar(
          title: Text('Exam Form'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.FeePaymentBloc, itembloc.FeePaymentState>(
            listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            _userSessionList = state.userSessionList ?? [];
            _membersList = state.membersList ?? [];

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
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    CustomTextField(
                      controller: _amountReceivedDate,
                      title: 'Amount Received date',
                      enabled: false,
                      onTap: () async {
                        var date = await DatePicker.showPicker(
                          context,
                          pickerModel: DatePickerModel(),
                          showTitleActions: true,
                          // theme: DatePickerTheme()
                        );
                        if (date != null)
                          _amountReceivedDate.text = date
                              .toFormattedString(helputil.DateTimeMode.DATE);
                      },
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      controller: _amountValidateDate,
                      title: 'Amount validated date',
                      enabled: false,
                      onTap: () async {
                        var date = await DatePicker.showPicker(
                          context,
                          pickerModel: DatePickerModel(),
                          showTitleActions: true,
                          // theme: DatePickerTheme()
                        );
                        if (date != null) {
                          _amountValidateDate.text = date
                              .toFormattedString(helputil.DateTimeMode.DATE);
                        }
                      },
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      enabled:
                          !(widget?.userRegFeeCollectionModel?.closed ?? false),
                      initialValue:
                          widget?.paymentDetails?.checkDetails?.toString(),
                      title: "Check Details",
                      controller: _checkDetails,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      enabled:
                          !(widget?.userRegFeeCollectionModel?.closed ?? false),
                      initialValue: widget
                          ?.paymentDetails?.creditCardTransactionNum
                          ?.toString(),
                      title: "Credit card transaction",
                      controller: _creditCardTransactionNum,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomImageUploader(
                      // initialValue: widget.staffModeluserRegFeeCollectionModel?.photo1,
                      path:
                          'images/staffImages/${widget.userRegFeeCollectionModel?.userName}',
                      controller: _image,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomSwitchWithTitle(
                        title: "Late fee included",
                        enabled: !(widget?.userRegFeeCollectionModel?.closed ??
                            false),
                        isEnabled: _lateFeeIncluded,
                        onChange: (newValue) {
                          setState(() {
                            _lateFeeIncluded = newValue;
                          });
                        }),
                    CustomTextField(
                      enabled:
                          !(widget?.userRegFeeCollectionModel?.closed ?? false),
                      initialValue:
                          widget?.paymentDetails?.paymentAmount?.toString(),
                      title: "Payment Ammount",
                      controller: _paymentAmount,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      controller: _paymentDate,
                      title: 'Start Time',
                      enabled: false,
                      onTap: () async {
                        var date = await DatePicker.showPicker(
                          context,
                          pickerModel: DatePickerModel(),
                          showTitleActions: true,
                          // theme: DatePickerTheme()
                        );
                        if (date != null)
                          _paymentDate.text = date
                              .toFormattedString(helputil.DateTimeMode.DATE);
                      },
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      enabled:
                          !(widget?.userRegFeeCollectionModel?.closed ?? false),
                      initialValue:
                          widget?.paymentDetails?.paymentMechanism?.toString(),
                      title: "Payment Mechanism",
                      controller: _paymentMechanism,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomDropDownList<SchoolOwner>(
                      title: "Received by member name",
                      enabled:
                          !(widget?.userRegFeeCollectionModel?.closed ?? false),
                      initialValue: widget?.paymentDetails?.receivedByMemberName
                          ?.toString(),
                      controller: _receivedByMemberName,
                      loadData: () async => _membersList ?? [],
                      displayName: (x) => x.display,
                      onSelected: (owner, i) {
                        setState(() {
                          _receivedByMemberName.text = owner.display;
                          _receivedByMemberId.text = owner.id;
                        });
                      },
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomTextField(
                      enabled:
                          !(widget?.userRegFeeCollectionModel?.closed ?? false),
                      initialValue: widget?.paymentDetails?.receivedByMemberId
                          ?.toString(),
                      title: "Received by member id",
                      controller: _receivedByMemberId,
                      validate: Validate.withOption(isRequired: true),
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
              gradient: C.bgGradient,
              onTap: () async {
                if (_validate()) {
                  /*   var reg = widget.userRegFeeCollectionModel.copyWith(
                    lateFeeAmount: double.tryParse(_lateFeeAmount.text),
                    lateFeeAmountAgreed:
                        double.tryParse(_lateFeeAmountAgreed.text),
                    otherAmount: double.tryParse(_otherAmount.text),
                    totalfeeamount: double.tryParse(_totalFeeAmount.text),
                  );
                */
                  PaymentDetails paymentDetails =
                      (widget.paymentDetails ?? PaymentDetails()).copyWith(
                    amountReceivedDate: _amountReceivedDate.text,
                    amountValidateDate: _amountValidateDate.text,
                    checkDetails: _checkDetails.text,
                    creditCardTransactionNum:
                        double.parse(_creditCardTransactionNum.text),
                    image: _image.text,
                    lateFeeIncluded: _lateFeeIncluded,
                    paymentAmount: double.parse(_paymentAmount.text),
                    paymentDate: _paymentDate.text,
                    paymentMechanism: _paymentMechanism.text,
                    receivedByMemberId: _receivedByMemberId.text,
                    receivedByMemberName: _receivedByMemberName.text,
                  );
                  if (widget.paymentDetails != null) {
                    BlocProvider.of<itembloc.FeePaymentBloc>(context).add(
                      itembloc.UpdatePaymentDetailsWithDiff(
                        // item: reg,
                        item: widget.userRegFeeCollectionModel,
                        newPaymentDetails: paymentDetails,
                        oldPaymentDetails: widget.paymentDetails,
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                      ),
                    );
                  } else {
                    BlocProvider.of<itembloc.FeePaymentBloc>(context).add(
                      itembloc.AddPaymentDetails(
                        item: widget.userRegFeeCollectionModel,
                        paymentDetails: paymentDetails,
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                      ),
                    );
                  }
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}

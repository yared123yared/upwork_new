import 'package:complex/common/helputil.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';

import 'package:complex/newentityfeatures/Models/fee_item_groups_model.dart';
import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import "package:asuka/asuka.dart" as asuka;

import '../itembloc/bloc.dart' as itembloc;

class FeePlanForm extends StatefulWidget {
  final FeePlanModel feePlanModel;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;

  FeePlanForm({
    @required this.feePlanModel,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
  });

  @override
  _FeePlanFormState createState() => _FeePlanFormState();
}

class _FeePlanFormState extends State<FeePlanForm> {
  CustomTextFieldController _feePlanName = CustomTextFieldController();
  CustomTextFieldController _feePlanType = CustomTextFieldController();
  CustomTextFieldController _description = CustomTextFieldController();
  CustomTextFieldController _termName = CustomTextFieldController();
  CustomTextFieldController _paymentPeriodType = CustomTextFieldController();

  CustomTextFieldController _discountType = CustomTextFieldController();
  CustomTextFieldController _startDateController = CustomTextFieldController();
  CustomTextFieldController _endDateController = CustomTextFieldController();

  bool editable = true;
  List<String> sessions;
  List<PaymentPeriodInfo> paymentPeriods;
  List<FeeItemGroupsModel> feeItemsGroups;

  bool _update = false;

  DateTime _startDate;
  DateTime _endDate;
  DiscountType _selectedDiscount;

  List<FeeData> feeData = [];
  List<List<CustomTextFieldController>> feeDataControllers = [];
  // List<String> groupName = [];

  PaymentPeriodInfo _selectedPaymentPeriod;

  int numPeriods;

  int timelineIndex = -1;

  bool _validate() {
    if (_selectedDiscount == null) return false;
    if (timelineIndex == -1) {
      return Validate.validateAll([
        _termName,
        _feePlanName,
        _description,
        _discountType,
        _paymentPeriodType,
        _feePlanType,
        _startDateController,
        _endDateController,
      ]);
    } else if (timelineIndex >= 0) {
      if (feeDataControllers.isEmpty) {
        asuka.showSnackBar(SnackBar(
          content: Text("You must enter the periods of the payment"),
        ));
      }
      for (var controller in feeDataControllers[timelineIndex]) {
        if (controller.isValid != true) {
          asuka.showSnackBar(SnackBar(
            content: Text(
                "Please fill the required information for Period $timelineIndex"),
          ));
          return false;
        } else {
          return true;
        }
      }
    }
    return false;
  }

  @override
  void initState() {
    numPeriods = widget.feePlanModel?.feeData?.length;
    _update = widget.feePlanModel != null;
    _startDate = widget.feePlanModel?.startDate ?? DateTime.now();
    _endDate = widget.feePlanModel?.endDate ?? DateTime.now();
    feeData = widget.feePlanModel?.feeData ?? [];
    feeDataControllers = List.generate(
      feeData.length /*  * 7 */,
      (index) {
        return [
          for (var i = 0; i < 7; i++) CustomTextFieldController(),
        ];
      },
    );

    if (widget.feePlanModel?.discountType?.isNotEmpty == true)
      _selectedDiscount = widget.feePlanModel?.discountType?.first;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => itembloc.FeePlanModelBloc()
        ..add(
          itembloc.GetForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Fee Plan'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.FeePlanModelBloc,
            itembloc.FeePlanModelState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            editable = state.editable;
            sessions = state.sessions;
            paymentPeriods = state.paymentPeriods;
            feeItemsGroups = state.feeItemsGroups;
          }
        }, child:
            BlocBuilder<itembloc.FeePlanModelBloc, itembloc.FeePlanModelState>(
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: height * 4),
        Expanded(
          child: numPeriods == null || timelineIndex == -1
              ? screen1()
              : Stepper(
                  currentStep: timelineIndex,
                  controlsBuilder: (context, {onStepCancel, onStepContinue}) {
                    return Row(
                      children: [
                        SizedBox(),
                        SizedBox(),
                      ],
                    );
                  },
                  steps: [
                    for (int i = 0; i < numPeriods; i++)
                      Step(
                        title: Text("Period ${i + 1}"),
                        isActive: timelineIndex >= i,
                        content: screen2(context, i),
                      ),
                  ],
                ),
        ),
      ],
    );
  }

  Widget screen1() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: width * 6),
      child: Column(
        children: <Widget>[
          CustomTextField(
            enabled: !_update,
            initialValue: widget.feePlanModel?.feePlanName,
            title: "Fee Plan Name",
            controller: _feePlanName,
            validate: Validate.withOption(isRequired: true),
          ),
          CustomDropDownList<String>(
            enabled: !_update,
            displayName: (data) => data,
            loadData: () async => ['FeePlan', 'simpleFee'],
            initialValue: widget.feePlanModel?.feePlanType,
            title: "Fee plan type",
            controller: _feePlanType,
            validate: Validate.withOption(isRequired: true),
          ),
          CustomTextField(
            initialValue: widget.feePlanModel?.desc,
            title: "Description",
            isMultiLine: true,
            controller: _description,
            validate: Validate.withOption(isRequired: true),
          ),
          CustomDropDownList<String>(
            initialValue: widget.feePlanModel?.termName,
            loadData: () async => sessions,
            displayName: (data) => data,
            title: "Term Name",
            controller: _termName,
            validate: Validate.withOption(isRequired: true),
          ),
          CustomDropDownList<PaymentPeriodInfo>(
            title: "Payment Period Type",
            controller: _paymentPeriodType,
            loadData: () async => paymentPeriods,
            displayName: (x) => x.grpName,
            enabled: !_update,
            initialValue: widget.feePlanModel?.paymentPeriodType,
            onSelected: (value, index) => setState(
              () {
                _startDate = null;
                _endDate = null;

                if (_selectedPaymentPeriod != value) {
                  _selectedPaymentPeriod = value;

                  feeData = value.periodInfo
                      .map((e) => FeeData(
                            startDate: e.startDate,
                            endDate: e.endDate,
                            dueDate: e.dueDate,
                            paymentPeriodName: e.paymentPeriodName,
                            numDays: e.numDays,
                            feeScheduleName:
                                widget?.feePlanModel?.feeData?.map((fee) {
                                      return fee.feeScheduleName.first;
                                    }) ??
                                    [],
                          ))
                      .toList();

                  feeDataControllers = List.generate(
                    value.periodInfo.length /* * 7 */,
                    (index) {
                      return [
                        for (var i = 0; i < 7; i++) CustomTextFieldController(),
                      ];
                    },
                  );
                  numPeriods = value.periodInfo.length;
                }
              },
            ),
            validate: Validate.withOption(isRequired: true),
          ),
          CustomDropDownList<DiscountType>(
            title: "Discount Type",
            controller: _discountType,
            initialValue: () {
              if ((widget.feePlanModel?.discountType?.length ?? 0) != 0) {
                return "${widget.feePlanModel.discountType.first.sibling}%";
              }
            }(),
            loadData: () async => discountsList,
            displayName: (x) => "${x.sibling}%",
            validate: Validate.withOption(
              isRequired: true,
            ),
            onSelected: (value, index) {
              _selectedDiscount = value;
            },
          ),
          CustomDateTimePicker(
            controller: _startDateController,
            dateTime: _startDate,
            title: 'Start Date',
            mode: DateTimeMode.DATE,
            onChange: (x) => _startDate = x,
          ),
          CustomDateTimePicker(
            controller: _endDateController,
            dateTime: _endDate,
            title: 'End Date',
            mode: DateTimeMode.DATE,
            onChange: (x) => _endDate = x,
          ),
          CustomActionButton(
            state: ButtonState.idle,
            title: "Next",
            gradient: C.bgGradient,
            padding: EdgeInsets.symmetric(vertical: height * 1.5),
            margin: EdgeInsets.symmetric(
              horizontal: width * 25,
              vertical: height * 6,
            ),
            onTap: () {
              if (_validate()) {
                setState(() {
                  timelineIndex++;
                });
              }
            },
          ),
        ],
      ),
    );
  }

  Widget screen2(context, numberPeriod) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: width * 6),
      child: Column(
        children: [
          // for (int i = 0; i < feeData.length; i++)
          _buildItem(numberPeriod),
          CustomActionButton(
            state: ButtonState.idle,
            title: timelineIndex != numPeriods
                ? "NEXT"
                : _update
                    ? "EDIT"
                    : "ADD",
            gradient: C.bgGradient,
            padding: EdgeInsets.symmetric(
              vertical: height * 1.5,
            ),
            margin: EdgeInsets.symmetric(
              horizontal: width * 25,
              vertical: height * 6,
            ),
            onTap: () async {
              print(_validate());
              if (_validate()) {
                FeePlanModel _feePlanModel = FeePlanModel(
                  feePlanName: _feePlanName.text,
                  desc: _description.text,
                  termName: _termName.text,
                  startDate: _startDate,
                  endDate: _endDate,
                  feePlanType: _feePlanType.text,
                  paymentPeriodType: _paymentPeriodType.text,
                  discountType: [_selectedDiscount],
                  feeData: feeData,
                  grade: '',
                );
                if (timelineIndex < (numPeriods - 1)) {
                  setState(() {
                    timelineIndex++;
                  });
                  return;
                } else {
                  if (_update) {
                    BlocProvider.of<itembloc.FeePlanModelBloc>(context).add(
                      itembloc.UpdateItem(
                        item: _feePlanModel,
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                      ),
                    );
                  } else {
                    BlocProvider.of<itembloc.FeePlanModelBloc>(context).add(
                      itembloc.CreateItem(
                        item: _feePlanModel,
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                      ),
                    );
                  }
                }
              }
            },
          ),
        ],
      ),
    );
  }

  List<DiscountType> get discountsList {
    return [
      DiscountType(parent: 100, sibling: 0),
      DiscountType(parent: 100, sibling: 10),
      DiscountType(parent: 100, sibling: 20),
      DiscountType(parent: 100, sibling: 30),
      DiscountType(parent: 100, sibling: 40),
      DiscountType(parent: 100, sibling: 50),
      DiscountType(parent: 100, sibling: 60),
      DiscountType(parent: 100, sibling: 70),
    ];
  }

  Widget _buildItem(int i) {
    return
        // Expanded(child: StatefulBuilder(
        //   builder: (context, setState) => Card(
        //     elevation: 3,
        //     child: ExpansionTile(
        //       initiallyExpanded: i == 0,
        //       title: Text("Fee Item Data $i: ${feeData[i].paymentPeriodName}"),
        //       childrenPadding: const EdgeInsets.all(10),
        SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: width * 6),
      child: Column(
        children: [
          CustomDropDownList<PeriodInfo>(
            title: 'Payment Period Name',
            initialValue: feeData[i].paymentPeriodName,
            enabled: false,
            // controller: feeDataControllers[i * 7],
            controller: feeDataControllers[i][0],
            displayName: (data) => data.paymentPeriodName,
            validate: Validate.withOption(isRequired: true),
            loadData: () async => _selectedPaymentPeriod?.periodInfo ?? [],
          ),
          CustomDropDownList<FeeItemGroupsModel>(
            title: "Group Name",
            loadData: () async => feeItemsGroups,
            displayName: (data) =>
                (feeData[i]?.feeScheduleName?.length ?? 0) != 0
                    ? feeData[i].feeScheduleName.first
                    : data.scheduleName,
            controller: feeDataControllers[i][1],
            initialValue: (feeData[i]?.feeScheduleName?.length ?? 0) != 0
                ? feeData[i].feeScheduleName.first
                : null,
            onSelected: (value, index) {
              setState(() {
                feeData[i].totalAmount = value.feeItem.fold(
                  0,
                  (previousValue, element) =>
                      previousValue + element.amount + (element.tax ?? 0),
                );
                feeData[i].feeScheduleName = [value.scheduleName];
              });
            },
          ),
          CustomTextField(
            controller: feeDataControllers[i][2],
            title: "Fee Amount",
            initialValue: feeData[i].totalAmount?.toString(),
            icon: Icons.attach_money,
            enabled: false,
            syncInitial: true,
            onChange: (text) => feeData[i].totalAmount = int.tryParse(text),
            validate: Validate.withOption(isRequired: true, isInt: true),
          ),
          CustomTextField(
            controller: feeDataControllers[i][3],
            initialValue: feeData[i].numDays?.toString(),
            syncInitial: true,
            enabled: false,
            title: "Days Number",
            validate: Validate.withOption(isRequired: true, isInt: true),
          ),
          CustomDateTimePicker(
            title: 'Start Date',
            enabled: false,
            controller: feeDataControllers[i][4],
            onChange: (value) {},
            dateTime: feeData[i].startDate,
            autoSync: true,
            mode: DateTimeMode.DATE,
            validate: Validate.withOption(isRequired: true),
          ),
          CustomDateTimePicker(
            title: 'Du Date',
            enabled: false,
            autoSync: true,
            controller: feeDataControllers[i][5],
            onChange: (value) {},
            dateTime: feeData[i].dueDate,
            mode: DateTimeMode.DATE,
            validate: Validate.withOption(isRequired: true),
          ),
          CustomDateTimePicker(
            title: 'End Date',
            enabled: false,
            autoSync: true,
            controller: feeDataControllers[i][6],
            onChange: (value) {},
            dateTime: feeData[i].endDate,
            mode: DateTimeMode.DATE,
            validate: Validate.withOption(isRequired: true),
          ),
        ],
      ),
    );
    // ));
  }
}

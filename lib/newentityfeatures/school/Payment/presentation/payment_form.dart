import 'package:complex/common/helputil.dart';
import 'package:complex/common/widgets/custom_app_bar.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
//import "package:asuka/asuka.dart" as asuka;
import 'package:complex/common/helputil.dart' hide DateTimeMode;
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:logger/logger.dart';

import '../itembloc/bloc.dart' as itembloc;

class PaymentModelForm extends StatefulWidget {
  final PaymentPeriodInfo paymentPeriodInfo;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;

  PaymentModelForm({
    @required this.paymentPeriodInfo,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
  });

  @override
  _PaymentModelFormState createState() => _PaymentModelFormState();
}

class _PaymentModelFormState extends State<PaymentModelForm> {
  PaymentPeriodInfo paymentPeriodInfo;
  List<String> sessions;
  bool editable;

  List<DateTime> startDates = [];
  List<DateTime> endDates = [];
  List<DateTime> dueDates = [];

  CustomTextFieldController _sessionName = CustomTextFieldController();
  CustomTextFieldController _groupName = CustomTextFieldController();
  CustomTextFieldController _paymentPeriodNumber = CustomTextFieldController();

  ///each period info needs five controllers
  List<List<CustomTextFieldController>> controllers = [];
  List<PeriodInfo> periodInfoList = [];

  bool get edit => widget.paymentPeriodInfo != null;

  int numPeriods;

  int timelineIndex = -1;

  //todo
  bool _validate() {
    if (timelineIndex == -1) {
      return _sessionName.isValid &&
          _groupName.isValid &&
          _paymentPeriodNumber.isValid;
    }
    if (timelineIndex >= 0) {
      if (controllers.isEmpty) {
        EasyLoading.showInfo("You must enter the periods of the payment");
      }
      for (var controller in controllers[timelineIndex]) {
        if (controller.isValid != true) {
          EasyLoading.showInfo(
              "Please fill the required information for Period $timelineIndex");
          return false;
        }
      }
      return true;
    }
    return false;
  }

  void addPeriod() {
    if (!editable) return;

    setState(() {
      int periods = int.parse(_paymentPeriodNumber.text);
      startDates = List.generate(periods, (index) => DateTime.now());
      endDates = List.generate(periods, (index) => DateTime.now());
      dueDates = List.generate(periods, (index) => DateTime.now());
      for (var i = 0; i < periods; i++) {
        controllers.insert(i, []);
        periodInfoList.add(
          PeriodInfo(
            dueDate: DateTime.now(),
            endDate: DateTime.now(),
            startDate: DateTime.now(),
            numDays: 0,
            paymentPeriodName: '',
          ),
        );
        controllers[i].add(CustomTextFieldController());
        controllers[i].add(CustomTextFieldController());
        // for dates
        controllers[i].add(CustomTextFieldController());
        controllers[i].add(CustomTextFieldController());
        controllers[i].add(CustomTextFieldController());
      }
    });
  }

  void delet(int i) {
    if (!editable) return;

    setState(() {
      controllers.removeAt(i);
    });

    // setState(() {
    //   ///delete the controller at the index and the next to him
    //   controllers.removeAt(i * 2);
    //   controllers.removeAt(i * 2);

    //   periodInfoList.removeAt(i);
    // });
  }

  void _initFiledValue() {
    numPeriods = widget?.paymentPeriodInfo?.periodInfo?.length;
    if (widget.paymentPeriodInfo != null) {
      periodInfoList = widget.paymentPeriodInfo.periodInfo;
      startDates =
          List.generate(numPeriods, (index) => periodInfoList[index].startDate);
      endDates =
          List.generate(numPeriods, (index) => periodInfoList[index].endDate);
      dueDates =
          List.generate(numPeriods, (index) => periodInfoList[index].dueDate);

      controllers = List.generate(
        periodInfoList.length /* * 2 */,
        (i) {
          return [
            CustomTextFieldController(),
            CustomTextFieldController(),
            CustomTextFieldController(),
            CustomTextFieldController(),
            CustomTextFieldController(),
          ];
        },
      );

      Future.delayed(Duration(milliseconds: 80), () {
        _sessionName.text = widget.paymentPeriodInfo.sessionName;
        _groupName.text = widget.paymentPeriodInfo.grpName;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _initFiledValue();
  }

  @override
  Widget build(BuildContext context) {
    // _grade.text = widget.paymentPeriodInfo.grade;
    // print(_grade.text);
    return BlocProvider(
      create: (context) => itembloc.PaymentModelBloc()
        ..add(
          itembloc.getForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
          ),
        ),
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'payment period',
        ),
        body: BlocListener<itembloc.PaymentModelBloc,
            itembloc.PaymentModelState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            EasyLoading.showSuccess("Item is Created/Saved");
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            paymentPeriodInfo = state.paymentPeriodInfo;
            sessions = state.sessions;
            // editable = state.editable;
            editable = widget.paymentPeriodInfo == null ? true : false;
            // setState(() {
            //   _paymentPeriodNumber.text =
            //       widget.paymentPeriodInfo.periodInfo.length.toString();
            // });

            _initFiledValue();
          }
        }, child:
            BlocBuilder<itembloc.PaymentModelBloc, itembloc.PaymentModelState>(
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
                    // Step(
                    //   title: Text("Main info"),
                    //   isActive: true,
                    //   content: screen1(),
                    // ),
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
            enabled: editable,
            title: "Group Name",
            controller: _groupName,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomDropDownList<String>(
            enabled: editable,
            title: "Session Name",
            controller: _sessionName,
            loadData: () async => sessions,
            displayName: (x) => x,
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomTextField(
            enabled: editable,
            title: "Payment Period Number",
            controller: _paymentPeriodNumber,
            initialValue:
                widget?.paymentPeriodInfo?.periodInfo?.length?.toString(),
            validate: Validate.withOption(
              isRequired: true,
              isInt: true,
            ),
          ),

          // ExpansionList(),
          // for (var i = 0; i < periodInfoList.length; i++) buildPeriodInfoInput(i),
          // ListTile(
          //   title: Text("Add Peroid"),
          //   trailing: Icon(Icons.add),
          //   onTap: addPeriod,
          // ),

          CustomActionButton(
            state: ButtonState.idle,
            title: "Next",
            color: Theme.of(context).primaryColor,
            // padding: EdgeInsets.symmetric(vertical: height * 1.5),
            // margin: EdgeInsets.symmetric(
            //     horizontal: width * 25, vertical: height * 6),
            onTap: () async {
              if (_validate()) {
                if (widget.paymentPeriodInfo == null) {
                  setState(() {
                    numPeriods = int.parse(_paymentPeriodNumber.text);
                  });
                }
                addPeriod();
                // PaymentPeriodInfo _paymentPeriodInfo = PaymentPeriodInfo(
                //   sessionName: _sessionName.text,
                //   grpName: _groupName.text,
                //   periodInfo: periodInfoList,
                // );
                setState(() {
                  timelineIndex++;
                  // paymentPeriodInfo = _paymentPeriodInfo;
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
          // for (var i = 0; i < periodInfoList.length; i++)
          buildPeriodInfoInput(numberPeriod),
          CustomActionButton(
            state: ButtonState.idle,
            title: timelineIndex != numPeriods
                ? "NEXT"
                : edit
                    ? "EDIT"
                    : "ADD",
            gradient: C.bgGradient,
            // padding: EdgeInsets.symmetric(vertical: height * 1.5),
            // margin: EdgeInsets.symmetric(
            //     horizontal: width * 25, vertical: height * 6),
            onTap: () async {
              if (_validate()) {
                setState(() {});
                periodInfoList[numberPeriod] = PeriodInfo(
                  paymentPeriodName: controllers[numberPeriod][0].text,
                  numDays: int.parse(controllers[numberPeriod][1].text),
                  dueDate: dueDates[numberPeriod],
                  endDate: endDates[numberPeriod],
                  startDate: startDates[numberPeriod],
                );
                PaymentPeriodInfo _paymentPeriodInfo = PaymentPeriodInfo(
                  sessionName: _sessionName.text,
                  grpName: _groupName.text,
                  numperiods: int.parse(_paymentPeriodNumber.text),
                  periodInfo: periodInfoList,
                  isfrozen: false,
                );
                if (timelineIndex < (numPeriods - 1)) {
                  setState(() {
                    timelineIndex++;
                  });
                  return;
                } else {
                  if (edit) {
                    BlocProvider.of<itembloc.PaymentModelBloc>(context).add(
                      itembloc.updateItemWithDiff(
                        olditem: widget.paymentPeriodInfo,
                        newitem: _paymentPeriodInfo,
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                      ),
                    );
                  } else {
                    BlocProvider.of<itembloc.PaymentModelBloc>(context).add(
                      itembloc.createItem(
                        item: _paymentPeriodInfo,
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                      ),
                    );
                  }
                }
              } else {
                EasyLoading.showInfo("Please fill all fields");
              }
            },
          ),
          if (edit && editable)
            CustomActionButton(
              state: ButtonState.idle,
              title: "Delete",
              gradient: C.bgGradient,
              // isExpanded: false,
              // padding: EdgeInsets.symmetric(vertical: height * 1.5),
              // margin: EdgeInsets.symmetric(
              //   horizontal: width * 25,
              //   vertical: height * 6,
              // ),
              onTap: () {
                BlocProvider.of<itembloc.PaymentModelBloc>(context).add(
                  itembloc.deleteItem(
                    item: widget.paymentPeriodInfo,
                    entityid: widget.entityid,
                    entitytype: widget.entitytype,
                  ),
                );
              },
            ),
        ],
      ),
    );
  }

  Widget buildPeriodInfoInput(int i) {
    int daysBetween(DateTime from, DateTime to) {
      from = DateTime(from.year, from.month, from.day);
      to = DateTime(to.year, to.month, to.day);
      return (to.difference(from).inHours / 24).round();
    }

    String numDays;

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: width * 6),
      child: Column(
        children: [
          CustomTextField(
            enabled: editable,
            initialValue: periodInfoList[i].paymentPeriodName,
            title: "Payment Period Name",
            // onChange: (text) => periodInfoList[i].paymentPeriodName = text,
            // controller: controllers[i * 2],
            controller: controllers[i][0],
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomDateTimePicker(
            // controller: _startDateController,
            controller: controllers[i][2],
            enabled: editable,
            dateTime: periodInfoList[i].startDate,
            title: 'Start Date',
            mode: DateTimeMode.DATE,
            // onChange: (x) => periodInfoList[i].startDate = x,
            onChange: (x) => startDates[i] = x,
          ),
          CustomDateTimePicker(
            // controller: _endDateController,
            controller: controllers[i][3],
            enabled: editable,
            dateTime: periodInfoList[i].endDate,
            title: 'End Date',
            mode: DateTimeMode.DATE,
            onChange: (x) {
              endDates[i] = x;
              int duration = daysBetween(startDates[i], endDates[i]);
              Logger().i(duration);
              numDays = duration.toString();
              controllers[i][1].text = numDays;
            },
          ),
          CustomDateTimePicker(
            // controller: _dueDateController,
            controller: controllers[i][4],
            enabled: editable,
            dateTime: periodInfoList[i].dueDate,
            title: 'Due Date',
            mode: DateTimeMode.DATE,
            onChange: (x) => dueDates[i] = x,
          ),
          CustomTextField(
            enabled: false,
            title: "Number Of Days",
            initialValue: periodInfoList[i].numDays.toString(),
            // onChange: (text) => periodInfoList[i].numDays = int.tryParse(text),
            // controller: controllers[i * 2 + 1],
            controller: controllers[i][1],
            validate: Validate.withOption(
              isRequired: true,
              isNumber: true,
            ),
          ),
        ],
      ),
    );
  }
}

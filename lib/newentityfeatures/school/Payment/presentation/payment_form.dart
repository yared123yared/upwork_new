import 'package:complex/common/helputil.dart';
import 'package:complex/domain/lookup/lookup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import "package:asuka/asuka.dart" as asuka;
import 'package:complex/common/helputil.dart' hide DateTimeMode;

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

  CustomTextFieldController _sessionName = CustomTextFieldController();
  CustomTextFieldController _groupName = CustomTextFieldController();
  CustomTextFieldController _paymentPeriodNumber = CustomTextFieldController();

  CustomTextFieldController _startDateController = CustomTextFieldController();
  CustomTextFieldController _endDateController = CustomTextFieldController();
  CustomTextFieldController _dueDateController = CustomTextFieldController();

  ///each period info needs two controllers
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
        asuka.showSnackBar(SnackBar(
          content: Text("You must enter the periods of the payment"),
        ));
      }
      for (var controller in controllers[timelineIndex]) {
        if (controller.isValid != true) {
          asuka.showSnackBar(SnackBar(
            content: Text(
                "Please fill the required information for Period $timelineIndex"),
          ));
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
      for (var i = 0; i < int.parse(_paymentPeriodNumber.text); i++) {
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
      controllers = List.generate(
        periodInfoList.length /* * 2 */,
        (i) {
          return [
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
        appBar: AppBar(
          title: Text('Exam Form'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.PaymentModelBloc,
            itembloc.PaymentModelState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
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
            gradient: C.bgGradient,
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
          // buildPeriodInfoInput(numberPeriod),
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

  // Widget buildPeriodInfoInput(int i) {
  //   return SingleChildScrollView(
  //     padding: EdgeInsets.symmetric(horizontal: width * 6),
  //     child: Column(
  //       children: [
  //         CustomTextField(
  //           enabled: editable,
  //           initialValue: periodInfoList[i].paymentPeriodName,
  //           title: "Payment Period Name",
  //           onChange: (text) => periodInfoList[i].paymentPeriodName = text,
  //           // controller: controllers[i * 2],
  //           controller: controllers[i][0],
  //           validate: Validate.withOption(
  //             isRequired: true,
  //           ),
  //         ),
  //         CustomDateTimePicker(
  //           controller: _startDateController,
  //           enabled: editable,
  //           dateTime: periodInfoList[i].startDate,
  //           title: 'Start Date',
  //           mode: DateTimeMode.DATE,
  //           onChange: (x) => periodInfoList[i].startDate = x,
  //         ),
  //         CustomDateTimePicker(
  //           controller: _endDateController,
  //           enabled: editable,
  //           dateTime: periodInfoList[i].endDate,
  //           title: 'End Date',
  //           mode: DateTimeMode.DATE,
  //           onChange: (x) => periodInfoList[i].endDate = x,
  //         ),
  //         CustomDateTimePicker(
  //           controller: _dueDateController,
  //           enabled: editable,
  //           dateTime: periodInfoList[i].dueDate,
  //           title: 'Due Date',
  //           mode: DateTimeMode.DATE,
  //           onChange: (x) => periodInfoList[i].dueDate = x,
  //         ),
  //         CustomTextField(
  //           enabled: editable,
  //           title: "Number Of Days",
  //           initialValue: periodInfoList[i].numDays.toString(),
  //           onChange: (text) => periodInfoList[i].numDays = int.tryParse(text),
  //           // controller: controllers[i * 2 + 1],
  //           controller: controllers[i][1],
  //           validate: Validate.withOption(
  //             isRequired: true,
  //             isNumber: true,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}

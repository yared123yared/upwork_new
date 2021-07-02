import 'package:complex/common/widgets/custom_switchWithTitle.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/newentityfeatures/f_lookups/cf_lookuptypes/paymentperiodinfo/itembloc/bloc.dart'
    as itembloc;
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;

///this will used to create the payment and its periods
class PaymentPeriodInfoForm extends StatefulWidget {
  final PaymentPeriodInfo paymentPeriodInfo;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;
  PaymentPeriodInfoForm(
      {this.paymentPeriodInfo,
      @required this.entitytype,
      @required this.entityid,
      @required this.givenreloadaction});
  @override
  _PaymentPeriodInfoFormState createState() => _PaymentPeriodInfoFormState();
}

class _PaymentPeriodInfoFormState extends State<PaymentPeriodInfoForm> {
  List<String> sessions;
  itembloc.PaymentPeriodInfoBloc mbloc;

  CustomTextFieldController _sessionName = CustomTextFieldController();
  CustomTextFieldController _groupName = CustomTextFieldController();
  bool _frozen = false;
  CustomTextFieldController _numperiods = CustomTextFieldController();

  CustomTextFieldController _startDateController = CustomTextFieldController();
  CustomTextFieldController _endDateController = CustomTextFieldController();
  CustomTextFieldController _dueDateController = CustomTextFieldController();

  bool editable;

  ///each period info needs two controllers
  List<CustomTextFieldController> controllers = [];
  List<PeriodInfo> periodInfoList = [];

  bool get edit => widget.paymentPeriodInfo != null;

  //todo
  bool _validate() {
    if (_sessionName.isValid && _groupName.isValid) {
      if (controllers.isEmpty) {
        asuka.showSnackBar(SnackBar(
          content: Text("You must enter the periods of the payment"),
        ));
      }
      for (var controller in controllers) {
        if (controller.isValid != true) {
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
      periodInfoList.add(
        PeriodInfo(
          dueDate: DateTime.now(),
          endDate: DateTime.now(),
          startDate: DateTime.now(),
          numDays: 0,
          paymentPeriodName: '',
        ),
      );
      controllers.add(CustomTextFieldController());
      controllers.add(CustomTextFieldController());
    });
  }

  void delet(int i) {
    if (!editable) return;

    setState(() {
      ///delete the controller at the index and the next to him
      controllers.removeAt(i * 2);
      controllers.removeAt(i * 2);

      periodInfoList.removeAt(i);
    });
  }

  void _initFiledValue() {
    if (widget.paymentPeriodInfo != null) {
      periodInfoList = widget.paymentPeriodInfo.periodInfo;
      controllers = List.generate(
        periodInfoList.length * 2,
        (i) => CustomTextFieldController(),
      );
      if (widget.paymentPeriodInfo.isfrozen) editable = false;
      Future.delayed(Duration(milliseconds: 80), () {
        _sessionName.text = widget.paymentPeriodInfo.sessionName;
        _groupName.text = widget.paymentPeriodInfo.grpName;
        _frozen = widget.paymentPeriodInfo.isfrozen;

        _numperiods.text = widget.paymentPeriodInfo.numperiods.toString();
      });
    }
    editable = true;
  }

  @override
  void initState() {
    super.initState();
    mbloc = itembloc.PaymentPeriodInfoBloc();
    mbloc.add(itembloc.GetForNewEntry(
        entitytype: widget.entitytype, entityid: widget.entityid));
    _initFiledValue();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: mbloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Payment Period'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.PaymentPeriodInfoBloc,
            itembloc.PaymentPeriodInfoState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }
        }, child: BlocBuilder<itembloc.PaymentPeriodInfoBloc,
            itembloc.PaymentPeriodInfoState>(builder: (context, state) {
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
            setState(() {
              sessions = state.sessionterms;
            });
            return _blocBuilder(context);
          }

          return Center(child: Text('Empty'));
        })),
      ),
    );
  }

  ///todo add delete period ability
  @override
  Widget _blocBuilder(context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: width * 6),
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
          title: "Group Name",
          controller: _groupName,
          validate: Validate.withOption(
            isRequired: true,
          ),
        ),
        CustomTextField(
          title: "Number of Student",
          controller: _numperiods,
          validate: Validate.withOption(
            isRequired: true,
            isInt: true,
          ),
        ),
        CustomSwitchWithTitle(
          title: "Is Active?",
          enabled: editable,
          isEnabled: _frozen,
          onChange: (x) {
            _frozen = x;
          },
        ),
        // ExpansionList(),
        // for (var i = 0; i < periodInfoList.length; i++) buildPeriodInfoInput(i),
        ListTile(
          title: Text("Add Peroid"),
          trailing: Icon(Icons.add),
          onTap: addPeriod,
        ),

        CustomActionButton(
          state: ButtonState.idle,
          title: edit ? "EDITE" : "ADD",
          gradient: C.bgGradient,
          // padding: EdgeInsets.symmetric(vertical: height * 1.5),
          // margin: EdgeInsets.symmetric(
          //     horizontal: width * 25, vertical: height * 6),
          onTap: () async {
            if (_validate()) {
              PaymentPeriodInfo _paymentPeriodInfo = PaymentPeriodInfo(
                sessionName: _sessionName.text,
                grpName: _groupName.text,
                periodInfo: periodInfoList,
                isfrozen: false,
                numperiods: 0,
              );
              if (edit) {
                mbloc.add(itembloc.UpdateItemWithDiff(
                    newitem: _paymentPeriodInfo,
                    olditem: widget.paymentPeriodInfo,
                    entityid: widget.entityid,
                    entitytype: widget.entitytype));
              } else {
                mbloc.add(itembloc.CreateItem(
                    item: _paymentPeriodInfo,
                    entityid: widget.entityid,
                    entitytype: widget.entitytype));
              }
            }
          },
        ),
      ],
    );
  }

  // ExpansionTile buildPeriodInfoInput(int i) {
  //   return ExpansionTile(
  //     initiallyExpanded: true,
  //     title: Text("Period $i"),
  //     trailing: IconButton(
  //       icon: Icon(Icons.close),
  //       onPressed: () => delet(i),
  //     ),
  //     maintainState: true,
  //     children: [
  //       CustomTextField(
  //         enabled: editable,
  //         initialValue: periodInfoList[i].paymentPeriodName,
  //         title: "Payment Period Name",
  //         onChange: (text) => periodInfoList[i].paymentPeriodName = text,
  //         controller: controllers[i * 2],
  //         validate: Validate.withOption(
  //           isRequired: true,
  //         ),
  //       ),
  //       newentitytimepicker.CustomDateTimePicker(
  //         controller: _startDateController,
  //         enabled: editable,
  //         dateTime: periodInfoList[i].startDate,
  //         title: 'Start Date',
  //         mode: DateTimeMode.DATE,
  //         onChange: (x) => periodInfoList[i].startDate = x,
  //       ),
  //       newentitytimepicker.CustomDateTimePicker(
  //         controller: _endDateController,
  //         enabled: editable,
  //         dateTime: periodInfoList[i].endDate,
  //         title: 'End Date',
  //         mode: DateTimeMode.DATE,
  //         onChange: (x) => periodInfoList[i].endDate = x,
  //       ),
  //       newentitytimepicker.CustomDateTimePicker(
  //         controller: _dueDateController,
  //         enabled: editable,
  //         dateTime: periodInfoList[i].dueDate,
  //         title: 'Due Date',
  //         mode: DateTimeMode.DATE,
  //         onChange: (x) => periodInfoList[i].dueDate = x,
  //       ),
  //       CustomTextField(
  //         enabled: editable,
  //         title: "Number Of Days",
  //         initialValue: periodInfoList[i].numDays.toString(),
  //         onChange: (text) => periodInfoList[i].numDays = int.tryParse(text),
  //         controller: controllers[i * 2 + 1],
  //         validate: Validate.withOption(
  //           isRequired: true,
  //           isNumber: true,
  //         ),
  //       ),
  //     ],
  //   );
  // }
}

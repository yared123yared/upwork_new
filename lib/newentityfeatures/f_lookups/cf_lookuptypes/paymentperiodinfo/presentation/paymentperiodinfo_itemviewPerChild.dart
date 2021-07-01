import 'package:complex/domain/lookup/lookup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';

import 'package:complex/newentityfeatures/f_lookups/cf_lookuptypes/paymentperiodinfo/itembloc/bloc.dart'
    as itembloc;
import 'package:complex/data/screen_size.dart';

import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;
import 'package:complex/common/widgets/date_time_picker_newentity.dart'
    as newentitytimepicker;

///this will used to create the payment and its periods
class PeriodInfoForm extends StatefulWidget {
  final PeriodInfo periodinfo;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;
  final bool iseditable;
  PeriodInfoForm(
      {this.periodinfo,
      @required this.entitytype,
      @required this.entityid,
      @required this.givenreloadaction,
      this.iseditable});
  @override
  _PeriodInfoFormState createState() => _PeriodInfoFormState();
}

class _PeriodInfoFormState extends State<PeriodInfoForm> {
  List<String> sessions;
  itembloc.PaymentPeriodInfoBloc mbloc;

  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now();
  DateTime _dueDate = DateTime.now();
  CustomTextFieldController _periodname = CustomTextFieldController();
  CustomTextFieldController _numofdays = CustomTextFieldController();
  CustomTextFieldController _startDateController = CustomTextFieldController();
  CustomTextFieldController _endDateController = CustomTextFieldController();
  CustomTextFieldController _dueDateController = CustomTextFieldController();

  bool editable;

  //todo
  bool _validate() {
    return false;
  }

  void _initFiledValue() {
    if (widget.periodinfo != null) editable = false;
    Future.delayed(Duration(milliseconds: 80), () {
      _periodname.text = widget.periodinfo.paymentPeriodName;
      _numofdays.text = widget.periodinfo.numDays.toString();
      _startDate = widget.periodinfo.startDate;
      _endDate = widget.periodinfo.endDate;
      ;
      _dueDate = widget.periodinfo.dueDate;
    });
  }

  @override
  void initState() {
    super.initState();
    mbloc = itembloc.PaymentPeriodInfoBloc();

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
          title: "Payment Period Name",
          controller: _periodname,
          validate: Validate.withOption(
            isRequired: true,
          ),
        ),
        newentitytimepicker.CustomDateTimePicker(
          controller: _startDateController,
          enabled: editable,
          dateTime: _startDate,
          title: 'Start Date',
          mode: DateTimeMode.DATE,
          onChange: (value) {},
        ),
        newentitytimepicker.CustomDateTimePicker(
          controller: _endDateController,
          enabled: editable,
          dateTime: _endDate,
          title: 'End Date',
          mode: DateTimeMode.DATE,
          onChange: (value) {},
        ),
        newentitytimepicker.CustomDateTimePicker(
          controller: _dueDateController,
          enabled: editable,
          dateTime: _dueDate,
          title: 'Due Date',
          mode: DateTimeMode.DATE,
          onChange: (value) {},
        ),
        CustomTextField(
          enabled: editable,
          title: "Number Of Days",
          controller: _numofdays,
          validate: Validate.withOption(
            isRequired: true,
            isNumber: true,
          ),
        ),
      ],
    );
  }
}

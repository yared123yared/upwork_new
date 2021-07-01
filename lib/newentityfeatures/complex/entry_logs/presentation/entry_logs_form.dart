import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:complex/newentityfeatures/Models/entry_logs_model.dart';

import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;
import 'package:complex/newentityfeatures/Models/assignment_model.dart';
import 'package:complex/common/widgets/date_time_picker_newentity.dart'
    as newentitytimepicker;

import '../itembloc/bloc.dart' as itembloc;
import '../listbloc/bloc.dart' as listbloc;
import 'package:complex/newentityfeatures/Models/qrcode_model.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_model.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';

class EntryLogsForm extends StatefulWidget {
  final EntryLogModel entryLogModel;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;

  EntryLogsForm({
    @required this.entryLogModel,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
  });

  @override
  _EntryLogsFormState createState() => _EntryLogsFormState();
}

class _EntryLogsFormState extends State<EntryLogsForm> {
  CustomTextFieldController _session = CustomTextFieldController();
  CustomTextFieldController _grade = CustomTextFieldController();
  CustomTextFieldController _virtualRoom = CustomTextFieldController();

  CustomTextFieldController _name = CustomTextFieldController();
  CustomTextFieldController _id = CustomTextFieldController();
  CustomTextFieldController _serviceId = CustomTextFieldController();
  CustomTextFieldController _type = CustomTextFieldController();
  CustomTextFieldController _startDateController = CustomTextFieldController();
  CustomTextFieldController _endDateController = CustomTextFieldController();

  String _securityId;
  DateTime _startDate;
  DateTime _endDate;

  bool haveAccess;
  String userID;

  @override
  void initState() {
    // _startDate = widget.entryLogModel?.startdate ?? DateTime.now();
    // _endDate = widget.entryLogModel?.enddate ?? DateTime.now();
    _startDate = DateTime.now();
    _endDate = DateTime.now();

    Future.delayed(Duration(milliseconds: 60), () {
      _name.text = widget.entryLogModel?.identity;
      _id.text = widget.entryLogModel?.userId;
      _serviceId.text = widget.entryLogModel?.servicerequid;
      _type.text = widget.entryLogModel?.entrytype;

      // _securityId = BlocProvider.of<MainAppBloc>(context).user.userID;
      _securityId = userID;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => itembloc.EntryLogsBloc()
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
        body: BlocListener<itembloc.EntryLogsBloc, itembloc.EntryLogsState>(
            listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            haveAccess = state.haveAccess;
            userID = state.userId;

            // _initFiledValue();
          }
        }, child: BlocBuilder<itembloc.EntryLogsBloc, itembloc.EntryLogsState>(
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
    return ListView(
      children: [
        // CustomTextField(
        //   title: 'Id',
        //   controller: _id,
        //   enabled: false,
        // ),
        CustomTextField(
          title: 'Identity',
          controller: _name,
          enabled: false,
        ),
        CustomDropDownList<String>(
          title: 'Type',
          controller: _type,
          // loadData: () async => [widget.entryLogModel?.entrytype],
          loadData: () async => widget.entryLogModel?.entrytype != null
              ? [widget.entryLogModel?.entrytype]
              : [],
          displayName: (data) => data,
        ),
        CustomTextField(
          title: 'Service Id',
          controller: _serviceId,
          enabled: false,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: newentitytimepicker.CustomDateTimePicker(
            controller: _startDateController,
            title: "Start Date",
            onChange: (value) => setState(() => _startDate = value),
            dateTime: _startDate,
            mode: DateTimeMode.DATETIME,
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: newentitytimepicker.CustomDateTimePicker(
            controller: _endDateController,
            title: "End Date",
            onChange: (value) => setState(() => _endDate = value),
            dateTime: _endDate,
            mode: DateTimeMode.DATETIME,
            // enabled: false,
          ),
        ),
        Divider(),
        Container(
          // height:60,
          child: Row(
            children: [
              Expanded(
                child: CustomActionButton(
                  gradient: C.bgGradient,
                  isExpanded: true,
                  title: "Entry In",
                  onTap: () {
                    BlocProvider.of<itembloc.EntryLogsBloc>(context).add(
                      itembloc.createItem(
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                        item: EntryLogModel(
                          userId: widget.entryLogModel?.userId,
                          identity: widget.entryLogModel?.identity,
                          timeDate: _startDate,
                          loggedInSecurity: _securityId,
                          logType: _type.text,
                          entrytype: "in",
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: CustomActionButton(
                  gradient: C.bgGradient,
                  isExpanded: true,
                  title: "Entry Out",
                  onTap: () {
                    BlocProvider.of<itembloc.EntryLogsBloc>(context).add(
                      itembloc.createItem(
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                        item: EntryLogModel(
                          userId: widget.entryLogModel?.userId,
                          identity: widget.entryLogModel?.identity,
                          timeDate: _endDate,
                          logType: _type.text,
                          loggedInSecurity: _securityId,
                          entrytype: 'out',
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

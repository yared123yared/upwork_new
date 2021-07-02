import 'package:complex/common/widgets/custom_switchWithTitle.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/newentityfeatures/f_lookups/cf_lookuptypes/sessiontermmodel/itembloc/bloc.dart'
    as itembloc;
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;
import 'package:complex/common/widgets/date_time_picker_newentity.dart'
    as newentitytimepicker;

class SessionTermForm extends StatefulWidget {
  final SessionTerm sessionTermModel;
  final ButtonState buttonState;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;
  SessionTermForm(
      {@required this.sessionTermModel,
      this.buttonState,
      @required this.entitytype,
      @required this.entityid,
      @required this.givenreloadaction});
  @override
  _SessionTermFormState createState() => _SessionTermFormState();
}

class _SessionTermFormState extends State<SessionTermForm> {
  itembloc.SessionTermModelBloc mbloc;
  CustomTextFieldController _sessionTermName = CustomTextFieldController();

  CustomTextFieldController _startDateController = CustomTextFieldController();
  CustomTextFieldController _endDateController = CustomTextFieldController();

  DateTime _endDate = DateTime.now();
  DateTime _startDate = DateTime.now();
  bool _isActive = true;
  bool _isUpdate = false;
  bool _validate() {
    return _sessionTermName.isValid;
  }

  Future _initFiledValue() async {
    if (widget.sessionTermModel != null) {
      _isUpdate = true;
      _endDate = widget.sessionTermModel.endDate;
      _startDate = widget.sessionTermModel.startDate;
      Future.delayed(Duration(milliseconds: 80), () {
        _sessionTermName.text = widget.sessionTermModel.termName;
        _isActive = widget.sessionTermModel.isActive;
        //_selectEndingDate.text =
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mbloc = itembloc.SessionTermModelBloc();
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
          title: Text('Exam Form'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.SessionTermModelBloc,
            itembloc.SessionTermModelState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }
        }, child: BlocBuilder<itembloc.SessionTermModelBloc,
            itembloc.SessionTermModelState>(builder: (context, state) {
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

  @override
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
                      title: "Session Term Name",
                      enabled: !_isUpdate,
                      controller: _sessionTermName,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    newentitytimepicker.CustomDateTimePicker(
                      controller: _startDateController,
                      dateTime: _startDate,
                      enabled: !_isUpdate,
                      title: 'Start Date',
                      mode: DateTimeMode.DATE,
                      onChange: (x) => _startDate = x,
                    ),
                    newentitytimepicker.CustomDateTimePicker(
                      controller: _endDateController,
                      dateTime: _endDate,
                      enabled: !_isUpdate,
                      title: 'End Date',
                      mode: DateTimeMode.DATE,
                      onChange: (x) => _endDate = x,
                    ),
                    CustomSwitchWithTitle(
                      title: "Is Active?",
                      enabled: !_isUpdate,
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
        if (!_isUpdate)
          CustomActionButton(
            state: widget.buttonState,
            title: "Submit",
            gradient: C.bgGradient,
            padding: EdgeInsets.symmetric(vertical: height * 1.5),
            margin: EdgeInsets.symmetric(
                horizontal: width * 25, vertical: height * 6),
            onTap: () {
              print('add userSession');
              if (widget.buttonState == ButtonState.idle) {
                if (_validate()) {
                  if (_startDate.isBefore(_endDate)) {
                    SessionTerm _sessionTermModel = SessionTerm(
                      startDate: _startDate,
                      endDate: _endDate,
                      termName: _sessionTermName.text,
                      isActive: _isActive,
                    );
                    mbloc.add(itembloc.CreateItem(
                        item: _sessionTermModel,
                        entityid: widget.entityid,
                        entitytype: widget.entitytype));
                  } else {
                    asuka.showSnackBar(SnackBar(
                      content: Text(
                        "End date should be greater than Start date",
                        style:
                            TextStyle(fontFamily: 'Merriweather', color: C.red),
                      ),
                    ));
                  }
                }
              }
            },
          ),
      ],
    );
  }
}

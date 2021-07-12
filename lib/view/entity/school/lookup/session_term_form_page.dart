import 'package:complex/application/lookup_bloc/lookup_bloc.dart';
import 'package:complex/common/widgets/custom_app_bar.dart';
import 'package:complex/common/widgets/custom_switchWithTitle.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:complex/view/widget/error_dialogue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
// import 'package:complex/newentityfeatures/f_lookups/cf_lookuptypes/sessiontermmodel/itembloc/bloc.dart'
//     as itembloc;
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
//import "package:asuka/asuka.dart" as asuka;
import 'package:complex/common/widgets/date_time_picker_newentity.dart'
    as newentitytimepicker;
import 'package:flutter_easyloading/flutter_easyloading.dart';

class SessionTermFormPage extends StatefulWidget {
  final SessionTerm sessionTermModel;

  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;
  SessionTermFormPage(
      {@required this.sessionTermModel,
      @required this.entitytype,
      @required this.entityid,
      @required this.givenreloadaction});
  @override
  _SessionTermFormPageState createState() => _SessionTermFormPageState();
}

class _SessionTermFormPageState extends State<SessionTermFormPage> {
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

    _initFiledValue();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LookupBloc, LookupState>(listener: (context, state) {
      state.failure.fold(() {
        if (state.isLoading) {
          EasyLoading.show(status: 'Loading..');
        } else if (state.message.isNotEmpty) {
          EasyLoading.showInfo(state.message);
        } else {
          EasyLoading.dismiss();
        }
      },
          (a) => showDialog(
              context: context,
              builder: (context) => ErrorDialogue(failure: a)));
    }, builder: (context, state) {
      return Scaffold(
        appBar: CustomAppBar(
          title: "Session Term",
        ),
        body: Column(
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
                state: ButtonState.idle,
                title: "Submit",
                gradient: C.bgGradient,
                padding: EdgeInsets.symmetric(vertical: height * 1.5),
                margin: EdgeInsets.symmetric(
                    horizontal: width * 25, vertical: height * 6),
                onTap: () {
                  print('add userSession');

                  if (_validate()) {
                    if (_startDate.isBefore(_endDate)) {
                      SessionTerm _sessionTermModel = SessionTerm(
                        startDate: _startDate,
                        endDate: _endDate,
                        termName: _sessionTermName.text,
                        isActive: _isActive,
                      );
                      BlocProvider.of<LookupBloc>(context).add(
                        CreateItem(
                            item: SessionTerm(
                                termName: _sessionTermModel.termName,
                                startDate: _sessionTermModel.startDate,
                                endDate: _sessionTermModel.endDate,
                                isActive: _sessionTermModel.isActive),
                            entityid: widget.entityid,
                            entitytype: widget.entitytype),
                      );
                    } else {
                      EasyLoading.show(
                          status: "End date should be greater than Start date");
                    }
                  }
                },
              ),
          ],
        ),
      );
    });
  }
}

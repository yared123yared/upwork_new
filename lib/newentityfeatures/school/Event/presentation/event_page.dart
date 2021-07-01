import 'package:complex/common/helputil.dart';
import 'package:complex/common/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';

import '../bloc/bloc.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';

class EventPage extends StatefulWidget {
  final String entityid;
  final String entitytype;
  final String detailstype;

  final List<String> grades;
  final List<String> sessionTerms;
  final String evtdata;
  final ButtonState loadButtonState;
  final InstructorOfferingDataModel instructorData;

  final ButtonState submitButtonState;

  EventPage({
    @required this.entityid,
    @required this.entitytype,
    this.detailstype,
    this.evtdata,
    this.grades,
    this.sessionTerms,
    this.loadButtonState,
    this.instructorData,
    this.submitButtonState,
  }) : assert(instructorData != null);

  @override
  State<StatefulWidget> createState() {
    return _EventPage();
  }
}

class _EventPage extends State<EventPage> {
  CustomTextFieldController _role = CustomTextFieldController();

  CustomTextFieldController _grade = CustomTextFieldController();

  DateTime _date = DateTime.now();
  CustomTextFieldController _offering = CustomTextFieldController();
  CustomTextFieldController _sessionTerm = CustomTextFieldController();
  CustomTextFieldController _virtualRoom = CustomTextFieldController();
  CustomTextFieldController _eventdata = CustomTextFieldController();

  CustomTextFieldController _startDateController = CustomTextFieldController();

  EventOfferingKind selectedevtkind;

  int timelineIndex = 1;

  @override
  void initState() {
    super.initState();
  }

  bool _validate() {
    return _offering.isValid && _sessionTerm.isValid && _virtualRoom.isValid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Information Share"),
      body: BlocProvider(
        create: (_context) => EvtModelBloc(),
        child: Builder(
          builder: (context) => SingleChildScrollView(
            child: timelineIndex == 1
                ? Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: width * 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(height: 20),
                            CustomDropDownList<String>(
                              title: "Select Role",
                              controller: _role,
                              loadData: () async => ['PRIMARY', 'SECONDARY'],
                              displayName: (x) => x,
                              validate: Validate.withOption(
                                isRequired: true,
                              ),
                            ),
                            CustomDropDownList<String>(
                              title: "Select Grades",
                              controller: _grade,
                              loadData: () async => widget.grades,
                              displayName: (x) => x,
                              validate: Validate.withOption(
                                isRequired: true,
                              ),
                              onSelected: (x, i) {
                                String a = _grade.text;
                                print("$a");
                              },
                            ),
                            CustomDropDownList<EventOfferingKind>(
                              title: "Select Offering",
                              controller: _offering,
                              shouldReload: true,
                              loadData: () async => widget.instructorData
                                  .getEvtKind(_grade.text, _role.text),
                              displayName: (x) => x.kind,
                              validate: Validate.withOption(
                                isRequired: true,
                              ),
                              onSelected: (kind, i) {
                                print("Some offering $kind");
                                setState(() => selectedevtkind = kind);
                                print(selectedevtkind);
                              },
                            ),
                            CustomDropDownList<String>(
                              title: "Select Virtual Room",
                              controller: _virtualRoom,
                              loadData: () async => selectedevtkind.vrlist,
                              displayName: (x) => x,
                              validate: Validate.withOption(
                                isRequired: true,
                              ),
                            ),
                            CustomDropDownList<String>(
                              title: "Select Session Term",
                              controller: _sessionTerm,
                              loadData: () async => widget.sessionTerms,
                              displayName: (x) => x,
                              validate: Validate.withOption(
                                isRequired: true,
                              ),
                            ),
                            CustomDateTimePicker(
                              controller: _startDateController,
                              dateTime: _date,
                              title: 'Select Date',
                              mode: DateTimeMode.DATE,
                              onChange: (x) => _date = x,
                            ),
                            Container(
                              width: width * 30,
                              child: CustomActionButton(
                                state: widget.loadButtonState,
                                title: "Load Data",
                                gradient: C.bgGradient,
                                padding: EdgeInsets.symmetric(
                                    vertical: height * 1.5),
                                margin:
                                    EdgeInsets.symmetric(vertical: height * 6),
                                onTap: () {
                                  if (_validate() &&
                                      widget.loadButtonState ==
                                          ButtonState.idle) {
                                    BlocProvider.of<EvtModelBloc>(context).add(
                                      LoadDataEvent(
                                        entityid: widget.entityid,
                                        entitytype: widget.entitytype,
                                        detailstype: widget.detailstype,
                                        kind: _offering.text,
                                        offeringname:
                                            selectedevtkind.offeringstring,
                                        virtualRoom: _virtualRoom.text,
                                        sessionTerm: _sessionTerm.text,
                                        isofferingindependent: selectedevtkind
                                            .offering.isindependent,
                                        date: _date,
                                      ),
                                    );
                                    setState(() {
                                      timelineIndex = 2;
                                    });
                                  }
                                },
                              ),
                            ),
                            if (widget.evtdata != null)
                              CustomTextField(
                                title: "Building Name",
                                controller: _eventdata,
                                validate: Validate.withOption(
                                  isRequired: true,
                                ),
                              ),
                          ],
                        ),
                      ),
                      BlocListener(
                        listener: (context, state) {
                          if (state is SubmitDataState) {
                            // entityid = state.entityid;
                            // entitytype = state.entitytype;
                            // detailstype = state.detailstype;
                            // grades = state.grades;
                            // sessionTerms = state.sessionTerms;
                            // instructorData = state.instructorData;
                            // loadButtonState = state.loadButtonState;
                            // submitButtonState = state.submitButtonState;
                            // evtdata = state.evtdata;
                          }
                        },
                        child: BlocBuilder<EvtModelBloc, EvtModelState>(
                          builder: (context, state) {
                            if (widget.evtdata != null &&
                                state is SubmitDataState) {
                              return CustomActionButton(
                                state: widget.submitButtonState,
                                title: "Submit",
                                gradient: C.bgGradient,
                                padding: EdgeInsets.symmetric(
                                    vertical: height * 1.5),
                                margin: EdgeInsets.symmetric(
                                    horizontal: width * 25,
                                    vertical: height * 6),
                                onTap: () {
                                  if (widget.submitButtonState ==
                                      ButtonState.idle) {
                                    BlocProvider.of<EvtModelBloc>(context).add(
                                      SubmitDataEvent(
                                        entityid: widget.entityid,
                                        entitytype: widget.entitytype,
                                        detailstype: widget.detailstype,
                                        kind: _offering.text,
                                        offeringname:
                                            selectedevtkind.offeringstring,
                                        virtualRoom: _virtualRoom.text,
                                        sessionTerm: _sessionTerm.text,
                                        isofferingindependent: selectedevtkind
                                            .offering.isindependent,
                                        eventdata: _eventdata.text,
                                        date: _date,
                                        vrlist: selectedevtkind.vrlist,
                                        atttype: selectedevtkind
                                                .offering.isindependent
                                            ? "of"
                                            : "vr",
                                      ),
                                    );
                                  }
                                },
                              );
                            } else
                              return SizedBox();
                          },
                        ),
                      ),
                    ],
                  )
                : Container(),
          ),
        ),
      ),
    );
  }
}

import 'package:complex/common/helputil.dart';
import 'package:complex/common/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';

import '../bloc/bloc.dart';
import 'package:complex/newentityfeatures/Models/attendance_model.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';

class AttendancePage extends StatefulWidget {
  final String entityid;
  final String entitytype;
  final String detailstype;

  final List<String> grades;
  final List<String> sessionTerms;
  final AttendanceModel attendance;
  final ButtonState loadButtonState;
  final InstructorOfferingDataModel instructorData;

  final ButtonState submitButtonState;

  AttendancePage({
    @required this.entityid,
    @required this.entitytype,
    this.detailstype,
    this.attendance,
    this.grades,
    this.sessionTerms,
    this.loadButtonState,
    this.instructorData,
    this.submitButtonState,
  });

  @override
  State<StatefulWidget> createState() => _AttendancePage();
}

class _AttendancePage extends State<AttendancePage> {
  CustomTextFieldController _role = CustomTextFieldController();
  CustomTextFieldController _grade = CustomTextFieldController();

  DateTime _date = DateTime.now();
  CustomTextFieldController _offering = CustomTextFieldController();
  CustomTextFieldController _sessionTerm = CustomTextFieldController();
  CustomTextFieldController _virtualRoom = CustomTextFieldController();

  CustomTextFieldController _startDateController = CustomTextFieldController();

  AttendenceKind ofrKind;

  ///wither the current attendance is overridden pr not
  bool anotherAttendance = false;

  int timelineIndex = 1;

  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  bool _validate() {
    return _offering.isValid &&
        _sessionTerm.isValid &&
        _role.isValid &&
        _grade.isValid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Attendance"),
      floatingActionButton: !anotherAttendance && widget.attendance != null
          ? FloatingActionButton(
              child: Icon(Icons.search),
              onPressed: () => setState(() => anotherAttendance = true),
            )
          : Container(),
      body: BlocProvider(
        create: (_context) => AttendanceModelBloc(),
        child: Builder(
          builder: (context) => ListView(
            controller: controller,
            children: [
              ///show the form when there are no data or the another attendance
              if (timelineIndex == 1 &&
                  (anotherAttendance || widget.attendance == null)) ...[
                CustomDropDownList<String>(
                  title: "Select Role",
                  controller: _role,
                  loadData: () async => ['PRIMARY', 'SECONDARY'],
                  onSelected: (x, i) => setState(() {}),
                  displayName: (x) => x,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                CustomDropDownList<String>(
                  title: "Select Grades",
                  controller: _grade,
                  loadData: () async => widget.grades,
                  onSelected: (x, i) => setState(() {}),
                  displayName: (x) => x,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                if (_grade.text?.isNotEmpty == true &&
                    _role.text?.isNotEmpty == true)
                  CustomDropDownList<AttendenceKind>(
                    title: "Select Offering",
                    controller: _offering,
                    shouldReload: true,
                    loadData: () async =>
                        widget.instructorData?.getAttendenceKind(
                      _grade.text,
                      _role.text,
                    ),
                    displayName: (x) => x.kind,
                    validate: Validate.withOption(isRequired: true),
                    onSelected: (kind, i) {
                      setState(() => ofrKind = kind);
                    },
                  ),
                //if (ofrKind != null && ofrKind.reqvr)
                Visibility(
                  visible: ofrKind != null && ofrKind.reqvr,
                  child: CustomDropDownList<String>(
                    title: "Select Virtual Room",
                    controller: _virtualRoom,
                    loadData: () async => ofrKind.vrlist,
                    displayName: (x) => x,
                    validate: Validate.withOption(
                      isRequired: true,
                    ),
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
                Center(
                  child: Container(
                    width: width * 40,
                    child: CustomActionButton(
                      state: widget.loadButtonState,
                      title: "Load Data",
                      gradient: C.bgGradient,
                      padding: EdgeInsets.symmetric(vertical: height * 1.5),
                      margin: EdgeInsets.symmetric(vertical: height * 6),
                      onTap: () {
                        if (_validate() &&
                            widget.loadButtonState == ButtonState.idle) {
                          BlocProvider.of<AttendanceModelBloc>(context).add(
                            LoadDataEvent(
                              entityid: widget.entityid,
                              entitytype: widget.entitytype,
                              detailstype: widget.detailstype,
                              kind: _offering.text,
                              attendanceType: ofrKind.reqvr
                                  ? Attendancetype.Vr
                                  : Attendancetype.Ofr,
                              name: ofrKind.reqvr
                                  ? _virtualRoom.text
                                  : ofrKind.offeringstring,
                              sessionTerm: _sessionTerm.text,
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
                ),
                const SizedBox(height: 20),
              ],
              BlocBuilder<AttendanceModelBloc, AttendanceModelState>(
                builder: (context, state) {
                  if (state is SubmitDataState)
                    return Column(
                      children: [
                        if (state.attendanceModel != null && !anotherAttendance)
                          for (var user
                              in state.attendanceModel.attendanceList) ...[
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              // decoration: BoxDecoration(
                              //   border: Border(
                              //     bottom: BorderSide(
                              //       color: user.attendance
                              //           ? Colors.greenAccent
                              //           : Colors.redAccent,
                              //     ),
                              //   ),
                              // ),
                              child: ListTile(
                                title: Text(
                                  user.name,
                                  style: TextStyle(
                                      fontFamily: 'Merriweather',
                                      fontSize: width * 4,
                                      color: C.black),
                                ),
                                subtitle: Text(''),
                                onTap: () {
                                  setState(() {
                                    user.attendance
                                        ? user.attendance = false
                                        : user.attendance = true;
                                  });
                                },
                                leading: CircleAvatar(
                                  backgroundColor: user.attendance
                                      ? Colors.greenAccent
                                      : Colors.redAccent,
                                  child: Text(user.studentID.toString()),
                                ),
                                trailing: Text(
                                    user.attendance ? 'Present' : 'Absent'),
                                // leading: Text(
                                //   user.studentID.toString(),
                                //   style: TextStyle(

                                //       fontSize: width * 4,
                                //       fontWeight: FontWeight.w700,
                                //       color: C.secondaryTextBlue),
                                // ),
                                // trailing: TextButton(
                                //   child: Container(
                                //     child: Text(
                                //       user.attendance ? 'Present' : 'Absent',
                                //       style: TextStyle(

                                //         fontSize: width * 4,
                                //         color: C.white,
                                //       ),
                                //     ),
                                //     // decoration: BoxDecoration(
                                //     //   color: user.attendance
                                //     //       ? C.multiColor_4
                                //     //       : C.red.withOpacity(0.7),
                                //     //   borderRadius: BorderRadius.circular(width * 2),
                                //     // ),
                                //     padding: EdgeInsets.all(height),
                                //   ),
                                //   onPressed: () {
                                //     setState(() {
                                //       user.attendance
                                //           ? user.attendance = false
                                //           : user.attendance = true;
                                //     });
                                //   },
                                // ),
                              ),
                            ),
                            Divider(
                              height: 1,
                              color: user.attendance
                                  ? Colors.greenAccent
                                  : Colors.redAccent,
                              endIndent: 20,
                              indent: 20,
                            ),
                          ],
                        if (state.attendanceModel != null &&
                            state.attendanceModel.attendanceList.isEmpty &&
                            !anotherAttendance)
                          Text("No Data To Display"),
                        if (state.attendanceModel != null &&
                            state.attendanceModel.attendanceList.isNotEmpty &&
                            !anotherAttendance)
                          CustomActionButton(
                            state: widget.submitButtonState,
                            title: "Submit",
                            gradient: C.bgGradient,
                            padding:
                                EdgeInsets.symmetric(vertical: height * 1.5),
                            margin: EdgeInsets.symmetric(
                                horizontal: width * 25, vertical: height * 6),
                            onTap: () {
                              if (widget.submitButtonState ==
                                  ButtonState.idle) {
                                BlocProvider.of<AttendanceModelBloc>(context)
                                    .add(
                                  SubmitDataEvent(
                                    entityid: widget.entityid,
                                    entitytype: widget.entitytype,
                                    detailstype: widget.detailstype,
                                    type: ofrKind.reqvr
                                        ? Attendancetype.Vr
                                        : Attendancetype.Ofr,
                                    name: ofrKind.reqvr
                                        ? _virtualRoom.text
                                        : ofrKind.offeringstring,
                                    sessionTerm: _sessionTerm.text,
                                    attendance: state.attendanceModel,
                                  ),
                                );
                              }
                            },
                          ),
                      ],
                    );
                  else
                    return SizedBox();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(Widget old) {
    super.didUpdateWidget(old);

    ///if the user search for another attendance when the data comes will be shown
    if (widget.attendance != null) {
      anotherAttendance = false;
    }
    // if (widget.attendance != null) {
    //   Future.delayed(
    //     Duration(milliseconds: 300),
    //     () => controller.animateTo(
    //       controller.position.maxScrollExtent,
    //       duration: Duration(milliseconds: 300),
    //       curve: Curves.easeInOut,
    //     ),
    //   );
    // }
  }
}

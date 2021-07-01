import 'package:complex/common/widgets/custom_app_bar.dart';
import 'package:complex/domain/lookup/lookup.dart';
import 'package:complex/newentityfeatures/Models/progress_model.dart';
import 'package:complex/newentityfeatures/Models/virtual_room_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';

import '../bloc/bloc.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';

class ProgressPage extends StatefulWidget {
  final String entityid;
  final String entitytype;
  final String detailstype;

  final ProgressModel progress;
  final List<String> grades;
  final List<String> sessionTerms;
  final List<String> offeringList;
  final List<ExamTermInfo> examtermlist;
  final Map<String, List<VirtualRoomModel>> virtualRoomList;
  final ButtonState loadButtonState;
  final ButtonState submitButtonState;
  final InstructorOfferingDataModel instructorData;

  ProgressPage({
    @required this.entityid,
    @required this.entitytype,
    this.detailstype,
    this.progress,
    this.examtermlist,
    this.sessionTerms,
    this.grades,
    this.virtualRoomList,
    this.loadButtonState,
    this.submitButtonState,
    this.offeringList,
    this.instructorData,
  });

  @override
  _ProgressPageState createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  CustomTextFieldController _offering = CustomTextFieldController();
  CustomTextFieldController _sessionTerm = CustomTextFieldController();
  CustomTextFieldController _virtualRoom = CustomTextFieldController();
  CustomTextFieldController _role = CustomTextFieldController();
  CustomTextFieldController _grade = CustomTextFieldController();
  CustomTextFieldController _examterm = CustomTextFieldController();
  CustomTextFieldController _totalscore = CustomTextFieldController();

  OfferingKind ofrKind;
  ExamTermInfo exmKind;
  List<VirtualRoomModel> _virtualRooms = [];
  VirtualRoomModel _selectedVirtualRoom;
  bool _edit = false;

  ///wither to show the data or the fields
  bool showProgress = false;

  int timelineIndex = 1;

  Text _headerText({@required String text}) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Merriweather',
          color: C.secondaryTextBlue,
          fontSize: width * 5,
          fontWeight: FontWeight.w700),
    );
  }

  Text _cellText({@required String text}) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontFamily: 'Merriweather',
          color: C.primaryTextBlue,
          fontSize: width * 5),
    );
  }

  bool _validate() {
    return _offering.isValid &&
        _sessionTerm.isValid &&
        // _virtualRoom.isValid &&
        _examterm.isValid;
  }

  bool _scoreValidate() {
    return _totalscore.isValid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  key: _scaffoldKey,
      appBar: CustomAppBar(title: "Progress"),
      floatingActionButton: showProgress == true
          ? FloatingActionButton(
              child: Icon(Icons.search),
              onPressed: () => setState(() => showProgress = false),
            )
          : const SizedBox(),
      body: BlocProvider(
        create: (_context) => ProgressModelBloc(),
        child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.symmetric(horizontal: width * 4),
            children: [
              if (timelineIndex == 1 && !showProgress) ...[
                const SizedBox(height: 20),
                CustomDropDownList<String>(
                  title: "Select Session Term",
                  controller: _sessionTerm,
                  loadData: () async => widget.sessionTerms,
                  displayName: (x) => x,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                CustomDropDownList<String>(
                  title: "Select Role",
                  controller: _role,
                  loadData: () async => ['PRIMARY', 'SECONDARY'],
                  displayName: (x) => x,
                  onSelected: (value, index) => setState(() {}),
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                CustomDropDownList<String>(
                  title: "Select Grades",
                  controller: _grade,
                  loadData: () async => widget.grades,
                  displayName: (x) => x,
                  onSelected: (value, index) => setState(() {}),
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                CustomDropDownList<ExamTermInfo>(
                  title: "Select Term",
                  controller: _examterm,
                  loadData: () async => widget.examtermlist,
                  displayName: (x) => x.toString(),
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                  onSelected: (kind, i) {
                    setState(() => exmKind = kind);
                  },
                ),
                CustomDropDownList<OfferingKind>(
                  enabled: _role.text != null && _grade.text != null,
                  shouldReload: true,
                  title: "Select Offering",
                  controller: _offering,
                  //if the instructor == null means this page is open by some one not allowed to open it
                  loadData: () async =>
                      widget.instructorData
                          ?.getSubKind(_grade.text, _role.text) ??
                      [],
                  displayName: (x) => x.kind,
                  validate: Validate.withOption(isRequired: true),
                  onSelected: (kind, i) {
                    setState(() => ofrKind = kind);
                  },
                ),
                if (ofrKind != null && ofrKind.reqvr)
                  CustomDropDownList<String>(
                    title: "Select Virtual Room",
                    controller: _virtualRoom,
                    loadData: () async => ofrKind.vrlist,
                    displayName: (x) => x,
                    validate: Validate.withOption(
                      isRequired: true,
                    ),
                  ),
                Container(
                  width: width * 30,
                  child: CustomActionButton(
                    state: widget.loadButtonState,
                    title: "Load Data",
                    gradient: C.bgGradient,
                    padding: EdgeInsets.symmetric(vertical: height * 1.5),
                    margin: EdgeInsets.symmetric(vertical: height * 6),
                    onTap: () {
                      if (_validate() &&
                          widget.loadButtonState == ButtonState.idle) {
                        BlocProvider.of<ProgressModelBloc>(context).add(
                          LoadDataEvent(
                            entityid: widget.entityid,
                            entitytype: widget.entitytype,
                            detailstype: widget.detailstype,
                            kind: _offering.text + "_d_" + _examterm.text,
                            offeringname: ofrKind.offeringkindstr,
                            virtualRoom: _virtualRoom?.text,
                            sessionTerm: _sessionTerm.text,
                            isofferingindependent:
                                ofrKind.offering.isindependent,
                          ),
                        );
                        setState(() {
                          timelineIndex = 2;
                        });
                      }
                    },
                  ),
                ),
              ],
              BlocBuilder<ProgressModelBloc, ProgressModelState>(
                builder: (context, state) {
                  if (state is SubmitDataState) {
                    if (state.progressModel != null && showProgress)
                      return CustomTextField(
                        title: "Total Score",
                        controller: _totalscore,
                        validate: Validate.withOption(
                            isRequired: true, isNumber: true),
                      );
                  }
                  return SizedBox();
                },
              ),
              BlocBuilder<ProgressModelBloc, ProgressModelState>(
                builder: (context, state) {
                  if (state is SubmitDataState) {
                    if (state.progressModel != null && showProgress)
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          columnSpacing: width * 2,
                          columns: [
                            DataColumn(label: _headerText(text: 'ID')),
                            DataColumn(
                              label: _headerText(text: 'Name'),
                            ),
                            DataColumn(
                              label: _headerText(text: 'Mark'),
                            )
                          ],
                          rows: state.progressModel.progressList
                              .map(
                                (progress) => DataRow(
                                  cells: [
                                    DataCell(
                                        _cellText(text: progress.studentID)),
                                    DataCell(
                                      SizedBox(
                                        width: width * 70,
                                        child: _cellText(text: progress.name),
                                      ),
                                    ),
//                    DataCell(
//                      _cellText(text: "var"),
//                    ),
                                    DataCell(
                                      GestureDetector(
                                        onTap: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) => AlertDialog(
                                              title: Text('Edit Mark'),
                                              content: TextField(
                                                autofocus: true,
                                                keyboardType:
                                                    TextInputType.multiline,
                                                onChanged: (mark) {
                                                  setState(() {
                                                    progress.progress =
                                                        int.parse(mark);
                                                    print(progress.progress);
                                                  });
                                                },
                                              ),
                                              actions: [
                                                TextButton(
                                                  child: Text('Ok'),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              vertical: height / 2,
                                              horizontal: width),
                                          alignment: Alignment.center,
                                          child: _cellText(
                                              text:
                                                  progress.progress.toString()),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(width),
                                            border: Border.all(
                                                color: C.secondaryTextBlue),
                                            color:
                                                C.multiColor_3.withOpacity(0.1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                              .toList(),
                        ),
                      );
                  }
                  return SizedBox();
                },
              ),
              BlocBuilder<ProgressModelBloc, ProgressModelState>(
                builder: (context, state) {
                  if (state is SubmitDataState) {
                    if (state.progressModel != null && showProgress) {
                      return CustomActionButton(
                        state: widget.submitButtonState,
                        title: "Submit",
                        gradient: C.bgGradient,
                        padding: EdgeInsets.symmetric(vertical: height * 1.5),
                        margin: EdgeInsets.symmetric(
                            horizontal: width * 25, vertical: height * 6),
                        onTap: () {
                          if (state.progressModel != null &&
                              _scoreValidate() &&
                              widget.submitButtonState == ButtonState.idle) {
                            state.progressModel.totalScore =
                                int.parse(_totalscore.text);
                            BlocProvider.of<ProgressModelBloc>(context).add(
                              SubmitDataEvent(
                                entityid: widget.entityid,
                                entitytype: widget.entitytype,
                                detailstype: widget.detailstype,
                                virtualRoomModel: _selectedVirtualRoom,
                                sessionTermName: _sessionTerm.text,
                                progressModel: state.progressModel,
                              ),
                            );
                          }
                        },
                      );
                    }
                  }
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
  void didUpdateWidget(Widget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.progress != null) {
      showProgress = true;
    }
  }
}

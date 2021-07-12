import 'package:complex/common/helputil.dart';
import 'package:complex/common/page/common_list_page_copy.dart';
import 'package:complex/common/widgets/custom_app_bar.dart';
import 'package:complex/newentityfeatures/Models/common_enum_methods.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_model.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_score_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';

import 'package:complex/data/styles_colors.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

//import "package:asuka/asuka.dart" as asuka;
import 'package:horizontal_data_table/horizontal_data_table.dart';

import '../bloc/bloc.dart';

import './answer_form.dart';

class ParentInfoPage extends StatefulWidget {
  final String entityid;
  final String entitytype;
  final String detailstype;

  final Map<String, Map<String, dynamic>> dataList;
  final Future<List<VrAssignmentModel>> Function({
    String idNumber,
    String sessionTerm,
    String virtualRoom,
  }) assignmentListGetter;

  final List<String> idNumbers;
  final List<String> sessionTerms;
  final List<String> virtualRooms;
  final ParentViewMode mode;
  final List<String> titles;

  ParentInfoPage({
    @required this.entityid,
    @required this.entitytype,
    this.detailstype,
    this.dataList,
    this.assignmentListGetter,
    this.idNumbers,
    this.sessionTerms,
    this.virtualRooms,
    this.mode,
  }) : this.titles = dataList?.keys?.toList() ?? [];

  @override
  _ParentInfoPageState createState() => _ParentInfoPageState();
}

class _ParentInfoPageState extends State<ParentInfoPage> {
  CustomTextFieldController _idNumber = CustomTextFieldController();
  CustomTextFieldController _sessionTerm = CustomTextFieldController();
  CustomTextFieldController _virtualRoom = CustomTextFieldController();
  CustomTextFieldController _assignment = CustomTextFieldController();

  CustomTextFieldController _startDateController = CustomTextFieldController();
  CustomTextFieldController _endDateController = CustomTextFieldController();

  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now();

  VrAssignmentModel _selectedAssignment;
  ParentInfoModelState _resultState;

  int timelineIndex = 1;

  bool _validateEvent() =>
      _idNumber.isValid && _sessionTerm.isValid && _sessionTerm.isValid;

  bool _validate() {
    bool valid = true;

    valid = valid && _idNumber.isValid;
    valid = valid && _sessionTerm.isValid;
    valid = valid && _virtualRoom.isValid;
    valid = valid && _assignment.isValid != false;

    return valid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: widget.mode.toString().split('.').last),
      body: BlocProvider(
        create: (_context) => ParentInfoModelBloc(),
        child: Builder(
          builder: (context) => ListView(
            children: [
              timelineIndex == 1
                  ? Container(
                      margin: EdgeInsets.symmetric(horizontal: width * 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomDropDownList<String>(
                            title: "Id Card Number",
                            controller: _idNumber,
                            loadData: () async => widget.idNumbers,
                            displayName: (x) => x,
                            validate: Validate.withOption(
                              isRequired: true,
                            ),
                            onSelected: (_, __) => setState(() {}),
                          ),
                          CustomDropDownList<String>(
                            title: "Session Term",
                            controller: _sessionTerm,
                            loadData: () async => widget.sessionTerms,
                            displayName: (x) => x,
                            validate: Validate.withOption(
                              isRequired: true,
                            ),
                            onSelected: (_, __) => setState(() {}),
                          ),
                          //if (widget.mode != ParentViewMode.Event)
                          CustomDropDownList<String>(
                            title: "Virtual Room",
                            controller: _virtualRoom,
                            loadData: () async => widget.virtualRooms,
                            displayName: (x) => x,
                            validate: Validate.withOption(
                              isRequired: true,
                            ),
                            onSelected: (_, __) => setState(() {}),
                          ),
                          if (widget.mode == ParentViewMode.AssignmentScore ||
                              widget.mode == ParentViewMode.AssignmentsList)
                            CustomDropDownList<VrAssignmentModel>(
                              title: "Assignment",
                              controller: _assignment,
                              enabled: (_idNumber.text?.isNotEmpty ?? false) &&
                                  (_sessionTerm.text?.isNotEmpty ?? false) &&
                                  (_virtualRoom.text?.isNotEmpty ?? false),
                              shouldReload: true,
                              loadData: () async =>
                                  await widget.assignmentListGetter(
                                idNumber: _idNumber.text,
                                sessionTerm: _sessionTerm.text,
                                virtualRoom: _virtualRoom.text,
                              ),
                              onSelected: (value, index) {
                                setState(() {
                                  _selectedAssignment = value;
                                });
                              },
                              displayName: (x) => "${x.topic} - ${x.offering}",
                              validate: Validate.withOption(
                                isRequired: true,
                              ),
                            ),
                          if (widget.mode != ParentViewMode.Progress)
                            CustomDateTimePicker(
                              controller: _startDateController,
                              dateTime: _startDate,
                              title: 'Start Date',
                              mode: DateTimeMode.DATE,
                              onChange: (x) => _startDate = x,
                            ),
                          if (widget.mode != ParentViewMode.Progress)
                            CustomDateTimePicker(
                              controller: _endDateController,
                              dateTime: _endDate,
                              title: 'End Date',
                              mode: DateTimeMode.DATE,
                              onChange: (x) => _endDate = x,
                            ),
                          Container(
                            width: width * 30,
                            child: CustomActionButton(
                              // state: Bu,
                              title: "Load Data",
                              gradient: C.bgGradient,
                              padding:
                                  EdgeInsets.symmetric(vertical: height * 1.5),
                              margin:
                                  EdgeInsets.symmetric(vertical: height * 2),
                              onTap: () {
                                if (_validate()) {
                                  setState(() {
                                    timelineIndex = 2;
                                  });
                                  if (widget.mode ==
                                      ParentViewMode.Attendance) {
                                    BlocProvider.of<ParentInfoModelBloc>(
                                            context)
                                        .add(
                                      LoadAttendanceDataEvent(
                                        entityid: widget.entityid,
                                        entitytype: widget.entitytype,
                                        detailstype: widget.detailstype,
                                        idNumber: _idNumber.text,
                                        startDate: _startDate,
                                        sessionTerm: _sessionTerm.text,
                                        endDate: _endDate,
                                      ),
                                    );
                                  } else if (widget.mode ==
                                      ParentViewMode.Progress) {
                                    BlocProvider.of<ParentInfoModelBloc>(
                                            context)
                                        .add(
                                      LoadProgressDataEvent(
                                        entityid: widget.entityid,
                                        entitytype: widget.entitytype,
                                        detailstype: widget.detailstype,
                                        idNumber: _idNumber.text,
                                        sessionTerm: _sessionTerm.text,
                                      ),
                                    );
                                  } else if (widget.mode ==
                                      ParentViewMode.Event) {
                                    if (_validateEvent()) {
                                      BlocProvider.of<ParentInfoModelBloc>(
                                              context)
                                          .add(
                                        LoadEventDataEvent(
                                          entityid: widget.entityid,
                                          entitytype: widget.entitytype,
                                          detailstype: widget.detailstype,
                                          vrRoom: _virtualRoom.text,
                                          sessionTerm: _sessionTerm.text,
                                          idNumber: _idNumber.text,
                                          startDate: _startDate,
                                          endDate: _endDate,
                                        ),
                                      );
                                    }
                                  } else if (widget.mode ==
                                      ParentViewMode.AssignmentScore) {
                                    BlocProvider.of<ParentInfoModelBloc>(
                                            context)
                                        .add(
                                      LoadAssignmentsScoreDataEvent(
                                        entityid: widget.entityid,
                                        entitytype: widget.entitytype,
                                        detailstype: widget.detailstype,
                                        sessionTerm: _sessionTerm.text,
                                        idCard: _idNumber.text,
                                        virtualRoom: _virtualRoom.text,
                                        vrAssignment: _selectedAssignment,
                                      ),
                                    );
                                  } else if (widget.mode ==
                                      ParentViewMode.AssignmentsList) {
                                    BlocProvider.of<ParentInfoModelBloc>(
                                            context)
                                        .add(
                                      LoadAssignmentsListDataEvent(
                                        entityid: widget.entityid,
                                        entitytype: widget.entitytype,
                                        detailstype: widget.detailstype,
                                        sessionTerm: _sessionTerm.text,
                                        vrAssignment: _selectedAssignment,
                                        idCard: _idNumber.text,
                                        virtualRoom: _virtualRoom.text,
                                      ),
                                    );
                                  }
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
              Divider(
                color: Colors.black54,
                height: 1.0,
                thickness: 0.0,
              ),
              BlocListener<ParentInfoModelBloc, ParentInfoModelState>(
                listener: (context, state) async {
                  if (state is AnswerFormSchoolState) {
                    ParentInfoModelState resultState = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BlocProvider /* .value */ (
                          // value: BlocProvider.of<ParentInfoModelBloc>(context),
                          create: (context) => ParentInfoModelBloc(),
                          child: QuestionsAnswerForm(
                            entityid: widget.entityid,
                            entitytype: widget.entitytype,
                            detailstype: widget.detailstype,
                            answer: state.answer,
                            assignment: state.assignment,
                            idCardNum: state.idCardNum,
                            vrAssignment: state.vrAssignment,
                            state: state.state,
                          ),
                        ),
                      ),
                    );
                    if (resultState is IsSaved) {
                      print("Saved 22222222222");
                      EasyLoading.showSuccess("Question Submitted");
                      setState(() {
                        timelineIndex = 1;
                      });
                    } else if (resultState
                        is VrAssignmentAnsweredPaperListState) {
                      setState(() {
                        _resultState = resultState;
                      });
                    } else {
                      setState(() {
                        timelineIndex = 1;
                      });
                    }
                    // } else if (state is VrAssignmentAnsweredPaperListState) {
                  }
                },
                child: BlocBuilder<ParentInfoModelBloc, ParentInfoModelState>(
                  builder: (context, state) {
                    if (state is ViewState) {
                      Map<String, Map<String, dynamic>> data = state.data;
                      if (data != null)
                        return Builder(
                          builder: (x) {
                            List<String> titles = data.keys.toList();
                            titles.insert(0, "");
                            List<String> rows = [];

                            ///because some course can has three and other has two values
                            data.values.toList().forEach((map) {
                              map.keys.forEach((value) {
                                if (!rows.contains(value)) {
                                  rows.add(value);
                                }
                              });
                            });
                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: DataTable(
                                headingTextStyle: TextStyle(
                                  fontFamily: 'Merriweather',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent,
                                ),
                                columns: titles
                                    .map((e) => DataColumn(label: Text(e)))
                                    .toList(),
                                rows: rows
                                    .map((row) => DataRow(
                                          cells: titles
                                              .map((title) => DataCell(
                                                    Text((data[title] ??
                                                            {})[row] ??
                                                        ""),
                                                  ))
                                              .toList()
                                                ..removeAt(0)
                                                ..insert(
                                                    0, DataCell(Text(row))),
                                        ))
                                    .toList(),
                              ),
                            );

                            ///{
                            /// mathe :[]
                            ///}
                            // rows: _dataList.values
                            //     .map((e) => DataRow(
                            //           cells: e.values
                            //               .toList()
                            //               .map((item) => DataCell(Text(item)))
                            //               .toList(),
                            //         ))
                            //     .toList(),
                          },
                        );
                    } else if (/* state is VrAssignmentAnsweredPaperListState || */
                        _resultState is VrAssignmentAnsweredPaperListState) {
                      return SliverToBoxAdapter(
                        child: CommonListPage(
                          canSearch: false,
                          updateAction: null,
                          appBarTitle: "Assignment List",
                          dynamicListState: "Assignment List",
                          listItems: (_resultState
                                          as VrAssignmentAnsweredPaperListState)
                                      .answeredPaperList !=
                                  null
                              ? toCommonListState(
                                  (_resultState
                                          as VrAssignmentAnsweredPaperListState)
                                      .answeredPaperList,
                                  context)
                              : [],
                        ),
                      );
                    }

                    return SizedBox();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _getBodyWidget() {
    return HorizontalDataTable(
      leftHandSideColumnWidth: 155,
      rightHandSideColumnWidth: ((widget.titles.length - 1) * 100).toDouble(),
      isFixedHeader: true,
      headerWidgets: List<Widget>.from(
        widget.titles.map((e) => _getTitleItemWidget(e, 100)),
      ),
      leftSideItemBuilder: _generateFirstColumnRow,
      rightSideItemBuilder: _generateRightHandSideColumnRow,
      itemCount: widget.dataList.values.first.keys.length,
      rowSeparatorWidget: Divider(
        color: Colors.black54,
        height: 1.0,
        thickness: 0.0,
      ),
      leftHandSideColBackgroundColor: Color(0xFFFFFFFF),
      rightHandSideColBackgroundColor: Color(0xFFFFFFFF),
    );
  }

  Widget _getTitleItemWidget(String label, double width) {
    return Container(
      child: Text(label,
          style: TextStyle(
              fontFamily: 'Merriweather', color: C.secondaryTextBlue)),
      width: width,
      height: 56,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.center,
    );
  }

  Widget _generateFirstColumnRow(BuildContext context, int index) {
    return Container(
      child: Text(widget.dataList.values.first.keys.toList()[index]),
      width: 200,
      height: 55,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.center,
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    List<String> _s = [];
    widget.dataList.values.forEach((item) {
      _s.add(item.values.toList()[index].toString());
    });
    return Row(
      children: _s
          .map((e) => InkWell(
                onTap: () {
                  if (e.length > 15) {
                    asuka.showDialog(
                      builder: (context) => AlertDialog(
                        title: Text(
                          widget.titles[index + 1],
                          style: TextStyle(
                            fontFamily: 'Merriweather',
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(e),
                            MaterialButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                padding: EdgeInsets.all(15.0),
                                color: Colors.blueGrey,
                                child: Text(
                                  'Ok',
                                  style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    color: Colors.white,
                                    fontSize: 18.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                },
                child: Container(
                  child: Text(e),
                  width: 100,
                  height: 55,
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      vertical: BorderSide(color: C.grey),
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }

  List<ListStateClass> toCommonListState(
      List<AnsweredPaper> listItems, BuildContext context) {
    List<ListStateClass> _dynamicList = [];
    listItems.asMap().forEach((index, item) {
      _dynamicList.add(ListStateClass(
        title: "${item.answers ?? ''} ${item.correct ?? ""}",
        // subtitle: "grade: ${item.grade}",
        tapAction: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //       // builder: (context) => FeePlanForm(
          //       //   feePlanModel: item,
          //       //   entitytype: widget.entitytype,
          //       //   entityid: widget.entityid,
          //       //   givenreloadaction: doreload,
          //       // ),
          //       ),
          // );
        },
        // deleteAction: () async {
        //   bool docancel = await _asyncConfirmDialog(context);
        //   if (docancel) {
        //     BlocProvider.of<>(context).add(
        //         listbloc.deleteItemWithData(
        //             entitytype: widget.entitytype,
        //             entityid: widget.entitytype,
        //             item: listItems[index]));
        //   }
        // },
      ));
    });

    return _dynamicList;
  }
}

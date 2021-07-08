import 'package:complex/common/helputil.dart';
import 'package:complex/common/widgets/custom_switchWithTitle.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import "package:asuka/asuka.dart" as asuka;
import 'package:complex/common/helputil.dart' hide DateTimeMode;

import '../itembloc/bloc.dart' as itembloc;

class ClassPeriodModelForm extends StatefulWidget {
  final ClassPeriodInfo classPeriodInfo;
  final String entityid;
  final String entitytype;
  final String type;
  final ReloadAction givenreloadaction;

  ClassPeriodModelForm({
    @required this.classPeriodInfo,
    @required this.givenreloadaction,
    @required this.type,
    this.entitytype,
    this.entityid,
  });

  @override
  _ClassPeriodModelFormState createState() => _ClassPeriodModelFormState();
}

class _ClassPeriodModelFormState extends State<ClassPeriodModelForm> {
  ClassPeriodInfo classPeriodInfo;

  ///the group
  String type;
  List<String> types;

  CustomTextFieldController _classPeriodName = CustomTextFieldController();
  CustomTextFieldController _type = CustomTextFieldController();

  // DateTime _startDate;
  // DateTime _endDate;

  // CustomTextFieldController _startDateController = CustomTextFieldController();
  // CustomTextFieldController _endDateController = CustomTextFieldController();

  // CustomTextFieldController _paymentPeriodType = CustomTextFieldController();

  List<DateTime> startDates = [];
  List<DateTime> endDates = [];

  List<List<CustomTextFieldController>> controllers = [];

  bool newType = false;
  bool edit = false;

  List<Schedule> schedules = [];

  int numPeriods;
  int timelineIndex = -1;

  bool _validate() {
    if (timelineIndex == -1) {
      return _classPeriodName.isValid;
    } else if (timelineIndex >= 0) {
      if (controllers.isEmpty) {
        asuka.showSnackBar(SnackBar(
          content: Text("You must enter the periods of the payment"),
        ));
      }
      for (var controller in controllers[timelineIndex]) {
        if (controller.isValid != true) {
          asuka.showSnackBar(SnackBar(
            content: Text(
                "Please fill the required information for class period $timelineIndex"),
          ));
          return false;
        } else {
          return true;
        }
      }
    }
    return false;
  }

  _initFiledValue() {
    // ///this must be evaluated before first build
    if (widget.classPeriodInfo != null) {
      Future.delayed(Duration(milliseconds: 80), () {
        setState(() {
          edit = true;
          numPeriods = widget.classPeriodInfo?.schedule?.length;
          _type.text = widget.classPeriodInfo?.type;
          schedules = widget.classPeriodInfo?.schedule;
          startDates =
              List.generate(numPeriods, (index) => schedules[index].startTime);
          endDates =
              List.generate(numPeriods, (index) => schedules[index].endTime);

          controllers = List.generate(
            schedules.length /*  * 7 */,
            (index) {
              return [
                // for (var i = 0; i < 3; i++) CustomTextFieldController(),
                CustomTextFieldController(),
                CustomTextFieldController(),
                CustomTextFieldController(),
              ];
            },
          );
        });
      });
    }
  }

  void addPeriod(int periods) {
    if (edit) return;

    // int periods = int.parse(_classPeriodName.text);

    setState(() {
      startDates = List.generate(periods, (index) => DateTime.now());
      endDates = List.generate(periods, (index) => DateTime.now());
      for (var i = 0; i < periods; i++) {
        controllers.insert(i, []);
        schedules.add(
          Schedule(
            classPeriodName: '',
            endTime: DateTime.now(),
            startTime: DateTime.now(),
          ),
        );
        controllers = List.generate(
          periods,
          (index) {
            return [
              for (var i = 0; i < 3; i++) CustomTextFieldController(),
            ];
          },
        );
      }
    });
  }

  @override
  void initState() {
    _initFiledValue();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => itembloc.ClassPeriodModelBloc()
        ..add(
          itembloc.GetForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Class Period'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.ClassPeriodModelBloc,
            itembloc.ClassPeriodModelState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            classPeriodInfo = widget.classPeriodInfo;

            ///the group
            type = state.type;
            types = state.types;

            _initFiledValue();
          }
        }, child: BlocBuilder<itembloc.ClassPeriodModelBloc,
            itembloc.ClassPeriodModelState>(builder: (context, state) {
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
                      enabled: !edit,
                      title: "Class Period Number",
                      controller: _classPeriodName,
                      initialValue:
                          widget.classPeriodInfo?.schedule?.length?.toString(),
                      validate: Validate.withOption(
                        isRequired: true,
                        isNumber: true,
                      ),
                    ),
                    CustomSwitchWithTitle(
                      title: "New Type",
                      isEnabled: newType,
                      enabled: widget.classPeriodInfo == null,
                      onChange: (value) {
                        setState(() {
                          _type.text = "";
                          newType = value;
                        });
                      },
                    ),
                    newType
                        ? CustomTextField(
                            controller: _type,
                            title: "New Type",
                            validate: Validate.withOption(isRequired: true),
                          )
                        : CustomDropDownList<String>(
                            initialValue: widget.classPeriodInfo?.type,
                            controller: _type,
                            displayName: (data) => data,
                            loadData: () async => types,
                            title: "Type",
                            // enabled: !edit,
                          ),
                  ],
                ),
              ],
            ),
          ),
        ),
        CustomActionButton(
          state: ButtonState.idle,
          // title: edit ? "Update" : "Add",
          title: "Next",
          gradient: C.bgGradient,
          padding: EdgeInsets.symmetric(vertical: height * 1.5),
          margin: EdgeInsets.symmetric(
              horizontal: width * 25, vertical: height * 6),
          onTap: () async {
            print('add userSession');

            if (_validate()) {
              // ClassPeriodInfo _scheduleModel = ClassPeriodInfo(
              //   classPeriodName: _classPeriodName.text,
              //   endTime: _endDate,
              //   startTime: _startDate,
              // );

              int periods = int.parse(_classPeriodName.text);
              addPeriod(periods);
              setState(() {
                numPeriods = periods;
                timelineIndex++;
              });
            }
          },
        ),
      ],
    );
  }

  Widget screen2(context, numberPeriod) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: width * 6),
      child: Column(
        children: [
          // for (int i = 0; i < schedules.length; i++)
          _buildItem(numberPeriod),
          CustomActionButton(
            state: ButtonState.idle,
            title: timelineIndex != numPeriods
                ? "NEXT"
                : widget.classPeriodInfo != null
                    ? "EDIT"
                    : "ADD",
            gradient: C.bgGradient,
            padding: EdgeInsets.symmetric(
              vertical: height * 1.5,
            ),
            margin: EdgeInsets.symmetric(
              horizontal: width * 25,
              vertical: height * 6,
            ),
            onTap: () async {
              // setState(() {
              //   schedules[timelineIndex] = Schedule(
              //     classPeriodName: _classPeriodName.text,
              //     endTime: _endDate,
              //     startTime: _startDate,
              //   );
              // });
              print(_validate());
              if (_validate()) {
                schedules[numberPeriod] = Schedule(
                  classPeriodName: _classPeriodName.text,
                  endTime: endDates[numberPeriod],
                  startTime: startDates[numberPeriod],
                );
                ClassPeriodInfo _scheduleModel = ClassPeriodInfo(
                  schedule: schedules,
                  type: _type.text,
                );

                if (timelineIndex < (numPeriods - 1)) {
                  setState(() {
                    timelineIndex++;
                    numPeriods = int.parse(_classPeriodName.text);
                  });
                  return;
                } else {
                  BlocProvider.of<itembloc.ClassPeriodModelBloc>(context).add(
                    itembloc.CreateItem(
                      item: _scheduleModel,
                      type: _type.text,
                      entityid: widget.entityid,
                      entitytype: widget.entitytype,
                    ),
                  );
                }
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildItem(int i) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: width * 6),
      child: Column(
        children: [
          CustomTextField(
            enabled: !edit,
            initialValue: schedules[i].classPeriodName,
            title: "Class Period Name",
            // onChange: (text) {
            //   setState(() => schedules[i].classPeriodName = text);
            // },
            controller: controllers[i][0],
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          CustomDateTimePicker(
            title: 'Start Date',
            enabled: true,
            controller: controllers[i][1],
            // onChange: (value) {
            //   setState(() => schedules[i].startTime = value);
            // },
            onChange: (x) => startDates[i] = x,
            dateTime: startDates[i],
            autoSync: true,
            mode: DateTimeMode.DATE,
            validate: Validate.withOption(isRequired: true),
          ),
          CustomDateTimePicker(
            title: 'End Date',
            enabled: true,
            autoSync: true,
            controller: controllers[i][2],
            // onChange: (value) {
            //   setState(() => endDates[i] = value);
            // },
            onChange: (x) => endDates[i] = x,
            dateTime: endDates[i],
            mode: DateTimeMode.DATE,
            validate: Validate.withOption(isRequired: true),
          ),
        ],
      ),
    );
    // ));
  }
}

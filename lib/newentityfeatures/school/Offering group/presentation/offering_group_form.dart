import 'package:complex/common/widgets/custom_switchWithTitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;

import '../itembloc/bloc.dart' as itembloc;
import '../listbloc/bloc.dart' as listbloc;
import 'package:complex/newentityfeatures/Models/offering_model.dart';

class OfferingsByGradeForm extends StatefulWidget {
  final OfferingModelGroup offeringModel;
  final String entityid;
  final String entitytype;
  final reloadAction givenreloadaction;

  const OfferingsByGradeForm({
    Key key,
    this.offeringModel,
    this.entityid,
    this.entitytype,
    this.givenreloadaction,
  }) : super(key: key);
  @override
  _OfferingsByGradeFormState createState() => _OfferingsByGradeFormState();
}

class _OfferingsByGradeFormState extends State<OfferingsByGradeForm> {
  CustomTextFieldController _grade = CustomTextFieldController();
  CustomTextFieldController _subject = CustomTextFieldController();
  CustomTextFieldController _group = CustomTextFieldController();

  bool _isIndependent = false;
  bool _hasAttendance = false;
  bool _hasChannel = false;
  bool _hasSameID = false;

  String buttonTitle = "Add";

  ButtonState btnState;
  List<String> grades;
  Future<List<String>> Function(String) groups;
  List<String> subject;
  // final List<String> groups;

  bool _validate() {
    ///when the group is hidden the isvalid will return null
    return _grade.isValid &&
        _subject.isValid &&
        (!_isIndependent || _group.isValid);
  }

  Future _initFiledValue() async {
    if (widget.offeringModel != null) {
      setState(() {
        buttonTitle = "Update";
      });

      Future.delayed(Duration(milliseconds: 80), () {
        setState(() {
          _isIndependent = widget.offeringModel.isindependent;
          _hasAttendance = widget.offeringModel.hasattendence;
          _hasChannel = widget.offeringModel.haschannel;
          _hasSameID = widget.offeringModel.hassameid;
          _group.text = widget.offeringModel.group;
          _grade.text = widget.offeringModel.grade;
          _subject.text = widget.offeringModel.subject;
        });
      });
    }
  }

  @override
  void initState() {
    super.initState();
    print('init state');
  }

  @override
  Widget build(BuildContext context) {
    print(_grade.text);
    return BlocProvider<itembloc.OfferingModelGroupBloc>(
      create: (context) => itembloc.OfferingModelGroupBloc()
        ..add(
          itembloc.getForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Offering Group'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.OfferingModelGroupBloc,
            itembloc.OfferingModelGroupState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            grades = state.grades;
            groups = state.groups;
            subject = state.subject;
            // btnState = state.btnState;

            _initFiledValue();
          }
        }, child: BlocBuilder<itembloc.OfferingModelGroupBloc,
            itembloc.OfferingModelGroupState>(builder: (context, state) {
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    CustomDropDownList<String>(
                      loadData: () async => grades,
                      displayName: (x) => x,
                      shouldReload: true,
                      controller: _grade,
                      title: "Grade",
                      validate: Validate.withOption(isRequired: true),
                      onSelected: (value, index) => setState(() {}),
                    ),
                    CustomDropDownList<String>(
                      loadData: () async => subject,
                      displayName: (x) => x,
                      controller: _subject,
                      title: "Subject",
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomSwitchWithTitle(
                      title: "Is Independent?",
                      isEnabled: _isIndependent,
                      onChange: (x) {
                        setState(() {
                          _isIndependent = x;
                        });
                      },
                    ),
                    if (_isIndependent)
                      CustomDropDownList<String>(
                        initialValue: widget.offeringModel?.group,
                        loadData: () => groups(_grade.text),
                        shouldReload: true,
                        displayName: (x) => x,
                        controller: _group,
                        title: "Group",
                        enabled: _grade.text != null,
                        validate: Validate.withOption(isRequired: true),
                      ),
                    CustomSwitchWithTitle(
                      title: "Has Attendance?",
                      isEnabled: _hasAttendance,
                      onChange: (x) {
                        _hasAttendance = x;
                      },
                    ),
                    CustomSwitchWithTitle(
                      title: "Has Channel?",
                      isEnabled: _hasChannel,
                      onChange: (x) {
                        _hasChannel = x;
                      },
                    ),
                    CustomSwitchWithTitle(
                      title: "Has Same ID?",
                      isEnabled: _hasSameID,
                      onChange: (x) {
                        _hasSameID = x;
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        if (buttonTitle == "Add")
          CustomActionButton(
            state: ButtonState.idle,
            title: buttonTitle,
            gradient: C.bgGradient,
            padding: EdgeInsets.symmetric(
                vertical: height * 1.5, horizontal: width * 5),
            margin: EdgeInsets.symmetric(
                horizontal: width * 12, vertical: height * 3),
            onTap: () async {
              print('add userSession');
              if (_validate()) {
                OfferingModelGroup newOfferingModel = OfferingModelGroup(
                  subject: _subject.text,
                  grade: _grade.text,
                  group: _group.text,
                  hasattendence: _hasAttendance,
                  haschannel: _hasChannel,
                  hassameid: _hasSameID,
                  isindependent: _isIndependent,
                );

                BlocProvider.of<itembloc.OfferingModelGroupBloc>(context).add(
                  itembloc.createItem(
                    item: newOfferingModel,
                    entityid: widget.entityid,
                    entitytype: widget.entitytype,
                  ),
                  // ActionForOfferingByGrade(
                  //   actionType: 'add',
                  //   offeringModelGroup: newOfferingModel,
                  // ),
                );
              }
            },
          ),
      ],
    );
  }
}

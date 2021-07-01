import 'package:complex/domain/lookup/lookup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/newentityfeatures/f_lookups/cf_lookuptypes/exam_term/itembloc/bloc.dart'
    as itembloc;
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;

class ExamTermForm extends StatefulWidget {
  final ExamTermInfo examTermInfo;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;
  ExamTermForm(
      {@required this.examTermInfo,
      @required this.entitytype,
      @required this.entityid,
      @required this.givenreloadaction});
  @override
  _ExamTermFormState createState() => _ExamTermFormState();
}

class _ExamTermFormState extends State<ExamTermForm> {
  CustomTextFieldController _mainTerm = CustomTextFieldController();
  CustomTextFieldController _subTerm = CustomTextFieldController();
  itembloc.ExamTermInfoBloc mbloc;
  bool edit;

  bool _validate() {
    return _mainTerm.isValid && _subTerm.isValid;
  }

  Future _initFiledValue() async {
    edit = widget.examTermInfo != null;

    if (widget.examTermInfo != null) {
      Future.delayed(Duration(milliseconds: 80), () {
        _mainTerm.text = widget.examTermInfo.mainTermName;
        _subTerm.text = widget.examTermInfo.subTermName;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mbloc = itembloc.ExamTermInfoBloc();
    mbloc.add(itembloc.getForNewEntry(
        entitytype: widget.entitytype, entityid: widget.entityid));
    _mainTerm = CustomTextFieldController();
    _mainTerm.text = widget.examTermInfo.mainTermName;
    _subTerm.text = widget.examTermInfo.subTermName;
    edit = widget.examTermInfo != null;
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
        body: BlocListener<itembloc.ExamTermInfoBloc,
            itembloc.ExamTermInfoState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }
        }, child:
            BlocBuilder<itembloc.ExamTermInfoBloc, itembloc.ExamTermInfoState>(
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
                      title: "Main Term",
                      controller: _mainTerm,
                      enabled: !edit,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomTextField(
                      title: "Sub Term",
                      controller: _subTerm,
                      enabled: !edit,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        if (!edit)
          CustomActionButton(
            state: ButtonState.idle,
            title: "Update",
            gradient: C.bgGradient,
            padding: EdgeInsets.symmetric(vertical: height * 1.5),
            margin: EdgeInsets.symmetric(
                horizontal: width * 25, vertical: height * 6),
            onTap: () async {
              if (_validate()) {
                ExamTermInfo _offeringScheduleModel = ExamTermInfo(
                    mainTermName: _mainTerm.text, subTermName: _subTerm.text);

                mbloc.add(itembloc.CreateItem(
                    item: _offeringScheduleModel,
                    entityid: widget.entityid,
                    entitytype: widget.entitytype));
              }
            },
          ),
      ],
    );
  }
}

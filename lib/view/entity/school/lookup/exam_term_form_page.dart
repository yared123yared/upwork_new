import 'package:complex/application/lookup_bloc/lookup_bloc.dart';
import 'package:complex/common/widgets/custom_app_bar.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:complex/view/widget/error_dialogue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
// import 'package:complex/newentityfeatures/f_lookups/cf_lookuptypes/roominfo/itembloc/bloc.dart'
//     as itembloc;
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ExamTermFormPage extends StatefulWidget {
  final ExamTermInfo examTerm;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;

  ExamTermFormPage(
      {@required this.examTerm,
      @required this.entitytype,
      @required this.entityid,
      @required this.givenreloadaction});

  @override
  _ExamTermFormPageState createState() => _ExamTermFormPageState();
}

class _ExamTermFormPageState extends State<ExamTermFormPage> {
  CustomTextFieldController _mainTermName = CustomTextFieldController();
  CustomTextFieldController _subTermName = CustomTextFieldController();

  bool edit = false;

  bool _validate() {
    return Validate.validateAll([_mainTermName, _subTermName]);
  }

  Future _initFiledValue() async {
    edit = widget.examTerm != null;

    if (widget.examTerm != null) {
      Future.delayed(Duration(milliseconds: 80), () {
        _mainTermName.text = widget.examTerm.mainTermName;
        _subTermName.text = widget.examTerm.subTermName;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LookupBloc, LookupState>(
      listener: (context, state) {
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
      },
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
            title: "Exam Term",
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
                            initialValue: widget.examTerm?.mainTermName,
                            title: "Main Exam Term",
                            enabled: !edit,
                            controller: _mainTermName,
                            validate: Validate.withOption(isRequired: true),
                          ),
                          CustomTextField(
                            initialValue: widget.examTerm?.subTermName,
                            title: "Sub Exam Term",
                            enabled: !edit,
                            controller: _subTermName,
                            validate: Validate.withOption(isRequired: true),
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
                  title: !edit ? "Add" : "Update",
                  padding: EdgeInsets.symmetric(vertical: height * 1.5),
                  margin: EdgeInsets.symmetric(
                      horizontal: width * 25, vertical: height * 6),
                  onTap: () async {
                    print('add userSession');
                    if (_validate()) {
                      ExamTermInfo _examTermInfo = ExamTermInfo(
                        mainTermName: _mainTermName.text,
                        subTermName: _subTermName.text,
                      );
                      BlocProvider.of<LookupBloc>(context).add(
                        CreateItem(
                            item: ExamTermInfo(
                              mainTermName: _mainTermName.text,
                              subTermName: _subTermName.text,
                            ),
                            entityid: widget.entityid,
                            entitytype: widget.entitytype),
                      );
                    }
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}

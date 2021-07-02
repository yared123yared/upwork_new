import 'package:complex/application/lookup_bloc/lookup_bloc.dart';
import 'package:complex/view/widget/error_dialogue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/model/dynamic_list_state_class.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:complex/common/page/common_list_page_copy.dart';
import 'package:complex/newentityfeatures/f_lookups/common/bloc/stringlookup/bloc.dart'
    as listbloc;

class GradeListPage extends StatefulWidget {
  final String entityid;
  final String entitytype;
  GradeListPage({@required this.entitytype, @required this.entityid});

  @override
  _GradeListPageState createState() => _GradeListPageState();
}

class _GradeListPageState extends State<GradeListPage> {
  Future<String> _addButtonActions(
      BuildContext context, String entitytype, String entityid) async {
    CustomTextFieldController c = CustomTextFieldController();
    Future<String> sb = Get.generalDialog<String>(
        pageBuilder: (context, animation, secondaryAnimation) {
      return AlertDialog(
        title: Text('Enter the Offering Name'),
        content: CustomTextField(
          controller: c,
          autoFocus: true,
          title: 'Grade',
          validate: Validate.withOption(isRequired: true),
        ),
        actions: [
          OutlinedButton(
            child: Text("Cancel"),
            onPressed: () {
              Navigator.of(context).pop("*NOVALUESET*");
              //Navigator.pop(context);
            },
          ),
          ElevatedButton(
            child: Text("Confirm"),
            onPressed: () {
              if (c.isValid) {
                Navigator.of(context).pop(c.text);
                //Navigator.pop(context);
              }
            },
          ),
        ],
      );
    });

    return sb;
  }

  List<ListStateClass> toCommonListState(
      List<String> listItems, BuildContext context) {
    List<ListStateClass> _dynamicList = [];
    listItems.asMap().forEach((index, item) {
      _dynamicList.add(ListStateClass(
        title: item,
        tapAction: () {
          //$$$${UPDATENAVIGATIONOREMPTY}
        },
        deleteAction: () async {
          bool docancel = await _asyncConfirmDialog(context);
          if (docancel) {
            BlocProvider.of<listbloc.StringListBloc>(context).add(
                listbloc.DeleteItemWithData(
                    entitytype: widget.entitytype,
                    entityid: widget.entitytype,
                    item: item,
                    fieldname: "feeitemlist"));
          }
        },
      ));
    });

    return _dynamicList;
  }

  Future<bool> _asyncConfirmDialog(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: false, // user must tap button for close dialog!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete Item Confirmation ?'),
          content: const Text('This will delete the data.'),
          actions: [
            TextButton(
              child: const Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
            TextButton(
              child: const Text('CONFIRM'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            )
          ],
        );
      },
    );
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
      buildWhen: (p, c) => p.listData != c.listData,
      builder: (context, state) {
        return state.listData.maybeMap(
            grade: (grade) => Scaffold(
                appBar: AppBar(
                  title: Text("Grade"),
                  centerTitle: true,
                ),
                body: grade.list.isNotEmpty
                    ? _blocBuilder(context, grade.list)
                    : Center(child: Text('Empty')),
                floatingActionButton: FloatingActionButton.extended(
                  onPressed: () async {
                    String returnedval = await _addButtonActions(
                        context, widget.entitytype, widget.entityid);
                    if (returnedval != "*NOVALUESET*") {
                      BlocProvider.of<listbloc.StringListBloc>(context).add(
                        listbloc.CreateItem(
                            item: returnedval,
                            entitytype: widget.entitytype,
                            entityid: widget.entityid,
                            fieldname: "feeitemlist"),
                      );
                    } else {
                      returnedval = "*NOVALUESET*";
                    }
                  },
                  icon: Icon(Icons.add),
                  label: Text("Add New"),
                )),
            orElse: () => SizedBox.shrink());
      },
    );
  }

  Widget _blocBuilder(context, List<String> em) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverToBoxAdapter(
            child: CommonListPage(
                canSearch: false,
                updateAction: null,
                appBarTitle: "FeeItems",
                dynamicListState: "Grade",
                listItems:
                    em != null ? toCommonListState(em, context) : Container())),
      ],
    );
  }
}

import 'package:complex/application/lookup_bloc/lookup_bloc.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:complex/view/entity/school/lookup/session_term_form_page.dart';
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
import 'package:logger/logger.dart';

class SessionTermListPage extends StatefulWidget {
  final String entityid;
  final String entitytype;
  SessionTermListPage({@required this.entitytype, @required this.entityid});

  @override
  _SessionTermListPageState createState() => _SessionTermListPageState();
}

class _SessionTermListPageState extends State<SessionTermListPage> {
  VoidCallback addButtonActions({
    @required BuildContext context,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => LookupBloc(),
          child: SessionTermFormPage(
              sessionTermModel: null,
              entitytype: widget.entitytype,
              entityid: widget.entityid,
              givenreloadaction: null),
        ),
      ),
    );
  }

  List<ListStateClass> toCommonListState(
      List<SessionTerm> listItems, BuildContext context) {
    List<ListStateClass> _dynamicList = [];
    listItems.asMap().forEach((index, item) {
      _dynamicList.add(ListStateClass(
        title: item.termName,
        tapAction: () {
          //$$$${UPDATENAVIGATIONOREMPTY}
        },
        deleteAction: () async {
          bool docancel = await _asyncConfirmDialog(context);
          if (docancel) {
            // BlocProvider.of<listbloc.StringListBloc>(context).add(
            //     listbloc.DeleteItemWithData(
            //         entitytype: widget.entitytype,
            //         entityid: widget.entitytype,
            //         item: item[],
            //         fieldname: "feeitemlist"));
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
            sessionTermList: (sessionTerm) => Scaffold(
                appBar: AppBar(
                  title: Text("Session Term List"),
                  centerTitle: true,
                ),
                body: sessionTerm.list.isNotEmpty
                    ? _blocBuilder(context, sessionTerm.list)
                    : Center(child: Text('Empty')),
                floatingActionButton: FloatingActionButton.extended(
                  onPressed: () async {
                    addButtonActions(context: context);
                  },
                  icon: Icon(Icons.add),
                  label: Text("Add New"),
                )),
            orElse: () => Scaffold(
                  appBar: AppBar(
                    title: Text("Grades"),
                    centerTitle: true,
                  ),
                ));
      },
    );
  }

  Widget _blocBuilder(context, List<SessionTerm> em) {
    Logger().i(em.length);
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverToBoxAdapter(
            child: CommonListPage(
                canSearch: false,
                updateAction: null,
                appBarTitle: "grade",
                dynamicListState: "Grade",
                listItems:
                    em != null ? toCommonListState(em, context) : Container())),
      ],
    );
  }
}

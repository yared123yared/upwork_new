import "package:asuka/asuka.dart" as asuka;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:complex/common/model/dynamic_list_state_class.dart';
import 'package:complex/common/page/common_list_page_copy.dart';

import 'package:complex/newentityfeatures/f_lookups/cf_lookuptypes/exam_term/listbloc/bloc.dart'
    as listbloc;
import 'package:complex/newentityfeatures/f_lookups/model/lookups.dart'
    as cmodel;
import 'package:complex/newentityfeatures/f_lookups/cf_lookuptypes/exam_term/presentation/exam_term_form.dart';

class ExamTemInfoList extends StatefulWidget {
  final String entityid;
  final String entitytype;
  ExamTemInfoList({this.entitytype, this.entityid});

  @override
  _ExamTemInfoListState createState() => _ExamTemInfoListState();
}

class _ExamTemInfoListState extends State<ExamTemInfoList> {
  listbloc.ExamTermInfoListBloc mlistbloc;

  void initState() {
    mlistbloc = listbloc.ExamTermInfoListBloc();
    mlistbloc.add(listbloc.getListData(
        entitytype: widget.entitytype, entityid: widget.entityid));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    //profileBloc.dispose() cannot call as ProfileBloc class doesn't have dispose method
    super.dispose();
  }

  void doreload(bool reloadtype) {
    if (reloadtype) {
      mlistbloc.add(listbloc.getListData(
          entitytype: widget.entitytype, entityid: widget.entityid));
    }
  }

  VoidCallback addButtonActions({
    @required BuildContext context,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ExamTermForm(
            examTermInfo: null,
            entitytype: widget.entitytype,
            entityid: widget.entityid,
            givenreloadaction: doreload),
      ),
    );
  }

  List<ListStateClass> toCommonListState(
      List<cmodel.ExamTermInfo> listItems, BuildContext context) {
    List<ListStateClass> _dynamicList = [];
    listItems.asMap().forEach((index, item) {
      _dynamicList.add(ListStateClass(
        title: item.mainTermName,
        subtitle: item.subTermName,
        tapAction: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ExamTermForm(
                  examTermInfo: item,
                  entitytype: widget.entitytype,
                  entityid: widget.entityid,
                  givenreloadaction: doreload),
            ),
          );
        },
        deleteAction: () async {
          bool docancel = await _asyncConfirmDialog(context);
          if (docancel) {
            BlocProvider.of<listbloc.ExamTermInfoListBloc>(context).add(
                listbloc.deleteItemWithData(
                    entitytype: widget.entitytype,
                    entityid: widget.entitytype,
                    item: listItems[index]));
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
    return BlocProvider.value(
      value: mlistbloc,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Exam Term"),
            centerTitle: true,
          ),
          body: BlocListener<listbloc.ExamTermInfoListBloc,
              listbloc.ExamTermInfoListState>(listener: (context, state) {
            if (state is listbloc.IsDeleted) {
              asuka.showSnackBar(SnackBar(
                content: Text("Item is deleted"),
              ));
              doreload(true);
            }
          }, child: BlocBuilder<listbloc.ExamTermInfoListBloc,
              listbloc.ExamTermInfoListState>(builder: (context, state) {
            if (state is listbloc.IsBusy)
              return Center(
                child: Container(
                    width: 20, height: 20, child: CircularProgressIndicator()),
              );
            if (state is listbloc.HasLogicalFaliur)
              return Center(child: Text(state.error));
            if (state is listbloc.HasExceptionFaliur)
              return Center(child: Text(state.error));
            if (state is listbloc.HasExceptionFaliur)
              return Center(child: Text(state.error));
            if (state is listbloc.IsDeleted) {
              return Center(child: Text("Deleted item"));
            }

            if (state is listbloc.IsListDataLoaded) {
              List<cmodel.ExamTermInfo> em = state.listdata;
              return _blocBuilder(context, em);
            }
            return Center(child: Text('Empty'));
          })),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () async {
              addButtonActions(context: context);
            },
            icon: Icon(Icons.add),
            label: Text("Add New"),
          )),
    );
  }

  Widget _blocBuilder(context, List<cmodel.ExamTermInfo> em) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverToBoxAdapter(
            child: CommonListPage(
                canSearch: true,
                updateAction: null,
                appBarTitle: "Exam Term",
                dynamicListState: "Exam Term",
                listItems:
                    em != null ? toCommonListState(em, context) : Container())),
      ],
    );
  }
}

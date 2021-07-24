import 'package:complex/common/widgets/custom_app_bar.dart';
import 'package:complex/common/widgets/custom_drop_down_list.dart';
//
//import "package:asuka/asuka.dart" as asuka;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:complex/common/model/dynamic_list_state_class.dart';
import 'package:complex/common/page/common_list_page_copy.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../listbloc/bloc.dart' as listbloc;
import 'package:complex/newentityfeatures/Models/fee_item_groups_model.dart';
import 'fee_item_grps_form.dart';

class FeeItemGroupsModelListList extends StatefulWidget {
  final String entityid;
  final String entitytype;
  FeeItemGroupsModelListList({this.entitytype, this.entityid});

  @override
  _FeeItemGroupsModelListListState createState() =>
      _FeeItemGroupsModelListListState();
}

class _FeeItemGroupsModelListListState
    extends State<FeeItemGroupsModelListList> {
  listbloc.FeeItemGroupsModelListBloc mlistbloc;
  CustomTextFieldController _grade = CustomTextFieldController();
  CustomTextFieldController _sessionterm = CustomTextFieldController();
  CustomTextFieldController _offering = CustomTextFieldController();

  List<String> gradelist;
  List<String> sessionterm;
  Future<List<String>> offeringgrouplist;
  List<FeeItemGroupsModel> em;
  Future<List<String>> Function(String, String) offeringModelGroupfunc;
  void initState() {
    super.initState();
    mlistbloc = listbloc.FeeItemGroupsModelListBloc();
    mlistbloc.add(listbloc.getPreData(
        entitytype: widget.entitytype, entityid: widget.entityid));
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

  Future addButtonActions({
    @required BuildContext context,
  }) async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FeeItemGroupsModelForm(
            feeItemGroupsModel: null,
            entitytype: widget.entitytype,
            entityid: widget.entityid,
            givenreloadaction: doreload),
      ),
    );
  }

  List<ListStateClass> toCommonListState(
      List<FeeItemGroupsModel> listItems, BuildContext context) {
    List<ListStateClass> _dynamicList = [];
    listItems.asMap().forEach((index, item) {
      int total = 0;
      item.feeItem.forEach((feeItem) {
        total += feeItem.amount;
      });
      _dynamicList.add(ListStateClass(
        title: "${item.scheduleName ?? ''} ${item.feeItem ?? ""}",
        tittleH1: "Grade: ${item.grade}",
        // subtitle: "grade: ${item.grade}",
        tapAction: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FeeItemGroupsModelForm(
                  feeItemGroupsModel: item,
                  entitytype: widget.entitytype,
                  entityid: widget.entityid,
                  givenreloadaction: doreload),
            ),
          );
        },
        deleteAction: () async {
          bool docancel = await _asyncConfirmDialog(context);
          if (docancel) {
            BlocProvider.of<listbloc.FeeItemGroupsModelListBloc>(context).add(
                listbloc.deleteItemWithData(
                    entitytype: widget.entitytype,
                    entityid: widget.entitytype,
                    item: listItems[index]));
          }
        },
        trailingTitle: "$total\$",
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
          appBar: CustomAppBar(
            title: "Fee Item Groups",
          ),
          body: BlocListener<listbloc.FeeItemGroupsModelListBloc,
              listbloc.FeeItemGroupsModelListState>(listener: (context, state) {
            if (state is listbloc.IsDeleted) {
              EasyLoading.showSuccess("Item is deleted");
              doreload(true);
            }

            if (state is listbloc.IsSearchParaLoaded) {
              setState(() {
                gradelist = state.gradelist;
                sessionterm = state.sessiontermlist;
                offeringModelGroupfunc = state.offeringModelGroupfunc;
              });
            }
            if (state is listbloc.IsListDataLoaded) {
              setState(() {
                em = state.listdata;
              });
            }
          }, child: BlocBuilder<listbloc.FeeItemGroupsModelListBloc,
              listbloc.FeeItemGroupsModelListState>(builder: (context, state) {
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
            if (state is listbloc.IsSearchParaLoaded) {
              return _blocBuilder(context);
            }

            if (state is listbloc.IsListDataLoaded) {
              return _blocBuilder(context);
            }
            return Center(child: Text('Empty'));
          })),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () async {
              addButtonActions(context: context);
            },
            icon: Icon(Icons.add),
            label: Text("Add Fee"),
          )),
    );
  }

  Widget _blocBuilder(context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: ExpansionTile(
              title: Text("Select Parameters To Search"),
              children: [
                // CustomDropDownList<String>(
                //   loadData: () async => sessionterm,
                //   shouldReload: true,
                //   displayName: (x) => x,
                //   controller: _sessionterm,
                //   title: "SessionTerm",
                // ),
                CustomDropDownList<String>(
                  loadData: () async => gradelist,
                  shouldReload: true,
                  displayName: (x) => x,
                  controller: _grade,
                  title: "Select Grade",
                  onSelected: (item, index) => setState(() {
                    offeringgrouplist =
                        offeringModelGroupfunc(item, widget.entityid);
                  }),
                ),
                // CustomDropDownList<String>(
                //     loadData: () async =>
                //         offeringgrouplist == null ? [] : offeringgrouplist,
                //     shouldReload: true,
                //     displayName: (x) => x,
                //     controller: _offering,
                //     title: "Select Offering Group",
                //     onSelected: (item, index) {
                //       if (item != null && item.length > 0) {
                //         setState(() {
                //           mlistbloc.add(listbloc.getListDataWithSearchParameter(
                //               entitytype: widget.entitytype,
                //               entityid: widget.entityid,
                //               offeringmodelgroupname: item,
                //               sessionterm: _sessionterm.text));
                //         });
                //       }
                //     }),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: CommonListPage(
                canSearch: false,
                updateAction: null,
                appBarTitle: "Fee Item Groups",
                dynamicListState: "Fee Item Groups",
                listItems: em != null ? toCommonListState(em, context) : [])),
      ],
    );
  }

  void OnSelectedAction(String item, int index) {}
}

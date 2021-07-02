import 'package:complex/common/widgets/custom_drop_down_list.dart';
//
import "package:asuka/asuka.dart" as asuka;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:complex/common/model/dynamic_list_state_class.dart';
import 'package:complex/common/page/common_list_page_copy.dart';
import 'package:complex/common/widgets/custom_text_field.dart';

import '../listbloc/bloc.dart' as listbloc;
import 'package:complex/newentityfeatures/Models/family_member.dart';
import './family_member_form.dart';

class FamilyMemberListList extends StatefulWidget {
  final String entityid;
  final String entitytype;
  FamilyMemberListList({this.entitytype, this.entityid});

  @override
  _FamilyMemberListListState createState() => _FamilyMemberListListState();
}

class _FamilyMemberListListState extends State<FamilyMemberListList> {
  listbloc.FamilyMemberListBloc mlistbloc;
  CustomTextFieldController _unit = CustomTextFieldController();

  CustomTextFieldController _grade = CustomTextFieldController();
  CustomTextFieldController _sessionterm = CustomTextFieldController();
  CustomTextFieldController _offering = CustomTextFieldController();

  List<String> units;

  List<String> gradelist;
  List<String> sessionterm;
  Future<List<String>> offeringgrouplist;
  List<FamilyMember> em;
  Future<List<String>> Function(String, String) offeringModelGroupfunc;
  void initState() {
    mlistbloc = listbloc.FamilyMemberListBloc();
    mlistbloc.add(listbloc.GetPreData(
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
      mlistbloc.add(listbloc.GetListData(
          entitytype: widget.entitytype, entityid: widget.entityid));
    }
  }

  VoidCallback addButtonActions({
    @required BuildContext context,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FamilyMemberForm(
            familyMember: null,
            entitytype: widget.entitytype,
            entityid: widget.entityid,
            givenreloadaction: doreload),
      ),
    );
  }

  List<ListStateClass> toCommonListState(
      List<FamilyMember> listItems, BuildContext context) {
    List<ListStateClass> _dynamicList = [];
    listItems.asMap().forEach((index, item) {
      _dynamicList.add(ListStateClass(
        title: "${item.name ?? ''} ${item.email ?? ""}",
        // subtitle: "grade: ${item}",
        tapAction: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FamilyMemberForm(
                  familyMember: item,
                  entitytype: widget.entitytype,
                  entityid: widget.entityid,
                  givenreloadaction: doreload),
            ),
          );
        },
        deleteAction: () async {
          bool docancel = await _asyncConfirmDialog(context);
          if (docancel) {
            BlocProvider.of<listbloc.FamilyMemberListBloc>(context).add(
                listbloc.DeleteItemWithData(
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
            title: Text("Attach Assignment List"),
            centerTitle: true,
          ),
          body: BlocListener<listbloc.FamilyMemberListBloc,
              listbloc.FamilyMemberListState>(listener: (context, state) {
            if (state is listbloc.IsDeleted) {
              asuka.showSnackBar(SnackBar(
                content: Text("Item is deleted"),
              ));
              doreload(true);
            }

            if (state is listbloc.IsSearchParaLoaded) {
              setState(() {
                units = state.units;

                // gradelist = state.gradelist;
                // sessionterm = state.sessiontermlist;
                // offeringModelGroupfunc = state.offeringModelGroupfunc;
              });
            }
            if (state is listbloc.IsListDataLoaded) {
              setState(() {
                em = state.listdata;
              });
            }
          }, child: BlocBuilder<listbloc.FamilyMemberListBloc,
              listbloc.FamilyMemberListState>(builder: (context, state) {
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
            label: Text("Add New"),
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
                CustomDropDownList<String>(
                  loadData: () async => sessionterm,
                  shouldReload: true,
                  displayName: (x) => x,
                  controller: _sessionterm,
                  title: "SessionTerm",
                ),
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
                CustomDropDownList<String>(
                    loadData: () async => units,
                    shouldReload: true,
                    displayName: (x) => x,
                    controller: _unit,
                    title: "Select Unit",
                    onSelected: (item, index) {
                      if (item != null && item.length > 0) {
                        setState(() {
                          mlistbloc.add(
                            listbloc.GetListDataWithSearchParameter(
                              entitytype: widget.entitytype,
                              entityid: widget.entityid,
                              units: units,
                            ),
                          );
                        });
                      }
                    }),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: CommonListPage(
                canSearch: false,
                updateAction: null,
                appBarTitle: "Attach Assignment List",
                dynamicListState: "Attach Assignment List",
                listItems: em != null ? toCommonListState(em, context) : [])),
      ],
    );
  }

  void OnSelectedAction(String item, int index) {}
}

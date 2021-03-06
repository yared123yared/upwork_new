import 'package:complex/common/widgets/common_list_tile.dart';
import 'package:complex/common/widgets/custom_action_button.dart';
import 'package:complex/common/widgets/custom_app_bar.dart';
import 'package:complex/common/widgets/custom_drop_down_list.dart';
import 'package:complex/newentityfeatures/Models/building_model.dart';
import 'package:complex/newentityfeatures/Models/common/common_models/common_model.dart';
//
//import "package:asuka/asuka.dart" as asuka;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:complex/common/model/dynamic_list_state_class.dart';
import 'package:complex/common/page/common_list_page_copy.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../listbloc/bloc.dart' as listbloc;
import './unit_form.dart';
// import '../model/unit_model.dart';
import 'package:complex/newentityfeatures/Models/unit_model.dart';

class UnitModelListList extends StatefulWidget {
  final String entityid;
  final String entitytype;
  UnitModelListList({this.entitytype, this.entityid});

  @override
  _UnitModelListListState createState() => _UnitModelListListState();
}

class _UnitModelListListState extends State<UnitModelListList> {
  listbloc.UnitModelListBloc mlistbloc;
  CustomTextFieldController _building = CustomTextFieldController();
  CustomTextFieldController _floor = CustomTextFieldController();
  OccupiedUnitLookupModel oul;

  List<BuildingModel> buildings = [];
  List<int> floors = [];
  List<UnitModel> em;
  // List<BuildingModel> buildingList;

  Map<String, Map<int, List<UnitModel>>> list;

  Future<List<String>> Function(String, String) offeringModelGroupfunc;

  void initState() {
    super.initState();
    mlistbloc = listbloc.UnitModelListBloc();
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

  VoidCallback addButtonActions({
    @required BuildContext context,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UnitModelForm(
            unitModel: null,
            entitytype: widget.entitytype,
            entityid: widget.entityid,
            givenreloadaction: doreload),
      ),
    );
  }

  List<ListStateClass> toCommonListState(
      List<UnitModel> listItems, BuildContext context) {
    List<ListStateClass> _dynamicList = [];
    listItems.asMap().forEach((index, item) {
      _dynamicList.add(ListStateClass(
        title: "${item.buildingName ?? ''}: ${item.address ?? ""}",
        // subtitle: "grade: ${item.}",
        tapAction: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UnitModelForm(
                  unitModel: item,
                  entitytype: widget.entitytype,
                  entityid: widget.entityid,
                  givenreloadaction: doreload),
            ),
          );
        },
        deleteAction: () async {
          bool docancel = await _asyncConfirmDialog(context);
          if (docancel) {
            BlocProvider.of<listbloc.UnitModelListBloc>(context).add(
                listbloc.deleteItemWithData(
                    entitytype: widget.entitytype,
                    entityid: widget.entityid,
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
          appBar: CustomAppBar(
            title: "Unit List",
          ),
          body: BlocListener<listbloc.UnitModelListBloc,
              listbloc.UnitModelListState>(listener: (context, state) {
            if (state is listbloc.IsDeleted) {
              EasyLoading.showSuccess("Item is deleted");
              doreload(true);
            }

            // if (state is listbloc.IsSearchParaLoaded) {
            //   setState(() {
            //     gradelist = state.gradelist;
            //     sessionterm = state.sessiontermlist;
            //     offeringModelGroupfunc = state.offeringModelGroupfunc;
            //   });
            // }
            if (state is listbloc.IsBuildingListDataLoaded) {
              setState(() {
                oul = state.oul;
              });
            }
            if (state is listbloc.IsListDataLoaded) {
              setState(() {
                em = state.listdata;
                if (state.listdata != null) {
                  list = Map();
                  state.listdata.forEach((unit) {
                    List<UnitModel> innerList = [];
                    if (list.containsKey(unit.buildingName)) {
                      print("l: ${list[unit.buildingName][unit.floorNum]}");
                      innerList =
                          list[unit.buildingName]?.values?.toList()?.first;
                    }
                    innerList?.add(unit);

                    list[unit.buildingName] = {
                      unit.floorNum: innerList,
                    };
                  });
                }
              });
              print(list);
            }
          }, child: BlocBuilder<listbloc.UnitModelListBloc,
              listbloc.UnitModelListState>(builder: (context, state) {
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
            // if (state is listbloc.IsSearchParaLoaded) {
            //   List<UnitModel> em = state.;

            //   return _blocBuilder(context,em);
            // }
            if (state is listbloc.IsSearchedListDataLoaded) {
              List<UnitModel> em = state.listdata;

              state.listdata;
              List<BuildingModel> bm = [];

              return _blocBuilder(context, em);
            }

            if (state is listbloc.IsListDataLoaded) {
              List<UnitModel> em = state.listdata;
              return _blocBuilder(context, em);
            } else {
              return Center(child: Text('Empty'));
            }
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

  Widget _blocBuilder(context, List<UnitModel> em) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: ExpansionTile(
              title: Text("Select Parameters To Search"),
              children: [
                CustomDropDownList(
                  controller: _building,
                  title: "Building",
                  displayName: (data) => data,
                  loadData: () async => oul.buildinglist,
                  onSelected: (value, index) {
                    setState(() {
                      // floors = blist[value].keys.toList();
                      floors = oul.floormap[value];
                    });
                  },
                ),
                CustomDropDownList(
                  title: "Floor Number",
                  controller: _floor,
                  displayName: (data) => data.toString(),
                  loadData: () async => floors,
                ),
                CustomActionButton(
                    title: "Get Units",
                    onTap: () {
                      if (_floor.text.isEmpty || _building.text.isEmpty) {
                        EasyLoading.showToast(
                            "Please fill the parameters to do the search",
                            duration: Duration(seconds: 2));
                      }

                      BlocProvider.of<listbloc.UnitModelListBloc>(context).add(
                        listbloc.getListDataByBuildingAndFloor(
                          entityid: widget.entityid,
                          entitytype: widget.entitytype,
                          buildingid: _building.text,
                          floor: int.parse(_floor.text),
                        ),
                      );

                      // BlocProvider.of<listbloc.UnitModelListBloc>(context).add(
                      //   listbloc.getListDataByBuildingAndFloor(
                      //     entityid: widget.entityid,
                      //     entitytype: widget.entitytype,
                      //     buildingid: _building.text,
                      //     floor: int.parse(_floor.text),
                      //   ),
                      // );
                    }),
              ],
            ),
          ),
        ),
        // list?.entries != null
        SliverToBoxAdapter(
            child: CommonListPage(
                canSearch: false,
                updateAction: null,
                appBarTitle: "Attach Assignment List",
                dynamicListState: "Attach Assignment List",
                listItems: em != null ? toCommonListState(em, context) : [])),
        // SliverToBoxAdapter(
        //     child: CommonListPage(
        //         canSearch: false,
        //         updateAction: null,
        //         appBarTitle: "Unit List",
        //         dynamicListState: "Unit List",
        //         listItems: em != null ? toCommonListState(em, context) : [])),
      ],
    );
  }

  void OnSelectedAction(String item, int index) {}

  expanded(Widget title, List<Widget> children, [bool expanded]) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        color: Colors.black.withOpacity(.1),
        elevation: 0,
        child: ExpansionTile(
          initiallyExpanded: expanded ?? false,
          title: title,
          children: children,
        ),
      ),
    );
  }
}

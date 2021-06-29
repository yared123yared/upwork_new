import 'package:complex/common/Colors/colors.dart';
import "package:asuka/asuka.dart" as asuka;
import 'package:complex/common/widgets/custom_action_button.dart';
import 'package:complex/common/widgets/custom_drop_down_list.dart';
import 'package:complex/data/data.dart';
import 'package:complex/newentityfeatures/Models/building_model.dart';
import 'package:complex/newentityfeatures/Models/common/button_state.dart';
import 'package:complex/newentityfeatures/Models/registry_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:complex/common/model/dynamic_list_state_class.dart';
import 'package:complex/common/page/common_list_page_copy.dart';
import 'package:provider/provider.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:get/get.dart';

import '../listbloc/bloc.dart' as listbloc;
import 'package:complex/newentityfeatures/Models/registry_model.dart'
    as cmodel;

import './registry_form.dart';
import './resident_form.dart';

class RegistryListList extends StatefulWidget {
  final String entityid;
  final String entitytype;
  final int origintype;
  RegistryListList({this.entitytype, this.entityid, this.origintype});

  @override
  _RegistryListListState createState() => _RegistryListListState();
}

class _RegistryListListState extends State<RegistryListList> {
  listbloc.RegistryModelListBloc mlistbloc;

  CustomTextFieldController _building = CustomTextFieldController();
  CustomTextFieldController _floor = CustomTextFieldController();

  Map<String, Map<String, List<RegistryModel>>> list;
  List<String> buildings = [];
  List floors = [];
  String buildingType;

  List<String> roles = [];

  void initState() {
    mlistbloc = new listbloc.RegistryModelListBloc();
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
    String role;
    if (roles.contains("resident")) {
      role = "resident";
    } else if (roles.contains("manager")) {
      role = "manager";
    } else {
      role = "owner";
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResidentForm(
          entitytype: widget.entitytype,
          entityid: widget.entityid,
          givenreloadaction: doreload,
          btnState: ButtonState.idle,
          registry: null,
          role: role,
        ),
      ),
    );
  }

  List<ListStateClass> toCommonListState(
      List<cmodel.RegistryModel> listItems, BuildContext context) {
    List<ListStateClass> _dynamicList = [];
    listItems.asMap().forEach((index, item) {
      _dynamicList.add(ListStateClass(
        title: "${item.ownerName ?? ""} - ${item}",
        subtitle: item?.residentPublishedContact ??
            item?.residentPublishedContact ??
            "",
        tapAction: () {
          if (roles.contains("resident")) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegistryForm(
                  registryModel: item,
                  entitytype: widget.entitytype,
                  entityid: widget.entityid,origintype: widget.origintype,
                  givenreloadaction: doreload,
                ),
              ),
            );
          } else if (roles.contains("manager")) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResidentForm(
                    entitytype: widget.entitytype,
                    entityid: widget.entityid,
                    givenreloadaction: doreload,origintype: widget.origintype,
                    btnState: ButtonState.idle,
                    registry: item,
                    role: "manager"),
              ),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResidentForm(
                  entitytype: widget.entitytype,
                  entityid: widget.entityid,
                  givenreloadaction: doreload,
                  btnState: ButtonState.idle,
                  registry: item,
                  role: "owner",
                ),
              ),
            );
          }
        },
        deleteAction: () async {
          bool docancel = await _asyncConfirmDialog(context);
          if (docancel) {
            BlocProvider.of<listbloc.RegistryModelListBloc>(context).add(
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
          title: Text("Registry"),
          centerTitle: true,
        ),
        body: BlocListener<listbloc.RegistryModelListBloc,
            listbloc.RegistryModelListState>(listener: (context, state) {
          if (state is listbloc.IsDeleted) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is deleted"),
            ));
            doreload(true);
          }
          if (state is listbloc.IsListDataLoaded) {
            setState(() {
              roles = state.roles ?? [];
              buildingType = state.buildingType;
            });
          }
        }, child: BlocBuilder<listbloc.RegistryModelListBloc,
            listbloc.RegistryModelListState>(builder: (context, state) {
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
          if (state is listbloc.IsSearchedListDataLoaded) {
            List<cmodel.RegistryModel> em = state.listdata;
            return _blocBuilder(context, em);
          }

          if (state is listbloc.IsListDataLoaded) {
            // List<cmodel.RegistryModel> em = state.listdata;
            List<cmodel.RegistryModel> em = [];

            if (state.listdata != null) {
              list = Map();
              state.listdata.forEach((registry) {
                if (!buildings.contains(registry.buildingName)) {
                  buildings.add(registry.buildingName);
                }

                List<RegistryModel> innerList = [];

                // We check if we recently added a registry into the same building. If we did, we set innerList to that building.
                if (list.containsKey(registry.buildingName)) {
                  print("l: ${list[registry.buildingName][registry.floorNum]}");
                  innerList =
                      list[registry.buildingName]?.values?.toList()?.first;
                }

                innerList?.add(registry);

                list[registry.buildingName] = {
                  registry.floorNum: innerList,
                };
              });
            }

            return _blocBuilder(context, em);
          }
          return Center(child: Text('Empty'));
        })),
        floatingActionButton:
            (buildingType == "Multi Owner" && roles.contains('owner')) ||
                    (roles.contains('manager'))
                ? FloatingActionButton.extended(
                    onPressed: () async {
                      addButtonActions(context: context);
                    },
                    icon: Icon(Icons.add),
                    label: Text("Add New"),
                  )
                : Container(),
      ),
    );
  }

  Widget _blocBuilder(context, List<cmodel.RegistryModel> em) {
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
                  loadData: () async => buildings,
                  onSelected: (value, index) {
                    setState(() {
                      floors = list[value].keys.toList();
                    });
                  },
                ),
                CustomDropDownList(
                  title: "Floor Number",
                  controller: _floor,
                  displayName: (data) => data,
                  loadData: () async => floors,
                ),
                CustomActionButton(
                  title: "Get Registries",
                  gradient: C.bgGradient,
                  onTap: () {
                    if (_floor.text.isEmpty || _building.text.isEmpty) {
                      asuka.showSnackBar(
                        SnackBar(
                            content: Text(
                                "Please fill the parameters to do the search")),
                      );
                      return;
                    }

                    BlocProvider.of<listbloc.RegistryModelListBloc>(context)
                        .add(
                      listbloc.getListDataByBuildingAndFloor(
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                        buildingName: _building.text,
                        floorNum: _floor.text,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        // SliverList(
        //   delegate: SliverChildListDelegate(
        //     list.entries
        //         .map<Widget>(
        //           (e) => ExpansionTile(
        //             title: Text(
        //               "Building: ${e.key}",
        //               style: TextStyle(
        //                 fontFamily: 'Merriweather',
        //                 fontWeight: FontWeight.w700,
        //                 fontSize: width * 6,
        //                 color: C.secondaryTextBlue,
        //               ),
        //             ),
        //             children: e.value.entries
        //                 .map<Widget>(
        //                   (floor) => ExpansionTile(
        //                     title: Text(
        //                       "Floor: ${floor.key}",
        //                       style: TextStyle(
        //                         fontFamily: 'Merriweather',
        //                         fontWeight: FontWeight.w700,
        //                         fontSize: width * 6,
        //                         color: C.secondaryTextBlue,
        //                       ),
        //                     ),
        //                     children: [
        //                       CommonListPage(
        //                         canSearch: false,
        //                         updateAction: null,
        //                         appBarTitle: "Class Period List",
        //                         dynamicListState: "Class Period List",
        //                         listItems: em != null
        //                             ? toCommonListState(
        //                                 floor.value.toList(),
        //                                 context,
        //                               )
        //                             : [],
        //                       ),
        //                     ],
        //                     initiallyExpanded: floor.key == e.value.keys.first,
        //                   ),
        //                 )
        //                 .toList(),
        //             initiallyExpanded: e.key == list.keys.first,
        //           ),
        //         )
        //         .toList(),
        //   ),
        // )

        SliverToBoxAdapter(
            child: CommonListPage(
                canSearch: false,
                updateAction: null,
                appBarTitle: "Registry",
                dynamicListState: "Registry",
                listItems:
                    em != null ? toCommonListState(em, context) : Container())),
      ],
    );
  }
}

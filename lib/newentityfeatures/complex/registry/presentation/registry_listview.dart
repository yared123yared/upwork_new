// import "package:asuka/asuka.dart" as asuka;
import 'package:complex/common/helputil.dart';
import 'package:complex/common/widgets/common_list_tile.dart';
import 'package:complex/common/widgets/custom_action_button.dart';
import 'package:complex/common/widgets/custom_drop_down_list.dart';
import 'package:complex/common/widgets/tap_widget.dart';
import 'package:complex/data/data.dart';
import 'package:complex/data/models/response/user_response/residential_unit.dart';
import 'package:complex/newentityfeatures/Models/building_model.dart';
import 'package:complex/newentityfeatures/Models/common/button_state.dart';
import 'package:complex/newentityfeatures/Models/common/common_models/common_model.dart';
import 'package:complex/newentityfeatures/Models/registry_model.dart';
import 'package:complex/newentityfeatures/complex/registry/presentation/registry_expandable_tile.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/view/chat_pages/channel_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:complex/common/model/dynamic_list_state_class.dart';
import 'package:complex/common/page/common_list_page_copy.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../listbloc/bloc.dart' as listbloc;
import 'package:complex/newentityfeatures/Models/registry_model.dart' as cmodel;

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
  OccupiedUnitLookupModel oul;
  Map<String, Map<String, List<RegistryModel>>> list;
  Map<String, Map<String, List<BuildingModel>>> blist;
  // List<String> buildings = [];
  List<BuildingModel> buildings = [];
  List<int> floors = [];
  String buildingType;

  bool isOwner = false; // for originType 3
  List<String> roles = [];
  List<ResidentUnits> residentUnits = [];
  List<String> availableunitsforOwnerForTenant;

  void initState() {
    mlistbloc = listbloc.RegistryModelListBloc();
    if (widget.origintype == 3) {
      mlistbloc.add(
        listbloc.getListDataByListOfUnits(
          entityid: widget.entityid,
          entitytype: widget.entitytype,
          originType: widget.origintype,
          unitlist: residentUnits
              .map((residentUnit) =>
                  residentUnit.rd.substring(0, residentUnit.rd.length - 2))
              .toList(),
        ),
      );
    } else {
      mlistbloc.add(listbloc.getPreData(
          entitytype: widget.entitytype, entityid: widget.entityid));
      // mlistbloc.add(listbloc.getListData(
      //   entitytype: widget.entitytype,
      //   entityid: widget.entityid,
      //   originType: widget.origintype,
      // ));
    }
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
        entitytype: widget.entitytype,
        entityid: widget.entityid,
        originType: widget.origintype,
      ));
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
    bool allowAdd = false;
    bool updateowner = false;
    //origintype =3 for owner/resident view
    if (widget.origintype == 3 && availableunitsforOwnerForTenant.length > 0) {
      allowAdd = true;
    }
    //origintype =1 for manager view
    else if (widget.origintype == 1 && oul.hasfreeunits) {
      allowAdd = true;
    }
    if (allowAdd) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResidentForm(
            entitytype: widget.entitytype,
            entityid: widget.entityid,
            givenreloadaction: doreload,
            origintype: widget.origintype,
            btnState: ButtonState.idle,
            registry: null,
            isOwner: isOwner,
            role: role,
            unitlistForOwnerCase: availableunitsforOwnerForTenant,
            oul: oul,
            updateOwner: false,
          ),
        ),
      );
    }
  }

  List<ListStateClass> toCommonListState(
      List<cmodel.RegistryModel> listItems, BuildContext context) {
    List<ListStateClass> _dynamicList = [];
    listItems.asMap().forEach((index, item) {
      _dynamicList.add(ListStateClass(
        title: "${item.ownerName ?? item.residentName ?? ""} - ${item}",
        subtitle: item?.residentPublishedContact ??
            item?.residentPublishedContact ??
            "",
        tapAction: () {
          /*
          if (roles.contains("resident")) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegistryForm(
                  registryModel: item,
                  entitytype: widget.entitytype,
                  entityid: widget.entityid,
                  origintype: widget.origintype,
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
                  givenreloadaction: doreload,
                  origintype: widget.origintype,
                  btnState: ButtonState.idle,
                  registry: item,
                  isOwner: isOwner,
                  role: "manager",
                  unitlistForOwnerCase: [],
                  oul:oul
                ),
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
                  origintype: widget.origintype,
                  btnState: ButtonState.idle,
                  registry: item,
                  isOwner: isOwner,
                  role: "owner",
                    unitlistForOwnerCase: [],
                    oul:oul

                ),
              ),
            );
          }

 */
        },
        deleteAction: () async {
          /*
          bool docancel = await _asyncConfirmDialog(context);
          if (docancel) {
            BlocProvider.of<listbloc.RegistryModelListBloc>(context).add(
                listbloc.deleteItemWithData(
                    entitytype: widget.entitytype,
                    entityid: widget.entitytype,
                    item: listItems[index]));
          }
          */
        },
      ));
    });

    return _dynamicList;
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
            EasyLoading.showSuccess('Item is deleted');
            doreload(true);
          }
          if (state is listbloc.IsListDataLoaded) {
            state.listdata;
            setState(() {
              roles = state.roles ?? [];
              buildingType = state.buildingType;
            });
          }
          if (state is listbloc.IsSearchedListDataLoaded) {
            setState(() {
              availableunitsforOwnerForTenant = state.availablefortenantunits;
            });
          }
          if (state is listbloc.IsBuildingListDataLoaded) {
            setState(() {
              oul = state.oul;
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
            if (widget.origintype == 3) {
              state.listdata;
            }
            List<BuildingModel> bm = [];

            return _blocBuilder(context, em);
          }

          if (state is listbloc.IsBuildingListDataLoaded) {
            List<cmodel.RegistryModel> em = [];

            return _blocBuilder(context, em);
          }
          return Center(child: Text('Empty'));
        })),
        floatingActionButton: widget.origintype == 1 ||
                widget.origintype == 2 ||
                (widget.origintype == 3 && isOwner)
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
        if (widget.origintype != 3)
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: ExpansionTile(
                title: Text("Select Parameters To Search"),
                initiallyExpanded: true,
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
                    title: "Get Registries",
                    gradient: C.bgGradient,
                    onTap: () {
                      if (_floor.text.isEmpty || _building.text.isEmpty) {
                        EasyLoading.showToast(
                            "Please fill the parameters to do the search",
                            duration: Duration(seconds: 1));
                      }
                      if (widget.origintype == 1 || widget.origintype == 2) {
                        BlocProvider.of<listbloc.RegistryModelListBloc>(context)
                            .add(
                          listbloc.getListDataByBuildingAndFloor(
                            entityid: widget.entityid,
                            entitytype: widget.entitytype,
                            originType: widget.origintype,
                            buildingName: _building.text,
                            floorNum: int.parse(_floor.text),
                          ),
                        );
                      } else if (widget.origintype == 4) {
                        BlocProvider.of<listbloc.RegistryModelListBloc>(context)
                            .add(
                          listbloc.getListDataByBuildingAndFloor(
                            entityid: widget.entityid,
                            entitytype: widget.entitytype,
                            originType: widget.origintype,
                            buildingName: _building.text,
                            floorNum: int.parse(_floor.text),
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        // SliverToBoxAdapter(
        //     child: CommonListPage(
        //         canSearch: false,
        //         updateAction: null,
        //         appBarTitle: "Registry",
        //         dynamicListState: "Registry",
        //         listItems:
        //             em != null ? toCommonListState(em, context) : Container())),
        if (em.isNotEmpty)
          SliverToBoxAdapter(
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: em.length,
              itemBuilder: (context, index) {
                return ExtentionWidgetTile(
                  em[index],
                  em[index].ownerName,
                  entitytype: widget.entitytype,
                  entityid: widget.entityid,
                  givenreloadaction: doreload,
                  origintype: widget.origintype,
                  oul: oul,
                );
                // return RegistryExpandableTile(
                //   registryModel: em[index],
                // );
              },
            ),
          )
      ],
    );
  }
}

class ExtentionWidgetTile extends StatefulWidget {
  RegistryModel registry;
  String currentKey;
  bool isOwner;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;
  final OccupiedUnitLookupModel oul;
  final int origintype;
  // ChannelsBloc channelsBloc;

  ExtentionWidgetTile(
    this.registry,
    this.currentKey, {
    this.entityid,
    this.entitytype,
    this.givenreloadaction,
    this.oul,
    this.origintype,
  });

  @override
  _ExtentionWidgetTileState createState() => _ExtentionWidgetTileState();
}

class _ExtentionWidgetTileState extends State<ExtentionWidgetTile> {
  bool _isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(_isOpen ? 0 : 10),
                    bottomRight: Radius.circular(_isOpen ? 0 : 10))),
            child: TapWidget(
              onTap: () {
                setState(() {
                  _isOpen = !_isOpen;
                });
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "building: ${widget.registry.buildingName}, floor: ${widget.registry.floorNum}",
                          style: Styles.semiBoldText(
                              color: ColorConstants.primaryColor),
                        ),
                        Divider(),
                        Text(
                          "unit: ${widget.registry.unitAddress}",
                          style: Styles.semiBoldText(
                              color: ColorConstants.primaryColor),
                        ),
                      ],
                    ),
                    Icon(
                      _isOpen
                          ? Icons.arrow_drop_up
                          : Icons.arrow_drop_down_outlined,
                      color: Colors.grey.withOpacity(0.5),
                    )
                  ],
                ),
              ),
            ),
          ),
          _childItems()
        ],
      ),
    );
  }

  _childItems() {
    return Container(
      color: Colors.grey.withOpacity(0.1),
      child: Column(
        children: [
          for (int i = 0; i < 2; i++)
            Visibility(
                visible: _isOpen,
                child: CommonListTile(
                  listState: ListStateClass(
                    title: i == 0
                        ? widget.registry.ownerName
                        : widget.registry.residentName,
                    subtitle: i == 0
                        ? widget.registry.ownerPublishedContact
                        : widget.registry.residentPublishedContact,
                    tapAction: () {
                      bool isOwner = (i == 0);
                      if (isOwner) {
                        // if (widget.origintype == 1)
                        Navigator.push(
                          // owner
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResidentForm(
                              entitytype: widget.entitytype,
                              entityid: widget.entityid,
                              givenreloadaction: widget.givenreloadaction,
                              origintype: widget.origintype,
                              btnState: ButtonState.idle,
                              registry: widget.registry,
                              isOwner: isOwner,
                              role: "owner",
                              unitlistForOwnerCase: [],
                              oul: widget.oul,
                              updateOwner: false,
                            ),
                          ),
                        );
                      } else {
                        // if (widget.origintype == 2 || widget.origintype == 3)
                        Navigator.push(
                          // resident
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResidentForm(
                              entitytype: widget.entitytype,
                              entityid: widget.entityid,
                              givenreloadaction: widget.givenreloadaction,
                              origintype: widget.origintype,
                              btnState: ButtonState.idle,
                              registry: widget.registry,
                              isOwner: isOwner,
                              role: "owner",
                              unitlistForOwnerCase: [],
                              oul: widget.oul,
                              updateOwner: false,
                            ),
                          ),
                        );
                      }
                    },
                    deleteAction: () async {
                      // bool docancel = await _asyncConfirmDialog(context);
                      // if (docancel) {
                      //   BlocProvider.of<listbloc.RegistryModelListBloc>(context)
                      //       .add(
                      //     listbloc.deleteItemWithData(
                      //       entitytype: widget.entitytype,
                      //       entityid: widget.entitytype,
                      //       item: widget.registry,
                      //     ),
                      //   );
                      // }
                    },
                  ),
                )),
        ],
      ),
    );
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
}

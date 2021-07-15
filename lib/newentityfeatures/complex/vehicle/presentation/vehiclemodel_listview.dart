import 'package:complex/common/helputil.dart';
import 'package:complex/common/widgets/custom_action_button.dart';
import 'package:complex/common/widgets/custom_drop_down_list.dart';
import 'package:complex/data/data.dart';
import 'package:complex/newentityfeatures/Models/common/common_models/common_model.dart';
//
//import "package:asuka/asuka.dart" as asuka;
import 'package:complex/newentityfeatures/Models/complex_vehicle_model.dart';
import 'package:complex/newentityfeatures/Models/school_owner_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:complex/common/model/dynamic_list_state_class.dart';
import 'package:complex/common/page/common_list_page_copy.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../listbloc/bloc.dart' as listbloc;
import './vehicle_form.dart';

class VehicleModelListList extends StatefulWidget {
  final String entityid;
  final String entitytype;
  final int origintype;
  VehicleModelListList({this.entitytype, this.entityid, this.origintype});

  @override
  _VehicleModelListListState createState() => _VehicleModelListListState();
}

class _VehicleModelListListState extends State<VehicleModelListList> {
  listbloc.VehicleModelListBloc mlistbloc;
  CustomTextFieldController _building = CustomTextFieldController();
  CustomTextFieldController _floorNum = CustomTextFieldController();
  CustomTextFieldController _justunitcontroller = CustomTextFieldController();
  CustomTextFieldController _residentowner = CustomTextFieldController();
  CustomTextFieldController _staffcomtroller = CustomTextFieldController();
  CustomTextFieldController _numplate = CustomTextFieldController();
  List<SchoolOwner> stafflist;
  List<String> residentialunitlist;
  OccupiedUnitLookupModel oul;
  List<int> floors;
  List<UnitOccupants> unitlist;
  List<String> ownerresident;
  UnitOccupants selectedUnitOcupant;
  List<String> platesList;

  SchoolOwner selectedStaff;

  String _search;

  List<ComplexVehicleModel> em;
  Future<List<String>> Function(String, String) offeringModelGroupfunc;
  void initState() {
    mlistbloc = listbloc.VehicleModelListBloc();
    //security or manager
    if (widget.origintype == 1) {
      mlistbloc.add(listbloc.GetPreData(
          entitytype: widget.entitytype, entityid: widget.entityid));
    }
    //vehicle of a staff member
    if (widget.origintype == 2) {
      mlistbloc.add(listbloc.GetListDataByStaffId(
          entitytype: widget.entitytype,
          entityid: widget.entityid,
          staffid: HelpUtil.getUserRepository().getUser().userID));
    } else if (widget.origintype == 3) {
      residentialunitlist = HelpUtil.getUserRepository()
          .getUser()
          .defaultComplexEntity
          .getUnitList();
      mlistbloc.add(listbloc.GetListDataByUnits(
          entitytype: widget.entitytype,
          entityid: widget.entityid,
          residentialunitlist: residentialunitlist));
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
      /*
      mlistbloc.add(listbloc.GetListData(
          entitytype: widget.entitytype, entityid: widget.entityid));

       */
    }
  }

  VoidCallback addButtonActions({
    @required BuildContext context,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => VehicleModelForm(
            vehicleModel: null,
            entitytype: widget.entitytype,
            entityid: widget.entityid,
            givenreloadaction: doreload,
            origintype: widget.origintype,
            residentialunitlist: residentialunitlist,
            staffmemberlist: stafflist,
            oul: oul),
      ),
    );
  }

  List<ListStateClass> toCommonListState(
      List<ComplexVehicleModel> listItems, BuildContext context) {
    List<ListStateClass> _dynamicList = [];
    listItems.asMap().forEach((index, item) {
      _dynamicList.add(ListStateClass(
        title: "${item.userName ?? ''} - ${item.ownerName ?? ""}",
        // subtitle: "grade: ${item}",
        tapAction: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => VehicleModelForm(
                  vehicleModel: item,
                  entitytype: widget.entitytype,
                  entityid: widget.entityid,
                  givenreloadaction: doreload,
                  origintype: widget.origintype,
                  residentialunitlist: [],
                  staffmemberlist: [],
                  oul: null),
            ),
          );
        },
        deleteAction: () async {
          bool docancel = await _asyncConfirmDialog(context);
          if (docancel) {
            BlocProvider.of<listbloc.VehicleModelListBloc>(context).add(
              listbloc.DeleteItemWithData(
                entitytype: widget.entitytype,
                entityid: widget.entitytype,
                item: listItems[index],
                index: index,
              ),
            );
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
            title: Text("Vehicle List"),
            centerTitle: true,
          ),
          body: BlocListener<listbloc.VehicleModelListBloc,
              listbloc.VehicleModelListState>(listener: (context, state) {
            if (state is listbloc.IsDeleted) {
              EasyLoading.showSuccess("Item is deleted");
              doreload(true);
            }

            if (state is listbloc.IsSearchParaLoaded) {
              setState(() {
                oul = state.oul;
                stafflist = state.stafflist;
              });
            }
            if (state is listbloc.IsListDataLoaded) {
              setState(() {
                em = state.listdata;
              });
            }
          }, child: BlocBuilder<listbloc.VehicleModelListBloc,
              listbloc.VehicleModelListState>(builder: (context, state) {
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
        if (widget.origintype == 1)
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: ExpansionTile(
                title: Text("Select Parameters To Search"),
                children: [
                  Column(
                    children: [
                      RadioListTile(
                        value: "Staff",
                        title: Text("Search by Staff"),
                        groupValue: _search,
                        onChanged: (value) {
                          setState(() {
                            _search = value;
                          });
                        },
                      ),
                      RadioListTile(
                        value: "Unit",
                        title: Text("Search by Unit"),
                        groupValue: _search,
                        onChanged: (value) {
                          setState(() {
                            _search = value;
                          });
                        },
                      ),
                      RadioListTile(
                        value: "Number Plate",
                        title: Text("Search by Number Plate"),
                        groupValue: _search,
                        onChanged: (value) {
                          setState(() {
                            _search = value;
                          });
                        },
                      ),
                    ],
                  ),
                  if (_search == "Unit") ...[
                    CustomDropDownList<String>(
                      title: "Building Name",
                      controller: _building,
                      loadData: () async => oul.buildinglist,
                      displayName: (x) => x,
                      validate: Validate.withOption(isRequired: true),
                      onSelected: (value, index) {
                        setState(() {
                          _building.text = value;
                          floors = oul.floormap.containsKey(value)
                              ? oul.floormap[value]
                              : [];
                        });
                      },
                    ),
                    CustomDropDownList<int>(
                      enabled:
                          _building.text != null && _building.text.isNotEmpty,
                      loadData: () async => floors,
                      shouldReload: true,
                      displayName: (x) => x.toString(),
                      title: "Floor Number",
                      controller: _floorNum,
                      validate: Validate.withOption(isRequired: true),
                      onSelected: (floor, index) {
                        setState(() {
                          _floorNum.text = floor.toString();
                          String buildingfloor =
                              _building.text + "@" + _floorNum.text;
                          unitlist =
                              oul.occupiedunits.containsKey(buildingfloor)
                                  ? oul.occupiedunits[buildingfloor]
                                  : [];
                        });
                      },
                    ),
                    CustomDropDownList<UnitOccupants>(
                      title: "Unit Address",
                      enabled: _building.text != null &&
                          _building.text.isNotEmpty &&
                          _floorNum != null &&
                          _floorNum.text.isNotEmpty,
                      controller: _justunitcontroller,
                      //initialValue: widget?.serviceRequestModel?.unitId,
                      loadData: () async => unitlist,
                      displayName: (x) => x.unitaddress,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                      onSelected: (value, index) {
                        setState(() {
                          selectedUnitOcupant = value;
                          ownerresident = [];
                          if (selectedUnitOcupant.hasowner)
                            ownerresident.add("ForOwner");

                          if (selectedUnitOcupant.hasresident)
                            ownerresident.add("ForResident");
                        });
                      },
                    ),
                    CustomDropDownList<String>(
                      title: "Owner/Resident",
                      enabled: _building.text != null &&
                          _building.text.isNotEmpty &&
                          _floorNum.text != null &&
                          _floorNum.text.isNotEmpty &&
                          selectedUnitOcupant != null,
                      controller: _residentowner,
                      //initialValue: widget?.serviceRequestModel?.unitId,
                      loadData: () async => ownerresident,
                      displayName: (x) => x,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                      onSelected: (value, index) {
                        setState(() {
                          /*
                      if(value == "ForOwner")
                        _unitAddress.text= _building.text + "@" + _floorNum.text + "@" + _justunitcontroller.text + "_o" ;
                      if(value == "ForResident")
                        _unitAddress.text= _building.text + "@" + _floorNum.text + "@" + _justunitcontroller.text + "_r" ;

                    */
                        });
                      },
                    ),
                  ],
                  if (_search == "Staff")
                    CustomDropDownList<SchoolOwner>(
                      title: "Staff",
                      controller: _staffcomtroller,
                      loadData: () async => stafflist ?? [],
                      displayName: (x) => x?.display ?? "",
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                      onSelected: (value, index) {
                        setState(() {
                          selectedStaff = value;
                        });
                      },
                    ),
                  if (_search == "Number Plate")
                    CustomDropDownList<String>(
                      title: "Number Plate",
                      controller: _numplate,
                      loadData: () async => platesList ?? [],
                      displayName: (x) => x,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                      // onSelected: (value, index) {},
                    ),
                  CustomActionButton(
                    title: "Get Vehicles",
                    gradient: C.bgGradient,
                    onTap: () {
                      if (_search == "Staff") {
                        if (_staffcomtroller.isValid)
                          mlistbloc.add(
                            listbloc.GetListDataByStaffId(
                              entitytype: widget.entitytype,
                              entityid: widget.entityid,
                              staffid: selectedStaff.id,
                              // staffid: HelpUtil.getUserRepository().getUser().userID,
                            ),
                          );
                      } else if (_search == "Unit") {
                        if (!(_building.isValid &&
                            _floorNum.isValid &&
                            _justunitcontroller.isValid &&
                            _residentowner.isValid))
                              EasyLoading.showInfo("Please fill the dropdowns");

                        String myunit = _building.text + "@" + _floorNum.text + "@" + _justunitcontroller.text + "@" + _residentowner.text =="ForOwner" ?"_o" :"_r";
                        List<String>  myunitlist= [];
                        myunitlist.add(myunit);
                        residentialunitlist = HelpUtil.getUserRepository()
                              .getUser()
                              .defaultComplexEntity
                              .getUnitList();
                        mlistbloc.add(
                          listbloc.GetListDataByUnits(
                            entitytype: widget.entitytype,
                            entityid: widget.entityid,
                            residentialunitlist: myunitlist,
                          ),
                        );
                        }

                      if (_search == "Number Plate") {
                        if (_numplate.isValid)
                          mlistbloc.add(
                            listbloc.GetListDataByNumPlate(
                              entitytype: widget.entitytype,
                              entityid: widget.entityid,
                              numplate: _numplate.text,
                            ),
                          );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        SliverToBoxAdapter(
            child: CommonListPage(
                canSearch: false,
                updateAction: null,
                appBarTitle: "Vehicle List",
                dynamicListState: "Vehicle List",
                listItems: em != null ? toCommonListState(em, context) : [])),
      ],
    );
  }

  void OnSelectedAction(String item, int index) {}
}

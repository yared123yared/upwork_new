import 'package:flutter/material.dart';
import "package:asuka/asuka.dart" as asuka;
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:complex/common/page/common_list_page_copy.dart';
import 'package:complex/common/model/dynamic_list_state_class.dart';

import 'package:complex/newentityfeatures/building/model/building_model.dart'
    as cmodel;
import 'package:complex/newentityfeatures/building/presentation/building_form.dart';
import 'package:complex/newentityfeatures/building/listbloc/buildingmodel_list_bloc.dart';

class BuildingModelList extends StatefulWidget {
  final String entityid;
  final String entitytype;
  BuildingModelList({this.entitytype, this.entityid});

  @override
  _BuildingModelListState createState() => _BuildingModelListState();
}

class _BuildingModelListState extends State<BuildingModelList> {
  BuildingModelListBloc mlistbloc;

  @override
  void initState() {
    super.initState();
    mlistbloc.add(BuildingModelListEvent.getListData(
      widget.entitytype,
      widget.entityid,
    ));
  }

  @override
  void dispose() {
    //profileBloc.dispose() cannot call as ProfileBloc class doesn't have dispose method
    super.dispose();
  }

  void doreload(bool reloadtype) {
    if (reloadtype) {
      mlistbloc.add(BuildingModelListEvent.getListData(
        widget.entitytype,
        widget.entityid,
      ));
    }
  }

  List<ListStateClass> toCommonListState(
      List<cmodel.BuildingModel> listItems, BuildContext context) {
    List<ListStateClass> _dynamicList = [];
    listItems.asMap().forEach((index, item) {
      _dynamicList.add(ListStateClass(
        title: item.buildingName,
        tapAction: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BuildingForm(
                  buildingModel: item,
                  entitytype: widget.entitytype,
                  entityid: widget.entityid,
                  givenreloadaction: doreload),
            ),
          );
        },
        deleteAction: () async {
          bool docancel = await _asyncConfirmDialog(context);
          if (docancel) {
            BlocProvider.of<BuildingModelListBloc>(context)
                .add(BuildingModelListEvent.deleteItemWithData(
              listItems[index],
              widget.entitytype,
              widget.entitytype,
            ));
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
            title: Text("Buildings"),
            centerTitle: true,
          ),
          body: BlocListener<BuildingModelListBloc, BuildingModelListState>(
              listener: (context, state) {
            state.map(
              initial: (e) {},
              isBusy: (e) {},
              isDeleted: (e) {
                asuka.showSnackBar(SnackBar(
                  content: Text("Item is deleted"),
                ));
                doreload(true);
              },
              isListDataLoaded: (e) {},
              hasLogicalFailure: (e) {},
              hasExceptionFailure: (e) {},
            );
          }, child: BlocBuilder<BuildingModelListBloc, BuildingModelListState>(
                  builder: (context, state) {
            state.map(
              initial: (e) {},
              isBusy: (e) {
                return Center(
                  child: Container(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator()),
                );
              },
              isDeleted: (e) {
                return Center(child: Text("Deleted item"));
              },
              isListDataLoaded: (e) {
                List<cmodel.BuildingModel> em = e.listdata;
                return _blocBuilder(context, em);
              },
              hasLogicalFailure: (e) {
                return Center(child: Text(e.error));
              },
              hasExceptionFailure: (e) {
                return Center(child: Text(e.error));
              },
            );

            return Center(child: Text('Empty'));
          })),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BuildingForm(
                      buildingModel: null,
                      entitytype: widget.entitytype,
                      entityid: widget.entityid,
                      givenreloadaction: doreload),
                ),
              );
            },
            icon: Icon(Icons.add),
            label: Text("Add New"),
          )),
    );
  }

  Widget _blocBuilder(context, List<cmodel.BuildingModel> em) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverToBoxAdapter(
            child: CommonListPage(
                canSearch: false,
                updateAction: null,
                appBarTitle: "Buildings",
                dynamicListState: "Buildings",
                listItems:
                    em != null ? toCommonListState(em, context) : Container())),
      ],
    );
  }
}

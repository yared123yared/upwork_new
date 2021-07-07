import "package:asuka/asuka.dart" as asuka;
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:complex/common/model/dynamic_list_state_class.dart';
import 'package:complex/common/page/common_list_page_copy.dart';

import '../listbloc/bloc.dart' as listbloc;
// import '../model/service_request_model.dart' as cmodel;
import 'package:complex/newentityfeatures/Models/service_request_model.dart'
    as cmodel;
import 'service_request_form.dart';

class ServiceModelListList extends StatefulWidget {
  final String entityid;
  final String entitytype;
  final String fieldname;
  final int originlist;
  ServiceModelListList(
      {this.entitytype, this.entityid, this.fieldname, this.originlist});

  @override
  _ServiceModelListListState createState() => _ServiceModelListListState();
}

class _ServiceModelListListState extends State<ServiceModelListList> {
  listbloc.ServiceRequestModelListBloc mlistbloc;
  bool enabledAdding = true;
  bool isStaff = false;

  void initState() {
    super.initState();
    mlistbloc = listbloc.ServiceRequestModelListBloc();
    mlistbloc.add(listbloc.getListDataForServiceRequestType(
      entitytype: widget.entitytype,
      entityid: widget.entityid,
      requesttype: widget.fieldname,
    ));
    mlistbloc.add(listbloc.getListData(
      entitytype: widget.entitytype,
      entityid: widget.entityid,
      originType: widget.originlist,
      // isStaff: isStaff,
    ));
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
        originType: widget.originlist,
      ));
    }
  }

  VoidCallback addButtonActions({
    @required BuildContext context,
  }) {
    var bcd = null;
    if (widget.fieldname == "abc") {
      //bcd = ServiceRequestForm
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ServiceRequestForm(
            serviceRequestModel: null,
            entitytype: widget.entitytype,
            entityid: widget.entityid,
            origintype: widget.originlist,
            givenreloadaction: doreload),
      ),
    );
  }

  List<ListStateClass> toCommonListState(
      List<cmodel.ServiceRequestModel> listItems, BuildContext context) {
    List<ListStateClass> _dynamicList = [];
    listItems.asMap().forEach((index, item) {
      _dynamicList.add(ListStateClass(
        title: item.correspondingName,
        tapAction: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ServiceRequestForm(
                  serviceRequestModel: item,
                  entitytype: widget.entitytype,
                  origintype: widget.originlist,
                  entityid: widget.entityid,
                  givenreloadaction: doreload),
            ),
          );
        },
        deleteAction: () async {
          bool docancel = await _asyncConfirmDialog(context);
          if (docancel) {
            BlocProvider.of<listbloc.ServiceRequestModelListBloc>(context).add(
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
          title: Text("Service Request"),
          centerTitle: true,
        ),
        body: BlocListener<listbloc.ServiceRequestModelListBloc,
            listbloc.ServiceRequestModelListState>(listener: (context, state) {
          if (state is listbloc.IsDeleted) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is deleted"),
            ));
            doreload(true);
          }
        }, child: BlocBuilder<listbloc.ServiceRequestModelListBloc,
            listbloc.ServiceRequestModelListState>(builder: (context, state) {
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
            List<cmodel.ServiceRequestModel> em = state.listdata;
            if (widget.originlist == 2 /*  && !state.isStaff */) {
              enabledAdding = false;
            }
            if (widget.originlist == 3 /*  && state.isStaff */) {
              enabledAdding = false;
            }
            return _blocBuilder(context, em);
          }
          return Center(child: Text('Empty'));
        })),
        floatingActionButton: enabledAdding
            ? FloatingActionButton.extended(
                onPressed: () async {
                  addButtonActions(context: context);
                },
                icon: Icon(Icons.add),
                label: Text("Add New"),
              )
            : SizedBox(),
      ),
    );
  }

  Widget _blocBuilder(context, List<cmodel.ServiceRequestModel> em) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        if (widget.originlist == 1)
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "IsStaff",
                    style: Styles.normalText(size: 16),
                  ),
                  Switch(
                    activeColor: ColorConstants.primaryColor,
                    onChanged: (value) {
                      setState(() {
                        isStaff = value;
                      });
                      mlistbloc.add(
                        listbloc.getListData(
                          entitytype: widget.entitytype,
                          entityid: widget.entityid,
                          originType: widget.originlist,
                          // isStaff: isStaff,
                        ),
                      );
                    },
                    value: isStaff,
                  ),
                ],
              ),
            ),
          ),
        SliverToBoxAdapter(
            child: CommonListPage(
                canSearch: false,
                updateAction: null,
                appBarTitle: "Service Request",
                dynamicListState: "Service Request",
                listItems:
                    em != null ? toCommonListState(em, context) : Container())),
      ],
    );
  }
}

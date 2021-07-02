import "package:asuka/asuka.dart" as asuka;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/model/dynamic_list_state_class.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:get/get.dart';
import 'package:complex/common/page/common_list_page_copy.dart';
import 'package:complex/newentityfeatures/f_lookups/common/bloc/stringlookup/bloc.dart'
    as listbloc;

class OfferingsFormList extends StatefulWidget {
  final String entityid;
  final String entitytype;
  OfferingsFormList({this.entitytype, this.entityid});

  @override
  _OfferingsFormListState createState() => _OfferingsFormListState();
}

class _OfferingsFormListState extends State<OfferingsFormList> {
  listbloc.StringListBloc mlistbloc;

  void initState() {
    mlistbloc = listbloc.StringListBloc();
    mlistbloc.add(listbloc.GetListData(
        entitytype: widget.entitytype,
        entityid: widget.entityid,
        fieldname: ''));
  }

  @override
  void dispose() {
    //profileBloc.dispose() cannot call as ProfileBloc class doesn't have dispose method
    super.dispose();
  }

  void doreload(bool reloadtype) {
    if (reloadtype) {
      mlistbloc.add(listbloc.GetListData(
          entitytype: widget.entitytype,
          entityid: widget.entityid,
          fieldname: ''));
    }
  }

  Future<String> _addButtonActions(
      BuildContext context, String entitytype, String entityid) async {
    CustomTextFieldController c = CustomTextFieldController();
    Future<String> sb = Get.generalDialog<String>(
        pageBuilder: (context, animation, secondaryAnimation) {
      return AlertDialog(
        title: Text('Enter the Offering Name'),
        content: CustomTextField(
          controller: c,
          autoFocus: true,
          title: 'Offering',
          validate: Validate.withOption(isRequired: true),
        ),
        actions: [
          OutlinedButton(
            child: Text("Cancel"),
            onPressed: () {
              Navigator.of(context).pop("*NOVALUESET*");
              //Navigator.pop(context);
            },
          ),
          ElevatedButton(
            child: Text("Confirm"),
            onPressed: () {
              if (c.isValid) {
                Navigator.of(context).pop(c.text);
                //Navigator.pop(context);
              }
            },
          ),
        ],
      );
    });

    return sb;
  }

  List<ListStateClass> toCommonListState(
      List<String> listItems, BuildContext context) {
    List<ListStateClass> _dynamicList = [];
    listItems.asMap().forEach((index, item) {
      _dynamicList.add(ListStateClass(
        title: item,
        tapAction: () {
          //$$$${UPDATENAVIGATIONOREMPTY}
        },
        deleteAction: () async {
          bool docancel = await _asyncConfirmDialog(context);
          if (docancel) {
            BlocProvider.of<listbloc.StringListBloc>(context).add(
                listbloc.DeleteItemWithData(
                    entitytype: widget.entitytype,
                    entityid: widget.entitytype,
                    item: item,
                    fieldname: "subject"));
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
            title: Text("Offerings"),
            centerTitle: true,
          ),
          body: BlocListener<listbloc.StringListBloc, listbloc.StringListState>(
              listener: (context, state) {
            if (state is listbloc.IsDeleted) {
              asuka.showSnackBar(SnackBar(
                content: Text("Item is deleted"),
              ));
              doreload(true);
            }
            if (state is listbloc.IsSaved) {
              asuka.showSnackBar(SnackBar(
                content: Text("Item is Created/Saved"),
              ));
              doreload(true);
            }
          }, child: BlocBuilder<listbloc.StringListBloc,
                  listbloc.StringListState>(builder: (context, state) {
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
              List<String> em = state.listdata;
              return _blocBuilder(context, em);
            }
            return Center(child: Text('Empty'));
          })),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () async {
              String returnedval = await _addButtonActions(
                  context, widget.entitytype, widget.entityid);
              if (returnedval != "*NOVALUESET*") {
                BlocProvider.of<listbloc.StringListBloc>(context).add(
                  listbloc.CreateItem(
                      item: returnedval,
                      entitytype: widget.entitytype,
                      entityid: widget.entityid,
                      fieldname: "subject"),
                );
              } else {
                returnedval = "*NOVALUESET*";
              }
            },
            icon: Icon(Icons.add),
            label: Text("Add New"),
          )),
    );
  }

  Widget _blocBuilder(context, List<String> em) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverToBoxAdapter(
            child: CommonListPage(
                canSearch: false,
                updateAction: null,
                appBarTitle: "Offerings",
                dynamicListState: "Offerings",
                listItems:
                    em != null ? toCommonListState(em, context) : Container())),
      ],
    );
  }
}

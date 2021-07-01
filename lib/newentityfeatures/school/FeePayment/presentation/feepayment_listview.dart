//
import "package:asuka/asuka.dart" as asuka;
import 'package:complex/newentityfeatures/Models/user_reg_fee_collection.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:complex/common/model/dynamic_list_state_class.dart';
import 'package:complex/common/page/common_list_page_copy.dart';
import 'package:complex/common/widgets/custom_text_field.dart';

import '../listbloc/bloc.dart' as listbloc;
import './fee_payment_form.dart';
import 'payment_details_listview.dart';

class FeePaymentListList extends StatefulWidget {
  final String entityid;
  final String entitytype;
  final String sessionTerm;
  final String cardNum;
  FeePaymentListList({
    this.entitytype,
    this.entityid,
    @required this.sessionTerm,
    @required this.cardNum,
  });

  @override
  _FeePaymentListListState createState() => _FeePaymentListListState();
}

class _FeePaymentListListState extends State<FeePaymentListList> {
  listbloc.FeePaymentListBloc mlistbloc;

  bool isAllPaid = false;

  CustomTextFieldController _grade = CustomTextFieldController();
  CustomTextFieldController _sessionterm = CustomTextFieldController();
  CustomTextFieldController _offering = CustomTextFieldController();

  List<String> gradelist;
  List<String> sessionterm;
  Future<List<String>> offeringgrouplist;
  List<UserRegFeeCollectionModel> em;
  Future<List<String>> Function(String, String) offeringModelGroupfunc;

  void initState() {
    mlistbloc = listbloc.FeePaymentListBloc();
    // mlistbloc.add(listbloc.getPreData(
    //     entitytype: widget.entitytype, entityid: widget.entityid));
    mlistbloc.add(
      listbloc.getListData(
        entitytype: widget.entitytype,
        entityid: widget.entityid,
        cardNum: widget.cardNum,
        sessionTerm: widget.sessionTerm,
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    //profileBloc.dispose() cannot call as ProfileBloc class doesn't have dispose method
    super.dispose();
  }

  void doreload(bool reloadtype) {
    if (reloadtype) {
      mlistbloc.add(
        listbloc.getListData(
          entitytype: widget.entitytype,
          entityid: widget.entityid,
          cardNum: widget.cardNum,
          sessionTerm: widget.sessionTerm,
        ),
      );
    }
  }

  VoidCallback addButtonActions({
    @required BuildContext context,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FeePaymentForm(
            userRegFeeCollectionModel: null,
            sessionTerm: widget.sessionTerm,
            entitytype: widget.entitytype,
            entityid: widget.entityid,
            givenreloadaction: doreload),
      ),
    );
  }

  List<ListStateClass> toCommonListState(
      List<UserRegFeeCollectionModel> listItems, BuildContext context) {
    List<ListStateClass> _dynamicList = [];
    listItems.asMap().forEach((index, item) {
      _dynamicList.add(ListStateClass(
        title: "${item.userName ?? ''} ${item.paymentPeriodName ?? ""}",
        // subtitle: "grade: ${item.grade}",
        // info1: item.closed ? "Not Paid" : null,
        // info1color: Colors.red.value,
        subtitle: item.closed ? "Paid" : "Not Paid",

        tapAction: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FeePaymentForm(
                userRegFeeCollectionModel: item,
                sessionTerm: widget.sessionTerm,
                entitytype: widget.entitytype,
                entityid: widget.entityid,
                givenreloadaction: doreload,
              ),
            ),
          );
        },
        customAction_1: CustomAction(
          title: "Payment Details",
          action: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PaymentDetailsListList(
                  userRegFeeCollectionModel: item,
                  entitytype: widget.entitytype,
                  entityid: widget.entityid,
                ),
              ),
            );
          },
        ),
        deleteAction: () async {
          bool docancel = await _asyncConfirmDialog(context);
          if (docancel) {
            BlocProvider.of<listbloc.FeePaymentListBloc>(context).add(
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
          title: Text("Attach Assignment List"),
          centerTitle: true,
        ),
        body: BlocListener<listbloc.FeePaymentListBloc,
            listbloc.FeePaymentListState>(listener: (context, state) {
          if (state is listbloc.IsDeleted) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is deleted"),
            ));
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
            bool paid = true;
            if (state.listdata.length > 0) {
              state.listdata.forEach((item) {
                if (!item.closed) {
                  paid = false;
                }
              });
            } else {
              paid = false;
            }
            setState(() {
              em = state.listdata;
              isAllPaid = paid;
            });
          }
        }, child: BlocBuilder<listbloc.FeePaymentListBloc,
            listbloc.FeePaymentListState>(builder: (context, state) {
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
        floatingActionButton: !isAllPaid
            ? FloatingActionButton.extended(
                onPressed: () async {
                  addButtonActions(context: context);
                },
                icon: Icon(Icons.add),
                label: Text("Add New"),
              )
            : null,
      ),
    );
  }

  Widget _blocBuilder(context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        // SliverToBoxAdapter(
        //   child: Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 30.0),
        //     child: ExpansionTile(
        //       title: Text("Select Parameters To Search"),
        //       children: [
        //         CustomDropDownList<String>(
        //           loadData: () async => sessionterm,
        //           shouldReload: true,
        //           displayName: (x) => x,
        //           controller: _sessionterm,
        //           title: "SessionTerm",
        //         ),
        //         CustomDropDownList<String>(
        //           loadData: () async => gradelist,
        //           shouldReload: true,
        //           displayName: (x) => x,
        //           controller: _grade,
        //           title: "Select Grade",
        //           onSelected: (item, index) => setState(() {
        //             offeringgrouplist =
        //                 offeringModelGroupfunc(item, widget.entityid);
        //           }),
        //         ),
        //         CustomDropDownList<String>(
        //             loadData: () async =>
        //                 offeringgrouplist == null ? [] : offeringgrouplist,
        //             shouldReload: true,
        //             displayName: (x) => x,
        //             controller: _offering,
        //             title: "Select Offering Group",
        //             onSelected: (item, index) {
        //               if (item != null && item.length > 0) {
        //                 setState(() {
        //                   mlistbloc.add(listbloc.getListDataWithSearchParameter(
        //                       entitytype: widget.entitytype,
        //                       entityid: widget.entityid,
        //                       offeringmodelgroupname: item,
        //                       sessionterm: _sessionterm.text));
        //                 });
        //               }
        //             }),
        //       ],
        //     ),
        //   ),
        // ),
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

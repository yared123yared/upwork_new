import 'package:complex/common/Colors/colors.dart';
import 'package:complex/common/widgets/custom_drop_down_list.dart';
//
import "package:asuka/asuka.dart" as asuka;
import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';
import 'package:complex/newentityfeatures/Models/user_reg_fee_collection.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:complex/common/model/dynamic_list_state_class.dart';
import 'package:complex/common/page/common_list_page_copy.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

import '../itembloc/bloc.dart' as itembloc;
import '../listbloc/bloc.dart' as listbloc;
import 'package:complex/newentityfeatures/Models/vrassignment_model.dart';
import './fee_payment_form.dart';
import 'payment_details_form.dart';

class PaymentDetailsListList extends StatefulWidget {
  final String entityid;
  final String entitytype;
  final UserRegFeeCollectionModel userRegFeeCollectionModel;
  PaymentDetailsListList({
    this.entitytype,
    this.entityid,
    @required this.userRegFeeCollectionModel,
  });

  @override
  _PaymentDetailsListListState createState() => _PaymentDetailsListListState();
}

class _PaymentDetailsListListState extends State<PaymentDetailsListList> {
  listbloc.FeePaymentListBloc mlistbloc;

  // bool isAllPaid = false;

  List<PaymentDetails> em;
  FeePlanModel feePlan;
  FeeData nextPaymentDetailsFeeData;

  void initState() {
    mlistbloc = new listbloc.FeePaymentListBloc();
    mlistbloc.add(
      listbloc.getPaymentDetailsListData(
        entitytype: widget.entitytype,
        entityid: widget.entityid,
        userRegFeeCollectionModel: widget.userRegFeeCollectionModel,
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
        listbloc.getPaymentDetailsListData(
          entitytype: widget.entitytype,
          entityid: widget.entityid,
          userRegFeeCollectionModel: widget.userRegFeeCollectionModel,
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
        builder: (context) => PaymentDetailsForm(
          paymentDetails: null,
          userRegFeeCollectionModel: widget.userRegFeeCollectionModel,
          feeData: nextPaymentDetailsFeeData,
          entitytype: widget.entitytype,
          entityid: widget.entityid,
          givenreloadaction: doreload,
        ),
      ),
    );
  }

  List<ListStateClass> toCommonListState(
      List<PaymentDetails> listItems, BuildContext context) {
    List<ListStateClass> _dynamicList = [];
    listItems.asMap().forEach((index, item) {
      _dynamicList.add(ListStateClass(
        title: "${item.receivedByMemberName ?? ''} ${item ?? ""}",
        // subtitle: "grade: ${item.grade}",
        tapAction: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PaymentDetailsForm(
                paymentDetails: item,
                userRegFeeCollectionModel: widget.userRegFeeCollectionModel,
                feeData: null,
                entitytype: widget.entitytype,
                entityid: widget.entityid,
                givenreloadaction: doreload,
              ),
            ),
          );
        },
        // deleteAction: () async {
        //   bool docancel = await _asyncConfirmDialog(context);
        //   if (docancel) {
        //     BlocProvider.of<listbloc.FeePaymentListBloc>(context).add(
        //         listbloc.deletePaymentDetailsItemWithData(
        //             entitytype: widget.entitytype,
        //             entityid: widget.entitytype,
        //             item: listItems[index]));
        //   }
        // },
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

            if (state is listbloc.IsSearchParaLoaded) {}

            if (state is listbloc.IsPaymentDetailsListDataLoaded) {
              setState(() {
                em = state.listdata;
                feePlan = state.feePlan;

                // We will receive a list with all the payment details defined, so we'll just take the length of that list and use it to select the feeData to send to the form
                int numPeriodsDefined = state.listdata?.length ?? 0;
                nextPaymentDetailsFeeData =
                    state.feePlan.feeData[numPeriodsDefined];
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

            if (state is listbloc.IsPaymentDetailsListDataLoaded) {
              return _blocBuilder(context);
            }
            return Center(child: Text('Empty'));
          })),
          floatingActionButton:
              // !isAllPaid
              //     ?
              FloatingActionButton.extended(
            onPressed: () async {
              addButtonActions(context: context);
            },
            icon: Icon(Icons.add),
            label: Text("Add New"),
          )
          // : null,
          ),
    );
  }

  Widget _blocBuilder(context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
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

//
//import "package:asuka/asuka.dart" as asuka;
import 'package:complex/common/widgets/custom_floating_action.dart';
import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';
import 'package:complex/common/widgets/custom_app_bar.dart';
import 'package:complex/newentityfeatures/Models/user_reg_fee_collection.dart';
import 'package:complex/utils/resource/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:complex/common/model/dynamic_list_state_class.dart';
import 'package:complex/common/page/common_list_page_copy.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

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

  List<UserRegFeeCollectionModel> em;
  FeePlanModel feePlan;
  FeeData nextPeriodFeeData;
  List<FeeData> feeDataListToPay;
  int numPeriodsDefined = 0;
  int paidPeriods = 0;

  void initState() {
    mlistbloc = listbloc.FeePaymentListBloc();
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
          cardNum: widget.cardNum,
          entitytype: widget.entitytype,
          entityid: widget.entityid,
          givenreloadaction: doreload,
        ),
      ),
    );
  }

  List<ListStateClass> toCommonListState(
      List<UserRegFeeCollectionModel> listItems,
      List<FeeData> feePlanItems,
      BuildContext context) {
    List<ListStateClass> _dynamicList = [];
    listItems.asMap().forEach(
      (index, item) {
        _dynamicList.add(
          ListStateClass(
            title: numPeriodsDefined > index
                ? "${listItems[index].paymentPeriodName ?? ''}"
                : "${feePlanItems[index].paymentPeriodName ?? ''}",
            tittleH1: numPeriodsDefined > index
                ? "${dateFormatted(listItems[index].periodStartDay) ?? ''} to ${dateFormatted(listItems[index].periodEndDay) ?? ''}"
                : "${dateFormatted(feePlanItems[index].startDate) ?? ''} to ${dateFormatted(feePlanItems[index].endDate) ?? ''}",
            trailingTitle: numPeriodsDefined > index
                ? listItems[index].closed
                    ? "Closed\n${item.totalpaymentmade}\$"
                    : "Not Closed\n${item.totalpaymentmade}\$"
                : "Not Defined",
            trailingBgColor:
                numPeriodsDefined > index && !listItems[index].closed
                    ? Colors.red
                    : null,
            customAction_1: CustomAction(
              title: "Master form",
              action: () {
                if (numPeriodsDefined > index ||
                    (numPeriodsDefined == index &&
                        numPeriodsDefined == paidPeriods)) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FeePaymentForm(
                        userRegFeeCollectionModel: numPeriodsDefined <= index
                            ? null
                            : listItems[index],
                        // listItems[index] != null ? listItems[index] : null,
                        // paidPeriods < index ? listItems[index] : null,
                        feeData: feePlan.feeData[index],
                        sessionTerm: widget.sessionTerm,
                        cardNum: widget.cardNum,
                        entitytype: widget.entitytype,
                        entityid: widget.entityid,
                        givenreloadaction: doreload,
                      ),
                    ),
                  );
                }
              },
            ),
            customAction_2: CustomAction(
              // title: "Payment Details",
              title: "Collect",
              action: () {
                if (paidPeriods >= index) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentDetailsListList(
                        userRegFeeCollectionModel: listItems[index],
                        entitytype: widget.entitytype,
                        entityid: widget.entityid,
                        sessionTerm: widget.sessionTerm,
                        cardNum: widget.cardNum,
                      ),
                    ),
                  );
                }
              },
            ),
            deleteAction: () async {
              /* if (numPeriodsDefined == index) {
            bool docancel = await _asyncConfirmDialog(context);
            if (docancel) {
              BlocProvider.of<listbloc.FeePaymentListBloc>(context).add(
                listbloc.deleteItemWithData(
                  entitytype: widget.entitytype,
                  entityid: widget.entitytype,
                  item: listItems[index],
                ),
              );
            }
          } */
            },
          ),
        );
      },
    );

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
          title: "Fee Payment Periods",
        ),
        body: BlocListener<listbloc.FeePaymentListBloc,
            listbloc.FeePaymentListState>(listener: (context, state) {
          if (state is listbloc.IsDeleted) {
            EasyLoading.showSuccess("Item is deleted");
            doreload(true);
          }

          if (state is listbloc.IsListDataLoaded) {
            bool paid = true;
            int _paidPeriods = 0;
            if (state.listdata.length > 0) {
              state.listdata.forEach((item) {
                if (!item.closed) {
                  paid = false;
                } else {
                  _paidPeriods++;
                }
              });
            } else {
              paid = false;
            }
            setState(() {
              em = state.listdata ?? [];
              feePlan = state.feePlan ?? [];

              List<FeeData> feeDataList = [];
              bool hasEncounteredStartPeriod = false;
              feePlan.feeData.forEach((feeData) {
                if (state.startPeriod == null) {
                  hasEncounteredStartPeriod = true;
                } else if (state.startPeriod == feeData.paymentPeriodName) {
                  hasEncounteredStartPeriod = true;
                }
                if (hasEncounteredStartPeriod == true) {
                  feeDataList.add(feeData);
                }
              });
              feePlan.feeData = feeDataList;

              // We will receive a list with all the payment details defined, so we'll just take the length of that list and use it to select the feeData to send to the form
              numPeriodsDefined = em?.length ?? paidPeriods;
              paidPeriods = _paidPeriods;
              // nextPeriodFeeData = state.feePlan.feeData[numPeriodsDefined];
              // feeDataListToPay =
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
          if (state is listbloc.IsListDataLoaded) {
            return _blocBuilder(context);
          }
          return Center(child: Text('Empty'));
        })),
        floatingActionButton: !isAllPaid
            ? CustomFloatingButton(
                onTap: () async {
                  addButtonActions(context: context);
                },
                buttonColor: ColorConstants.primaryColor,
                borderColor: ColorConstants.primaryColor,
                text: "Add Period",
              )
            : null,
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
            appBarTitle: "Fee Payment Periods",
            dynamicListState: "Fee Payment Periods",
            listItems: em != null
                ? toCommonListState(em, feePlan.feeData, context)
                : [],
          ),
        ),
      ],
    );
  }

  void OnSelectedAction(String item, int index) {}

  String dateFormatted(DateTime date) {
    String month;
    switch(date.month) {
      case 1: month = "Jan"; break;
      case 2: month = "Feb"; break;
      case 3: month = "Mar"; break;
      case 4: month = "Apr"; break;
      case 5: month = "May"; break;
      case 6: month = "Jun"; break;
      case 7: month = "Jul"; break;
      case 8: month = "Aug"; break;
      case 9: month = "Sept"; break;
      case 10: month = "Oct"; break;
      case 11: month = "Nov"; break;
      case 12: month = "Dec"; break;
    }
    return "${month}, ${date.year}";
  }
}

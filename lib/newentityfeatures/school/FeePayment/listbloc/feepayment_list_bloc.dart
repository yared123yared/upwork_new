part of 'bloc.dart';

class FeePaymentListBloc
    extends Bloc<FeePaymentListEvent, FeePaymentListState> {
  FeePaymentRepository mrepository = FeePaymentRepository();
  FeePaymentListBloc() : super(FeePaymentListState());

  @override
  Stream<FeePaymentListState> mapEventToState(
    FeePaymentListEvent event,
  ) async* {
    if (event is getPaymentDetailsListData) {
      yield IsBusy();
      FeePaymentRepositoryReturnData ud =
          await mrepository.getAllPaymentDetailsForUserReg(
        event.userRegFeeCollectionModel,
        event.entitytype,
        event.entityid,
      );

      if (ud.errortype == -1)
        yield IsPaymentDetailsListDataLoaded(listdata: ud.paymentDetailsList, feePlan: ud.feePlan);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is deletePaymentDetailsItemWithData) {
      yield IsBusy();
      FeePaymentRepositoryReturnData ud =
          await mrepository.deletePaymentDetailsWithData(
              event.item, event.paymentDetails, event.entitytype, event.entityid);
      if (ud.errortype == -1)
        yield IsDeleted();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    //
    if (event is getListData) {
      yield IsBusy();
      FeePaymentRepositoryReturnData ud = await mrepository.getAllFeePayments(
        event.cardNum,
        event.sessionTerm,
        event.entitytype,
        event.entityid,
      );

      if (ud.errortype == -1)
        yield IsListDataLoaded(listdata: ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
/* 
    if (event is getListDataWithSearchParameter) {
      yield IsBusy();
      FeePaymentRepositoryReturnData ud =
          await mrepository.getFeePaymentWithOfferingSearch(event.entitytype,
              event.entityid, event.sessionterm, event.offeringmodelgroupname);

      if (ud.errortype == -1)
        yield IsListDataLoaded(listdata: ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
 */
/*     if (event is getPreData) {
      yield IsBusy();
      GenericLookUpDataUsedForRegistration ud = await mrepository
          .getListFormPreLoadData(event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSearchParaLoaded(
            gradelist: ud.grades,
            sessiontermlist: ud.sessionterm,
            offeringModelGroupfunc: ud.offeringModelGroupfunc);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    } */

    if (event is deleteItemWithData) {
      yield IsBusy();
      FeePaymentRepositoryReturnData ud =
          await mrepository.deleteFeePaymentWithData(
              event.item, event.entitytype, event.entityid);
      if (ud.errortype == -1)
        yield IsDeleted();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
  }
}

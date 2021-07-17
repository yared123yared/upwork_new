part of 'bloc.dart';

class FeePaymentBloc extends Bloc<FeePaymentEvent, FeePaymentState> {
  FeePaymentRepository mrepository = FeePaymentRepository();
  FeePaymentBloc() : super(FeePaymentState());

  @override
  Stream<FeePaymentState> mapEventToState(
    FeePaymentEvent event,
  ) async* {
    if (event is AddPaymentDetails) {
      yield IsBusy();
      FeePaymentRepositoryReturnData ud = await mrepository.addPaymentDetailsItem(
        event.item,
        event.paymentDetails,
        event.entitytype,
        event.entityid,
      );

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is UpdatePaymentDetailsWithDiff) {
      yield IsBusy();
      FeePaymentRepositoryReturnData ud = await mrepository.updatePaymentDetailsItemWithDiff(
        event.item,
        event.newPaymentDetails,
        event.oldPaymentDetails,
        event.entitytype,
        event.entityid,
      );

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    //
    if (event is createItem) {
      yield IsBusy();
      FeePaymentRepositoryReturnData ud = await mrepository.createFeePayment(
        event.item,
        event.entitytype,
        event.entityid,
      );

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is getForNewEntry) {
      yield IsBusy();
      FeePaymentEntryData ud = await mrepository.getItemFormNewEntryData(
        event.userRegFeeCollectionModel,
        event.entitytype,
        event.entityid,
      );

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",
          userSessionList: ud.userSessionList,
          membersList: ud.membersList,
          // feePlanList: ud.feePlanList,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      FeePaymentRepositoryReturnData ud = await mrepository.updateFeePayment(
          event.item, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is updateItemWithDiff) {
      yield IsBusy();
      FeePaymentRepositoryReturnData ud =
          await mrepository.updateFeePaymentWithDiff(
              event.newitem, event.olditem, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
  }
}

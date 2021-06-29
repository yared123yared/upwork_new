part of 'bloc.dart';

class PaymentModelBloc extends Bloc<PaymentModelEvent, PaymentModelState> {
  PaymentModelRepository mrepository = PaymentModelRepository();
  PaymentModelBloc() : super(PaymentModelState());

  @override
  Stream<PaymentModelState> mapEventToState(
    PaymentModelEvent event,
  ) async* {
    if (event is createItem) {
      yield IsBusy();
      PaymentModelRepositoryReturnData ud = await mrepository
          .createPaymentModel(event.item, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is getForNewEntry) {
      yield IsBusy();
      PaymentDataEntry ud = await mrepository.getItemFormNewEntryData(
          event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",
          paymentPeriodInfo: ud.paymentPeriodInfo,
          sessions: ud.sessions,
          editable: ud.editable,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      PaymentModelRepositoryReturnData ud = await mrepository
          .updatePaymentModel(event.item, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is updateItemWithDiff) {
      yield IsBusy();
      PaymentModelRepositoryReturnData ud =
          await mrepository.updatePaymentModelWithDiff(
              event.newitem, event.olditem, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is deleteItem) {
      yield IsBusy();
      PaymentModelRepositoryReturnData ud =
          await mrepository.deletePaymentModelWithData(
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
  }
}

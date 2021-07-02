part of 'bloc.dart';

class PaymentPeriodInfoBloc
    extends Bloc<PaymentPeriodInfoEvent, PaymentPeriodInfoState> {
  PaymentPeriodInfoRepository mrepository = PaymentPeriodInfoRepository();
  PaymentPeriodInfoBloc() : super(PaymentPeriodInfoState());

  @override
  Stream<PaymentPeriodInfoState> mapEventToState(
    PaymentPeriodInfoEvent event,
  ) async* {
    if (event is CreateItem) {
      yield IsBusy();
      PaymentPeriodInfoRepositoryReturnData ud =
          await mrepository.createPaymentPeriodInfo(
              event.item, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is GetForNewEntry) {
      yield IsBusy();
      PaymentPeriodInfoRepositoryReturnData ud =
          await mrepository.getInitialData(event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
            entitytype: event.entitytype,
            entityid: event.entityid,
            detailstype: "start",
            sessionterms: ud.sessionterms);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is UpdateItem) {
      yield IsBusy();
      PaymentPeriodInfoRepositoryReturnData ud =
          await mrepository.updatePaymentPeriodInfo(
              event.item, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is UpdateItemWithDiff) {
      yield IsBusy();
      PaymentPeriodInfoRepositoryReturnData ud =
          await mrepository.updatePaymentPeriodInfoWithDiff(
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

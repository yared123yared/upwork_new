part of 'bloc.dart';

class PaymentPeriodInfoListBloc
    extends Bloc<PaymentPeriodInfoListEvent, PaymentPeriodInfoListState> {
  PaymentPeriodInfoRepository mrepository = PaymentPeriodInfoRepository();
  PaymentPeriodInfoListBloc() : super(PaymentPeriodInfoListState());

  @override
  Stream<PaymentPeriodInfoListState> mapEventToState(
    PaymentPeriodInfoListEvent event,
  ) async* {
    if (event is GetListData) {
      yield IsBusy();
      PaymentPeriodInfoRepositoryReturnData ud = await mrepository
          .getAllPaymentPeriodInfos(event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsListDataLoaded(listdata: ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is DeleteItemWithData) {
      yield IsBusy();
      PaymentPeriodInfoRepositoryReturnData ud =
          await mrepository.deletePaymentPeriodInfoWithData(
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

part of 'bloc.dart';

class StringListBloc extends Bloc<StringListEvent, StringListState> {
  StringRepository mrepository = StringRepository();
  ILookupProvider provider = LookupProvider();
  StringListBloc() : super(StringListInitialState());

  @override
  Stream<StringListState> mapEventToState(
    StringListEvent event,
  ) async* {
    if (event is GetListData) {
      yield IsBusy();

      final Either<Failure, List<String>> data =
          await provider.getFeeItemsList(serviceID: event.entityid);
      // StringRepositoryReturnData ud = await mrepository.getAllStrings(
      //     event.entitytype, event.entityid, event.fieldname);

      yield data.fold(
          (l) => HasFailure(failure: l), (r) => IsListDataLoaded(listdata: r));

      // if (ud.errortype == -1)
      //   yield IsListDataLoaded(listdata: ud.itemlist);
      // else if (ud.errortype == 1)
      //   yield HasLogicalFaliur(error: ud.error);
      // else
      //   yield HasExceptionFaliur(error: ud.error);
    }

    if (event is DeleteItemWithData) {
      yield IsBusy();
      StringRepositoryReturnData ud = await mrepository.deleteStringWithData(
          event.item, event.entitytype, event.entityid, event.fieldname);
      if (ud.errortype == -1)
        yield IsDeleted();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is CreateItem) {
      yield IsBusy();
      StringRepositoryReturnData ud = await mrepository.createString(
          event.item, event.entitytype, event.entityid, event.fieldname);
      if (ud.errortype == -1) yield IsSaved();
      if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
  }
}

part of 'bloc.dart';

class UnitModelListBloc extends Bloc<UnitModelListEvent, UnitModelListState> {
  UnitModelRepository mrepository = UnitModelRepository();
  UnitModelListBloc() : super(UnitModelListState());
  NewComplexRepository _complexRepository = Get.find();

  @override
  Stream<UnitModelListState> mapEventToState(
    UnitModelListEvent event,
  ) async* {
    if (event is getListDataByBuildingAndFloor) {
      yield IsBusy();
      UnitModelRepositoryReturnData ud =
          await mrepository.getAllUnitBybuildingFloor(
        event.entitytype,
        event.entityid,
        event.buildingid,
        event.floor,
      );

      if (ud.errortype == -1)
        yield IsSearchedListDataLoaded(
          listdata: ud.itemlist,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is getListData) {
      yield IsBusy();
      UnitModelRepositoryReturnData ud =
          await mrepository.getInitialData(event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsListDataLoaded(listdata: ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is getPreData) {
      yield IsBusy();
      try {
        OccupiedUnitLookupModel oul = await _complexRepository.getOccupiedUnits(
          entitytype: event.entitytype,
          entityid: event.entityid,
        );
        yield IsBuildingListDataLoaded(oul: oul);
      } catch (e) {
        yield HasExceptionFaliur(error: "Error has occured");
      }
    }
    if (event is deleteItemWithData) {
      yield IsBusy();
      UnitModelRepositoryReturnData ud =
          await mrepository.deleteUnitModelWithData(
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

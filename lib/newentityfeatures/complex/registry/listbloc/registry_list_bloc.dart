part of 'bloc.dart';

class RegistryModelListBloc
    extends Bloc<RegistryModelListEvent, RegistryModelListState> {
  RegistryModelRepository mrepository = RegistryModelRepository();
  RegistryModelListBloc() : super(RegistryModelListState());

  @override
  Stream<RegistryModelListState> mapEventToState(
    RegistryModelListEvent event,
  ) async* {
    if (event is getListDataByBuildingAndFloor) {
      yield IsBusy();
      RegistryModelRepositoryReturnData ud =
          await mrepository.getAllRegistryModelsByBuildingAndFloor(
        event.entitytype,
        event.entityid,
        event.originType,
        event.buildingName,
        event.floorNum,
      );

      if (ud.errortype == -1)
        yield IsSearchedListDataLoaded(
          listdata: ud.itemlist,
          roles: ud.listviewData.roles,
          buildingType: ud.listviewData.buildingType,
          isOwner: ud.listviewData.isOwner,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is getListData) {
      yield IsBusy();
      RegistryModelRepositoryReturnData ud =
          await mrepository.getAllRegistryModels(
        event.entitytype,
        event.entityid,
        event.originType,
      );

      if (ud.errortype == -1)
        yield IsListDataLoaded(
          buildingType: ud.listviewData.buildingType,
          listdata: ud.itemlist,
          roles: ud.listviewData.roles,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is deleteItemWithData) {
      yield IsBusy();
      RegistryModelRepositoryReturnData ud =
          await mrepository.deleteRegistryModelWithData(
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

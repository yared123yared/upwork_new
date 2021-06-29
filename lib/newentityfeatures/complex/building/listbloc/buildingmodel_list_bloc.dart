

part of 'bloc.dart';


class BuildingModelListBloc
    extends Bloc<BuildingModelListEvent, BuildingModelListState> {
  BuildingModelRepository mrepository= BuildingModelRepository();
  BuildingModelListBloc() : super(BuildingModelListState());

  @override
  Stream<BuildingModelListState> mapEventToState(
    BuildingModelListEvent event,
  ) async* {


    if (event is getListData) {
      yield IsBusy();
      BuildingModelRepositoryReturnData ud = await mrepository
          .getAllBuildingModels(event.entitytype, event.entityid);
		  
      if (ud.errortype == -1) yield IsListDataLoaded(listdata:ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }


	if (event is deleteItemWithData) {
      yield IsBusy();
	  BuildingModelRepositoryReturnData ud = await mrepository
          .deleteBuildingModelWithData(event.item,event.entitytype, event.entityid);
      if (ud.errortype == -1) yield IsDeleted();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }

	
  }
}

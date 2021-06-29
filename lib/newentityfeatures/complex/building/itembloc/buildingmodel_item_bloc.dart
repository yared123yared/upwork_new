

part of 'bloc.dart';


class BuildingModelBloc
    extends Bloc<BuildingModelEvent, BuildingModelState> {
  BuildingModelRepository mrepository= BuildingModelRepository();
  BuildingModelBloc() : super(BuildingModelState());

  @override
  Stream<BuildingModelState> mapEventToState(
    BuildingModelEvent event,
  ) async* {
    if (event is createItem) {
      yield IsBusy();
      BuildingModelRepositoryReturnData ud = await mrepository
          .createBuildingModel(event.item,event.entitytype, event.entityid);
		  
      if (ud.errortype == -1) yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }
if (event is getForNewEntry) {
      yield IsBusy();
      BuildingModelRepositoryReturnData ud = await mrepository
          .getInitialData(event.entitytype, event.entityid);

      if (ud.errortype == -1) yield IsReadyForDetailsPage(entitytype:event.entitytype,entityid:event.entityid,detailstype: "start"  );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      BuildingModelRepositoryReturnData ud = await mrepository
          .updateBuildingModel(event.item,event.entitytype, event.entityid);
		  
      if (ud.errortype == -1) yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }

    if (event is updateItemWithDiff) {
      yield IsBusy();
      BuildingModelRepositoryReturnData ud = await mrepository
          .updateBuildingModelWithDiff(event.newitem,event.olditem,event.entitytype, event.entityid);
		  
      if (ud.errortype == -1) yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }


	
	
	
  }
}

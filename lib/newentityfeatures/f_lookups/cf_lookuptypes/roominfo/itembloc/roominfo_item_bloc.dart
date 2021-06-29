

part of 'bloc.dart';


class RoomInfoBloc
    extends Bloc<RoomInfoEvent, RoomInfoState> {
  RoomInfoRepository mrepository= RoomInfoRepository();
  RoomInfoBloc() : super(RoomInfoState());

  @override
  Stream<RoomInfoState> mapEventToState(
    RoomInfoEvent event,
  ) async* {
    if (event is createItem) {
      yield IsBusy();
      RoomInfoRepositoryReturnData ud = await mrepository
          .createRoomInfo(event.item,event.entitytype, event.entityid);
		  
      if (ud.errortype == -1) yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }
if (event is getForNewEntry) {
      yield IsBusy();
      RoomInfoRepositoryReturnData ud = await mrepository
          .getInitialData(event.entitytype, event.entityid);

      if (ud.errortype == -1) yield IsReadyForDetailsPage(entitytype:event.entitytype,entityid:event.entityid,detailstype: "start"  );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      RoomInfoRepositoryReturnData ud = await mrepository
          .updateRoomInfo(event.item,event.entitytype, event.entityid);
		  
      if (ud.errortype == -1) yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }

    if (event is updateItemWithDiff) {
      yield IsBusy();
      RoomInfoRepositoryReturnData ud = await mrepository
          .updateRoomInfoWithDiff(event.newitem,event.olditem,event.entitytype, event.entityid);
		  
      if (ud.errortype == -1) yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }


	
	
	
  }
}

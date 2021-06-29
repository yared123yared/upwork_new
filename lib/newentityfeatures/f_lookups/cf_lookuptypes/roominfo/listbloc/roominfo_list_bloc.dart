

part of 'bloc.dart';


class RoomInfoListBloc
    extends Bloc<RoomInfoListEvent, RoomInfoListState> {
  RoomInfoRepository mrepository= RoomInfoRepository();
  RoomInfoListBloc() : super(RoomInfoListState());

  @override
  Stream<RoomInfoListState> mapEventToState(
    RoomInfoListEvent event,
  ) async* {


    if (event is getListData) {
      yield IsBusy();
      RoomInfoRepositoryReturnData ud = await mrepository
          .getAllRoomInfos(event.entitytype, event.entityid);
		  
      if (ud.errortype == -1) yield IsListDataLoaded(listdata:ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }


	if (event is deleteItemWithData) {
      yield IsBusy();
	  RoomInfoRepositoryReturnData ud = await mrepository
          .deleteRoomInfoWithData(event.item,event.entitytype, event.entityid);
      if (ud.errortype == -1) yield IsDeleted();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }

	
  }
}

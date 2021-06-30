

part of 'bloc.dart';


class StringListBloc
    extends Bloc<StringListEvent, StringListState> {
  StringRepository mrepository= StringRepository();
  StringListBloc() : super(StringListState());

  @override
  Stream<StringListState> mapEventToState(
    StringListEvent event,
  ) async* {








    if (event is getListData) {
      yield IsBusy();
      StringRepositoryReturnData ud = await mrepository
          .getAllStrings(event.entitytype, event.entityid,event.fieldname);
		  
      if (ud.errortype == -1) yield IsListDataLoaded(listdata:ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }

	


	if (event is deleteItemWithData) {
      yield IsBusy();
	  StringRepositoryReturnData ud = await mrepository
          .deleteStringWithData(event.item,event.entitytype, event.entityid, event.fieldname,event.roomInfo,event.examTermInfo,event.sessionTermModel);
      if (ud.errortype == -1) yield IsDeleted();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }

	if (event is createItem) {
      yield IsBusy();
	  StringRepositoryReturnData ud = await mrepository
          .createString(event.item,event.entitytype, event.entityid, event.fieldname,event.roomInfo,event.examTermInfo,event.sessionTermModel);
      if (ud.errortype == -1) yield IsSaved();
      if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }
	
	
	
  }
}

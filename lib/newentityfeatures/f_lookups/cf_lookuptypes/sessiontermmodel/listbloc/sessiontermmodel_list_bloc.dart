

part of 'bloc.dart';


class SessionTermModelListBloc
    extends Bloc<SessionTermModelListEvent, SessionTermModelListState> {
  SessionTermModelRepository mrepository= SessionTermModelRepository();
  SessionTermModelListBloc() : super(SessionTermModelListState());

  @override
  Stream<SessionTermModelListState> mapEventToState(
    SessionTermModelListEvent event,
  ) async* {


    if (event is getListData) {
      yield IsBusy();
      SessionTermModelRepositoryReturnData ud = await mrepository
          .getAllSessionTermModels(event.entitytype, event.entityid);
		  
      if (ud.errortype == -1) yield IsListDataLoaded(listdata:ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }


	if (event is deleteItemWithData) {
      yield IsBusy();
	  SessionTermModelRepositoryReturnData ud = await mrepository
          .deleteSessionTermModelWithData(event.item,event.entitytype, event.entityid);
      if (ud.errortype == -1) yield IsDeleted();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }

	
  }
}

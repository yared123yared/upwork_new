

part of 'bloc.dart';


class SessionTermModelBloc
    extends Bloc<SessionTermModelEvent, SessionTermModelState> {
  SessionTermModelRepository mrepository= SessionTermModelRepository();
  SessionTermModelBloc() : super(SessionTermModelState());

  @override
  Stream<SessionTermModelState> mapEventToState(
    SessionTermModelEvent event,
  ) async* {
    if (event is createItem) {
      yield IsBusy();
      SessionTermModelRepositoryReturnData ud = await mrepository
          .createSessionTermModel(event.item,event.entitytype, event.entityid);
		  
      if (ud.errortype == -1) yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }
if (event is getForNewEntry) {
      yield IsBusy();
      SessionTermModelRepositoryReturnData ud = await mrepository
          .getInitialData(event.entitytype, event.entityid);

      if (ud.errortype == -1) yield IsReadyForDetailsPage(entitytype:event.entitytype,entityid:event.entityid,detailstype: "start"  );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      SessionTermModelRepositoryReturnData ud = await mrepository
          .updateSessionTermModel(event.item,event.entitytype, event.entityid);
		  
      if (ud.errortype == -1) yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }

    if (event is updateItemWithDiff) {
      yield IsBusy();
      SessionTermModelRepositoryReturnData ud = await mrepository
          .updateSessionTermModelWithDiff(event.newitem,event.olditem,event.entitytype, event.entityid);
		  
      if (ud.errortype == -1) yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }


	
	
	
  }
}

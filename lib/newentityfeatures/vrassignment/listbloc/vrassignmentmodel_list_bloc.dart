

part of 'bloc.dart';


class VrAssignmentModelListBloc
    extends Bloc<VrAssignmentModelListEvent, VrAssignmentModelListState> {
  VrAssignmentModelRepository mrepository= VrAssignmentModelRepository();
  VrAssignmentModelListBloc() : super(VrAssignmentModelListState());

  @override
  Stream<VrAssignmentModelListState> mapEventToState(
    VrAssignmentModelListEvent event,
  ) async* {


    if (event is getListDataWithSearchParameter) {
      yield IsBusy();
      VrAssignmentModelRepositoryReturnData ud = await mrepository
          .getVrAssignmentModelWithOfferingSearch(event.entitytype, event.entityid,event.sessionterm,event.offeringmodelgroupname);
		  
      if (ud.errortype == -1) yield IsListDataLoaded(listdata:ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }

    if (event is getPreData) {
      yield IsBusy();
      GenericLookUpDataUsedForRegistration ud = await mrepository.getListFormPreLoadData(event.entitytype, event.entityid);



      if (ud.errortype == -1) yield IsSearchParaLoaded(gradelist:ud.grades,sessiontermlist: ud.sessionterm,offeringModelGroupfunc: ud.offeringModelGroupfunc);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }


    if (event is deleteItemWithData) {
      yield IsBusy();
	  VrAssignmentModelRepositoryReturnData ud = await mrepository
          .deleteVrAssignmentModelWithData(event.item,event.entitytype, event.entityid);
      if (ud.errortype == -1) yield IsDeleted();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }

	
  }
}

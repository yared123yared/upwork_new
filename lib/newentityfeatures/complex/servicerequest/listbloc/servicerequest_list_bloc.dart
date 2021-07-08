part of 'bloc.dart';

class ServiceRequestModelListBloc
    extends Bloc<ServiceRequestModelListEvent, ServiceRequestModelListState> {
  ServiceRequestModelRepository mrepository = ServiceRequestModelRepository();
  ServiceRequestModelListBloc() : super(ServiceRequestModelListState());

  @override
  Stream<ServiceRequestModelListState> mapEventToState(
    ServiceRequestModelListEvent event,
  ) async* {
    if (event is getListData) {
      yield IsBusy();
      ServiceRequestModelRepositoryReturnData ud =null;
      //for self
      if(event.originType ==2) {
         ud =
        await mrepository.getAllServiceRequestModelsForStaffId(
          event.entitytype,
          event.entityid,event.originType,event.userid

        );
      }
      //for list of units
      else if(event.originType ==3) {
        ud =
        await mrepository.getAllServiceRequestModelsForListOfUnits(
          event.entitytype,
          event.entityid,event.originType,event.residentunitlist

        );
      }
      //show all servicerequest
      else
        {
          ud =
          await mrepository.getAllServiceRequestModels(
            event.entitytype,
            event.entityid,

          );
        }

      if (ud.errortype == -1)
        yield IsListDataLoaded(listdata: ud.itemlist, isStaff: ud.isStaff);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is getPreData) {
      yield IsBusy();
      ServiceRequestModelRepositoryReturnData ud =
      await mrepository.getAllServiceRequestModels(
        event.entitytype,
        event.entityid

      );

      if (ud.errortype == -1)
        yield IsListDataLoaded(listdata: ud.itemlist, isStaff: ud.isStaff);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }


    if (event is deleteItemWithData) {
      yield IsBusy();
      ServiceRequestModelRepositoryReturnData ud =
          await mrepository.deleteServiceRequestModelWithData(
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

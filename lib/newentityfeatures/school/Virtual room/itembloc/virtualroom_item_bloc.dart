part of 'bloc.dart';

class VirtualRoomModelBloc
    extends Bloc<VirtualRoomModelEvent, VirtualRoomModelState> {
  VirtualRoomModelRepository mrepository = VirtualRoomModelRepository();
  VirtualRoomModelBloc() : super(VirtualRoomModelState());

  @override
  Stream<VirtualRoomModelState> mapEventToState(
    VirtualRoomModelEvent event,
  ) async* {
    if (event is createItem) {
      yield IsBusy();
      VirtualRoomModelRepositoryReturnData ud = await mrepository
          .createVirtualRoomModel(event.item, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is getForNewEntry) {
      yield IsBusy();
      VirtualRoomDataEntry ud = await mrepository.getItemFormNewEntryData(
        event.entitytype,
        event.entityid,
      );

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",
          grades: ud.grades,
          schoolOwners: ud.schoolOwners,
          rooms: ud.rooms,
          buttonState: ud.buttonState,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      VirtualRoomModelRepositoryReturnData ud = await mrepository
          .updateVirtualRoomModel(event.item, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is updateItemWithDiff) {
      yield IsBusy();
      VirtualRoomModelRepositoryReturnData ud =
          await mrepository.updateVirtualRoomModelWithDiff(
              event.newitem, event.olditem, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
  }
}

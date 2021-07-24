part of 'bloc.dart';

class StudentBasicFormModelListBloc extends Bloc<StudentBasicFormModelListEvent,
    StudentBasicFormModelListState> {
  StudentBasicFormModelRepository mrepository =
      StudentBasicFormModelRepository();
  StudentBasicFormModelListBloc() : super(StudentBasicFormModelListState());

  @override
  Stream<StudentBasicFormModelListState> mapEventToState(
    StudentBasicFormModelListEvent event,
  ) async* {
    if (event is StudentSearchEvent) {
      yield IsBusy();
      try {
        List<UserRegistrationModel> users = await UserRegistrationGateway.getUserWithOneOf(
          cardNum: event.card,
          phone: event.phone,
          guardianPhone: event.guardianPhone,
          entitytype: event.entitytype,
          entityid: event.entityid,
        );
        // if (user == null)
        //   yield StudentSearchState(
        //     user: user,
        //     card: event.card,
        //     phone: event.phone,
        //     guardianPhone: event.guardianPhone,
        //   );
        // else {
          yield StudentSearchSuccessfullState(user: users);
        // }
      } catch (e) {
        yield HasExceptionFaliur(error: e);
      }
    }

    if (event is getListData) {
      yield IsBusy();
      StudentBasicFormModelRepositoryReturnData ud =
          await mrepository.getInitialData(event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsListDataLoaded(listdata: ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }



    if (event is getPreData) {
      yield IsBusy();
      GenericLookUpDataUsedForRegistration ud = await mrepository
          .getListFormPreLoadData(event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSearchParaLoaded(
            gradelist: ud.grades,
            sessiontermlist: ud.sessionterm,
            offeringModelGroupfunc: ud.offeringModelGroupfunc);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is deleteItemWithData) {
      yield IsBusy();
      StudentBasicFormModelRepositoryReturnData ud =
          await mrepository.deleteStudentBasicFormModelWithData(
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

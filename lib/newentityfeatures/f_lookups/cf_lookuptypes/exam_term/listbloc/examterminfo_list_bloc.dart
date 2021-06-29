

part of 'bloc.dart';


class ExamTermInfoListBloc
    extends Bloc<ExamTermInfoListEvent, ExamTermInfoListState> {
  ExamTermInfoRepository mrepository= ExamTermInfoRepository();
  ExamTermInfoListBloc() : super(ExamTermInfoListState());

  @override
  Stream<ExamTermInfoListState> mapEventToState(
    ExamTermInfoListEvent event,
  ) async* {


    if (event is getListData) {
      yield IsBusy();
      ExamTermInfoRepositoryReturnData ud = await mrepository
          .getAllExamTermInfos(event.entitytype, event.entityid);
		  
      if (ud.errortype == -1) yield IsListDataLoaded(listdata:ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }


	if (event is deleteItemWithData) {
      yield IsBusy();
	  ExamTermInfoRepositoryReturnData ud = await mrepository
          .deleteExamTermInfoWithData(event.item,event.entitytype, event.entityid);
      if (ud.errortype == -1) yield IsDeleted();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error:ud.error);
      else
        yield HasExceptionFaliur(error:ud.error);
    }

	
  }
}

import 'package:complex/newentityfeatures/f_lookups/model/lookups.dart';

class ExamTermInfoRepositoryReturnData {
  List<ExamTermInfo> itemlist;
  ExamTermInfo item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  ExamTermInfoRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class ExamTermInfoRepository {
  Future<ExamTermInfoRepositoryReturnData> getAllExamTermInfos(
      String entitytype, String entityid) async {
    ExamTermInfoRepositoryReturnData erd =
        new ExamTermInfoRepositoryReturnData();
    erd.itemlist = [];
    ExamTermInfo et1 = ExamTermInfo();
    et1.mainTermName = "MTerm1";
    et1.subTermName = "STerm1";

    ExamTermInfo et2 = ExamTermInfo();
    et2.mainTermName = "MTerm2";
    et2.subTermName = "STerm2";
    erd.itemlist.add(et1);
    erd.itemlist.add(et2);
    erd.errortype = -1;

    return erd;
  }

  Future<ExamTermInfoRepositoryReturnData> createExamTermInfo(
      ExamTermInfo item, String entitytype, String entityid) async {
    ExamTermInfoRepositoryReturnData myreturn =
        ExamTermInfoRepositoryReturnData();
    //Please put your code here

    return myreturn;
  }

  Future<ExamTermInfoRepositoryReturnData> updateExamTermInfo(
      ExamTermInfo item, String entitytype, String entityid) async {
    return null;
  }

  Future<ExamTermInfoRepositoryReturnData> updateExamTermInfoWithDiff(
      ExamTermInfo newitem,
      ExamTermInfo olditem,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<ExamTermInfoRepositoryReturnData> deleteExamTermInfoWithData(
      ExamTermInfo item, String entitytype, String entityid) async {
    return null;
  }

  Future<ExamTermInfoRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    ExamTermInfoRepositoryReturnData myreturn =
        ExamTermInfoRepositoryReturnData();
    myreturn.errortype = -1;
    //Please put your code here
    return myreturn;
  }
}

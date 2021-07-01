import 'package:complex/newentityfeatures/f_lookups/model/lookups.dart';

class SessionTermModelRepositoryReturnData {
  List<SessionTermModel> itemlist;
  SessionTermModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  SessionTermModelRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class SessionTermModelRepository {
  Future<SessionTermModelRepositoryReturnData> getAllSessionTermModels(
      String entitytype, String entityid) async {
    SessionTermModelRepositoryReturnData myreturn =
        SessionTermModelRepositoryReturnData();
    //Please put your code here

    return myreturn;
  }

  Future<SessionTermModelRepositoryReturnData> createSessionTermModel(
      SessionTermModel item, String entitytype, String entityid) async {
    SessionTermModelRepositoryReturnData myreturn =
        SessionTermModelRepositoryReturnData();
    //Please put your code here

    return myreturn;
  }

  Future<SessionTermModelRepositoryReturnData> updateSessionTermModel(
      SessionTermModel item, String entitytype, String entityid) async {
    return null;
  }

  Future<SessionTermModelRepositoryReturnData> updateSessionTermModelWithDiff(
      SessionTermModel newitem,
      SessionTermModel olditem,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<SessionTermModelRepositoryReturnData> deleteSessionTermModelWithData(
      SessionTermModel item, String entitytype, String entityid) async {
    return null;
  }

  Future<SessionTermModelRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    SessionTermModelRepositoryReturnData myreturn =
        SessionTermModelRepositoryReturnData();
    myreturn.errortype = -1;
    //Please put your code here
    return myreturn;
  }
}

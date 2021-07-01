import 'package:complex/domain/lookup/lookup.dart';

class SessionTermModelRepositoryReturnData {
  List<SessionTerm> itemlist;
  SessionTerm item;
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
      SessionTerm item, String entitytype, String entityid) async {
    SessionTermModelRepositoryReturnData myreturn =
        SessionTermModelRepositoryReturnData();
    //Please put your code here

    return myreturn;
  }

  Future<SessionTermModelRepositoryReturnData> updateSessionTermModel(
      SessionTerm item, String entitytype, String entityid) async {
    return null;
  }

  Future<SessionTermModelRepositoryReturnData> updateSessionTermModelWithDiff(
      SessionTerm newitem,
      SessionTerm olditem,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<SessionTermModelRepositoryReturnData> deleteSessionTermModelWithData(
      SessionTerm item, String entitytype, String entityid) async {
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

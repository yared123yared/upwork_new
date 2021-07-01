import 'package:complex/domain/lookup/lookup.dart';

class RoomInfoRepositoryReturnData {
  List<RoomInfo> itemlist;
  RoomInfo item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  RoomInfoRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class RoomInfoRepository {
  Future<RoomInfoRepositoryReturnData> getAllRoomInfos(
      String entitytype, String entityid) async {
    RoomInfoRepositoryReturnData myreturn = RoomInfoRepositoryReturnData();
    //Please put your code here

    return myreturn;
  }

  Future<RoomInfoRepositoryReturnData> createRoomInfo(
      RoomInfo item, String entitytype, String entityid) async {
    RoomInfoRepositoryReturnData myreturn = RoomInfoRepositoryReturnData();
    //Please put your code here

    return myreturn;
  }

  Future<RoomInfoRepositoryReturnData> updateRoomInfo(
      RoomInfo item, String entitytype, String entityid) async {
    return null;
  }

  Future<RoomInfoRepositoryReturnData> updateRoomInfoWithDiff(RoomInfo newitem,
      RoomInfo olditem, String entitytype, String entityid) async {
    return null;
  }

  Future<RoomInfoRepositoryReturnData> deleteRoomInfoWithData(
      RoomInfo item, String entitytype, String entityid) async {
    return null;
  }

  Future<RoomInfoRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    RoomInfoRepositoryReturnData myreturn = RoomInfoRepositoryReturnData();
    myreturn.errortype = -1;
    //Please put your code here
    return myreturn;
  }
}

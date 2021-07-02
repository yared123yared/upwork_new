import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:complex/newentityfeatures/Models/virtual_room_model.dart';
import 'package:complex/newentityfeatures/commonrepo/lookup_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:complex/newentityfeatures/Models/registered_id_model.dart';

import 'package:complex/newentityfeatures/gateway/session_term_gateway.dart';

class VirtualRoomsRepository {
  LookupRepository lookup;
  VirtualRoomsRepository({@required this.lookup});
  Map<String, Map<String, List<VirtualRoomModel>>> _virtualRooms = {};

  Future<void> setVirtualRooms({@required String serviceID}) async {
    List<SessionTerm> _sessionTermsList = await lookup.getSessionTermsList(
      serviceID: serviceID,
    );
    _virtualRooms[serviceID] = {};

    for (SessionTerm session in _sessionTermsList) {
      List<VirtualRoomModel> _tempList =
          await SessionTermGateway.getVirtualRoomList(
        serviceID,
        session.termName,
      );
      _virtualRooms[serviceID][session.termName] = _tempList;
    }
  }

  Future<Map<String, List<VirtualRoomModel>>> getVirtualRooms({
    @required String serviceID,
  }) async {
    if (_virtualRooms[serviceID] == null ||
        _virtualRooms[serviceID].length == 0) {
      await setVirtualRooms(serviceID: serviceID);
    }
    return _virtualRooms[serviceID];
  }

  Future<List<RegisteredIdModel>> getVirtualRoomIDList(
      {@required String serviceID,
      @required String termName,
      @required int vRoomIndex}) async {
    return await getVirtualRooms(serviceID: serviceID)
        .then((vRooms) => vRooms[termName][vRoomIndex].listOfRegisteredId);
  }

  Future<void> addVirtualRooms({
    @required String serviceID,
    @required String sessionID,
    @required VirtualRoomModel virtualRoomModel,
  }) async {
    await SessionTermGateway.addVirtualRoom(
      serviceID: serviceID,
      sessionID: sessionID,
      virtualRoomModel: virtualRoomModel,
    );
    await setVirtualRooms(serviceID: serviceID);
  }
}

import 'dart:convert';

import 'package:complex/newentityfeatures/trips/repository/repo/relation_repository.dart';
import 'package:complex/newentityfeatures/trips/repository/repo/vehicle_repository.dart';
import 'package:complex/newentityfeatures/Models/assignment_model.dart';
import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';
import 'package:complex/newentityfeatures/gateway/vr_assignment_gateway.dart';
import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_model.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/commonrepo/helperrepository.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:complex/newentityfeatures/trips/model/models/relation.dart';

class VehicleRelationRepositoryReturnData {
  List<Relation> itemlist;
  Relation item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  VehicleRelationRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class VehicleRelationsRepository {

  Future<VehicleRelationRepositoryReturnData> getAllVehicleRelations(
      String entitytype, String entityid) async {
    VehicleRelationRepositoryReturnData myreturn =
        VehicleRelationRepositoryReturnData();
    //Please put your code here

    return myreturn;
  }

  Future<GenericLookUpDataUsedForRegistration> getListFormPreLoadData(
      String entitytype, String entityid) async {
    GenericLookUpDataUsedForRegistration grerror =
        new GenericLookUpDataUsedForRegistration();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      GenericLookUpDataUsedForRegistration gr =
          new GenericLookUpDataUsedForRegistration();
      gr.errortype = -1;
      return gr;
    } catch (ex) {
      grerror.errortype = -2;
      print(ex.toString());
      grerror.error = "UNknown exception has occured";
    }
    return grerror;
  }

  Future<GenericLookUpDataUsedForRegistration> getItemFormNewEntryData(
      String entitytype, String entityid) async {
    GenericLookUpDataUsedForRegistration grerror =
        new GenericLookUpDataUsedForRegistration();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      GenericLookUpDataUsedForRegistration gr =
          new GenericLookUpDataUsedForRegistration();
      gr.errortype = -1;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<VehicleRelationRepositoryReturnData>
      getVehicleRelationWithOfferingSearch(String entitytype, String entityid,
          String sessionterm, String offeringgroup) async {
    VehicleRelationRepositoryReturnData grerror =
        new VehicleRelationRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      //Please put your code here
      VehicleRelationRepositoryReturnData gr =
          new VehicleRelationRepositoryReturnData();
      gr.errortype = -1;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<VehicleRelationRepositoryReturnData> createVehicleRelation(
      Relation item, String entitytype, String entityid) async {
    VehicleRelationRepositoryReturnData myreturn =
        VehicleRelationRepositoryReturnData();
    await VehicleRelationRepository.addRelation(
      serviceId: entityid,
      relation: item,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<VehicleRelationRepositoryReturnData> updateVehicleRelation(
      Relation item, String entitytype, String entityid) async {
    VehicleRelationRepositoryReturnData myreturn =
        VehicleRelationRepositoryReturnData();
    await VehicleRelationRepository.updateRelation(
      serviceId: entityid,
      relation: item,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<VehicleRelationRepositoryReturnData> updateVehicleRelationWithDiff(
      Relation newitem,
      Relation olditem,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<VehicleRelationRepositoryReturnData> deleteVehicleRelationWithData(
      Relation item, String entitytype, String entityid) async {
    VehicleRelationRepositoryReturnData myreturn =
        VehicleRelationRepositoryReturnData();
    await VehicleRelationRepository.deleteRelation(
      serviceId: entityid,
      relation: item,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<VehicleRelationRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    VehicleRelationRepositoryReturnData myreturn =
        VehicleRelationRepositoryReturnData();
    myreturn.itemlist = await VehicleRelationRepository.fetchRelations(
      serviceId: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }
}

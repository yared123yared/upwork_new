import 'dart:convert';

import 'package:complex/newentityfeatures/trips/repository/repo/vehicle_repository.dart';
import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:complex/newentityfeatures/trips/model/models/vehicle_model.dart';

class VehicleRegistrationRepositoryReturnData {
  List<ServiceVehicleModel> itemlist;
  ServiceVehicleModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  VehicleRegistrationRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class VehicleRegistrationRepository {

  Future<VehicleRegistrationRepositoryReturnData> getAllVehicleRegistrations(
      String entitytype, String entityid) async {
    VehicleRegistrationRepositoryReturnData myreturn =
        VehicleRegistrationRepositoryReturnData();
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

  Future<VehicleRegistrationRepositoryReturnData>
      getVehicleRegistrationWithOfferingSearch(String entitytype,
          String entityid, String sessionterm, String offeringgroup) async {
    VehicleRegistrationRepositoryReturnData grerror =
        new VehicleRegistrationRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      // List<ServiceVehicleModel> vrlist =
      // await VrAssignmentGateway.getVrAssignmentListForOfferingGroup(
      //     serviceID: entityid,
      //     sessionTerm: sessionterm,
      //     offering: offeringgroup);
      //Please put your code here
      VehicleRegistrationRepositoryReturnData gr =
          new VehicleRegistrationRepositoryReturnData();
      gr.errortype = -1;
      // gr.itemlist = vrlist;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<VehicleRegistrationRepositoryReturnData> createVehicleRegistration(
      ServiceVehicleModel item, String entitytype, String entityid) async {
    VehicleRegistrationRepositoryReturnData myreturn =
        VehicleRegistrationRepositoryReturnData();
    await VehicleRepository.addNewVehicle(
      vehicle: item,
      serviceId: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<VehicleRegistrationRepositoryReturnData> updateVehicleRegistration(
      ServiceVehicleModel item, String entitytype, String entityid) async {
    VehicleRegistrationRepositoryReturnData myreturn =
        VehicleRegistrationRepositoryReturnData();
    await VehicleRepository.updateVehicle(
      vehicle: item,
      serviceId: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<VehicleRegistrationRepositoryReturnData>
      updateVehicleRegistrationWithDiff(
          ServiceVehicleModel newitem,
          ServiceVehicleModel olditem,
          String entitytype,
          String entityid) async {
    return null;
  }

  Future<VehicleRegistrationRepositoryReturnData>
      deleteVehicleRegistrationWithData(
          ServiceVehicleModel item, String entitytype, String entityid) async {
    VehicleRegistrationRepositoryReturnData myreturn =
        VehicleRegistrationRepositoryReturnData();
    var d = await VehicleRepository.deleteVehicle(
      vehicle: item,
      serviceId: entityid,
    );
    print(d);
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<VehicleRegistrationRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    VehicleRegistrationRepositoryReturnData myreturn =
        VehicleRegistrationRepositoryReturnData();
    myreturn.itemlist =
        await VehicleRepository.getVehicleList(serviceId: entityid);
    myreturn.errortype = -1;
    return myreturn;
  }
}

import 'dart:convert';

import 'package:complex/newentityfeatures/trips/model/models/route_points.dart';
import 'package:complex/newentityfeatures/trips/model/models/route_trip.dart';
import 'package:complex/newentityfeatures/trips/model/models/trip_cut.dart';
import 'package:complex/newentityfeatures/trips/model/models/trip_cut_current_status.dart';
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
import 'package:complex/newentityfeatures/trips/repository/repo/end_user_repository.dart'
    as repo;

class EndUserRepositoryReturnData {
  List<VrAssignmentModel> itemlist;
  VrAssignmentModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  EndUserRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class EndUserRepository {

  Future<EndUserRepositoryReturnData> getAllEndUsers(
      String entitytype, String entityid) async {
    EndUserRepositoryReturnData myreturn = EndUserRepositoryReturnData();
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

  Future<EndUserRepositoryReturnData> getEndUserWithOfferingSearch(
      String entitytype,
      String entityid,
      String sessionterm,
      String offeringgroup) async {
    EndUserRepositoryReturnData grerror = new EndUserRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<VrAssignmentModel> vrlist =
          await VrAssignmentGateway.getVrAssignmentListForOfferingGroup(
              serviceID: entityid,
              sessionTerm: sessionterm,
              offering: offeringgroup);
      //Please put your code here
      EndUserRepositoryReturnData gr = new EndUserRepositoryReturnData();
      gr.errortype = -1;
      gr.itemlist = vrlist;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<EndUserRepositoryReturnData> createEndUser(
      VrAssignmentModel item, String entitytype, String entityid) async {
    EndUserRepositoryReturnData myreturn = EndUserRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<EndUserRepositoryReturnData> updateEndUser(
      VrAssignmentModel item, String entitytype, String entityid) async {
    EndUserRepositoryReturnData myreturn = EndUserRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<EndUserRepositoryReturnData> updateEndUserWithDiff(
      VrAssignmentModel newitem,
      VrAssignmentModel olditem,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<EndUserRepositoryReturnData> deleteEndUserWithData(
      VrAssignmentModel item, String entitytype, String entityid) async {
    EndUserRepositoryReturnData myreturn = EndUserRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<EndUserRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    EndUserRepositoryReturnData myreturn = EndUserRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<List> findTripCuts(
      {DateTime startDate,
      String entityid,
      RoutePointsModel startPoint,
      RoutePointsModel endPoint}) async {
    final tripCuts = await repo.EndUserRepository.findTripCuts(
      startDate: startDate,
      serviceID: entityid,
      startPoint: startPoint,
      endPoint: endPoint,
    );

    return tripCuts;
  }

  Future<List<RoutePointsModel>> findRoutePoints(
      {String entityid, String entitytype, String zipCode, String town}) async {
    List<RoutePointsModel> routePoints =
        await repo.EndUserRepository.findRoutePoints(
      serviceID: entityid,
      zipCode: zipCode,
      town: town,
    );
    return routePoints;
  }

  Future<TripCutCurrentStatus> getTripCutStatus(
      {String entityid, TripCut tripCut}) async {
    final tripCutStatus = await repo.EndUserRepository.getTripCutStatus(
      serviceID: entityid,
      tripCut: tripCut,
    );

    return tripCutStatus;
  }

  Future<String> bookTrip({
    RouteTripModel trip,
    String tripCutID,
    String entityid,
    RoutePointsModel startPoint,
    RoutePointsModel endPoint,
    int adultCount,
    int childCount,
    int luggageWeight,
    String seatType,
  }) async {
    final orderId = await repo.EndUserRepository.bookTrip(
      trip: trip,
      tripCutID: tripCutID,
      serviceID: entityid,
      startPoint: startPoint,
      endPoint: endPoint,
      adultCount: adultCount,
      childCount: childCount,
      luggageWeight: luggageWeight,
      seatType: seatType,
    );

    return orderId;
  }
}

import 'dart:convert';

import 'package:complex/newentityfeatures/trips/model/models/route_trip.dart';
import 'package:complex/newentityfeatures/trips/model/models/routes.dart';
import 'package:complex/newentityfeatures/trips/repository/repo/route_repository.dart';
import 'package:complex/newentityfeatures/trips/repository/repo/route_trip_repository.dart';
import 'package:complex/newentityfeatures/trips/repository/repo/trip_cuts_repository.dart';
import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_model.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/commonrepo/helperrepository.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:complex/newentityfeatures/trips/model/models/trip_cut.dart';

class TripCutRepositoryReturnData {
  List<TripCut> itemlist;
  TripCut item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  TripCutRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class TripCutRepository {
  Future<TripCutRepositoryReturnData> getAllTripCuts(
      String entitytype, String entityid) async {
    TripCutRepositoryReturnData myreturn = TripCutRepositoryReturnData();
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

  Future<TripCutRepositoryReturnData> getTripCutWithOfferingSearch(
      String entitytype,
      String entityid,
      String sessionterm,
      String offeringgroup) async {
    TripCutRepositoryReturnData grerror = new TripCutRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      TripCutRepositoryReturnData gr = new TripCutRepositoryReturnData();
      gr.errortype = -1;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  findTrip({String dayName, String routeName, String entityid}) async {
    List<RouteTripModel> trips = await RoutesTripRepository.findTrip(
      dayName: dayName,
      routeName: routeName,
      serviceID: entityid,
    );
    return trips;
  }

  Future<TripCutRepositoryReturnData> createTripCut(
      TripCut item, String entitytype, String entityid) async {
    TripCutRepositoryReturnData myreturn = TripCutRepositoryReturnData();
    await TripCutsRepository.addTripCut(
      tripCut: item,
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<TripCutRepositoryReturnData> updateTripCut(
      TripCut item, String entitytype, String entityid) async {
    TripCutRepositoryReturnData myreturn = TripCutRepositoryReturnData();
    await TripCutsRepository.updateTripCut(
      tripCut: item,
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<TripCutRepositoryReturnData> updateTripCutWithDiff(TripCut newitem,
      TripCut olditem, String entitytype, String entityid) async {
    return null;
  }

  Future<TripCutRepositoryReturnData> deleteTripCutWithData(
      TripCut item, String entitytype, String entityid) async {
    TripCutRepositoryReturnData myreturn = TripCutRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<TripCutRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    TripCutRepositoryReturnData myreturn = TripCutRepositoryReturnData();
    myreturn.itemlist = await TripCutsRepository.fetchTripCuts(
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }
}

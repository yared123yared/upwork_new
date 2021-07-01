import 'package:complex/newentityfeatures/trips/model/models/routes.dart';
import 'package:complex/newentityfeatures/trips/repository/repository.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/trips/model/models/route_trip.dart';

class RouteTripRepositoryReturnData {
  List<RouteTripModel> itemlist;
  RouteTripModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  RouteTripRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class RouteTripRepository {
  Future<RouteTripRepositoryReturnData> getAllRouteTrips(
      String entitytype, String entityid) async {
    RouteTripRepositoryReturnData myreturn = RouteTripRepositoryReturnData();
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

  Future<RouteTripRepositoryReturnData> getRouteTripWithOfferingSearch(
      String entitytype,
      String entityid,
      String sessionterm,
      String offeringgroup) async {
    RouteTripRepositoryReturnData grerror = RouteTripRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      RouteTripRepositoryReturnData gr = RouteTripRepositoryReturnData();
      gr.errortype = -1;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  findRoutes({String routeName, String entityid}) async {
    List<RouteModel> routes = await RoutesRepository.findRoutes(
      routeName: routeName,
      serviceID: entityid,
    );

    return routes;
  }

  Future<RouteTripRepositoryReturnData> createRouteTrip(
      RouteTripModel item, String entitytype, String entityid) async {
    RouteTripRepositoryReturnData myreturn = RouteTripRepositoryReturnData();
    await RoutesTripRepository.addNewRouteTrip(
      routeTrip: item,
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<RouteTripRepositoryReturnData> updateRouteTrip(
      RouteTripModel item, String entitytype, String entityid) async {
    RouteTripRepositoryReturnData myreturn = RouteTripRepositoryReturnData();
    await RoutesTripRepository.updateRouteTrip(
        routeTrip: item, serviceID: entityid);
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<RouteTripRepositoryReturnData> updateRouteTripWithDiff(
      RouteTripModel newitem,
      RouteTripModel olditem,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<RouteTripRepositoryReturnData> deleteRouteTripWithData(
      RouteTripModel item, String entitytype, String entityid) async {
    RouteTripRepositoryReturnData myreturn = RouteTripRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<RouteTripRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    RouteTripRepositoryReturnData myreturn = RouteTripRepositoryReturnData();
    myreturn.errortype = -1;
    myreturn.itemlist = await RoutesTripRepository.fetchRouteTripList(
      serviceID: entityid,
    );
    return myreturn;
  }
}

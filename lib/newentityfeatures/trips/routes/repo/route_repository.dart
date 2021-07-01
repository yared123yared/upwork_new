import 'package:complex/newentityfeatures/trips/model/models/route_points.dart';
import 'package:complex/newentityfeatures/trips/model/models/routes.dart';
import 'package:complex/newentityfeatures/trips/repository/repo/route_points_repository.dart';
import 'package:complex/newentityfeatures/trips/repository/repository.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';

class RouteRepositoryReturnData {
  List<RouteModel> itemlist;
  RouteModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  RouteRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class RouteRepository {
  Future<RouteRepositoryReturnData> getAllRoutes(
      String entitytype, String entityid) async {
    RouteRepositoryReturnData myreturn = RouteRepositoryReturnData();
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

  Future<RouteRepositoryReturnData> getRouteWithOfferingSearch(
      String entitytype,
      String entityid,
      String sessionterm,
      String offeringgroup) async {
    RouteRepositoryReturnData grerror = new RouteRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      // List<RouteModel> vrlist =
      //     await VrAssignmentGateway.getVrAssignmentListForOfferingGroup(
      //         serviceID: entityid,
      //         sessionTerm: sessionterm,
      //         offering: offeringgroup);
      //Please put your code here
      // gr.itemlist = vrlist;
      RouteRepositoryReturnData gr = new RouteRepositoryReturnData();
      gr.errortype = -1;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<List<RoutePointsModel>> findRoutePoints({
    String entityid,
    String zipCode,
    String town,
    String state,
    String district,
  }) async {
    // RouteRepositoryReturnData myreturn = RouteRepositoryReturnData();
    List<RoutePointsModel> list = await RoutePointsRepository.findRoutePoints(
      serviceID: entityid,
      zipCode: zipCode,
      town: town,
      state: state,
      district: district,
    );
    // myreturn.errortype = -1;
    return list;
  }

  Future<RouteRepositoryReturnData> createRoute(
      RouteModel item, String entitytype, String entityid) async {
    RouteRepositoryReturnData myreturn = RouteRepositoryReturnData();
    await RoutesRepository.addRoute(
      route: item,
      serviceID: entityid,
    ).onError((error, stackTrace) => print(error));
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<RouteRepositoryReturnData> updateRoute(
      RouteModel item, String entitytype, String entityid) async {
    RouteRepositoryReturnData myreturn = RouteRepositoryReturnData();
    await RoutesRepository.editRoute(
      route: item,
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<RouteRepositoryReturnData> updateRouteWithDiff(RouteModel newitem,
      RouteModel olditem, String entitytype, String entityid) async {
    return null;
  }

  Future<RouteRepositoryReturnData> deleteRouteWithData(
      RouteModel item, String entitytype, String entityid) async {
    RouteRepositoryReturnData myreturn = RouteRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<RouteRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    RouteRepositoryReturnData myreturn = RouteRepositoryReturnData();
    myreturn.errortype = -1;
    myreturn.itemlist = await RoutesRepository.fetchRoutesList(
      serviceID: entityid,
    );
    return myreturn;
  }
}

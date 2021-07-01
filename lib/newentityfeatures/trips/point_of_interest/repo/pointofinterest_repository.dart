import 'package:complex/newentityfeatures/trips/model/models.dart';
import 'package:complex/newentityfeatures/trips/repository/repo/route_points_repository.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';

class PointOfInterestRepositoryReturnData {
  List<RoutePointsModel> itemlist;
  RoutePointsModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  PointOfInterestRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class PointOfInterestRepository {
  Future<PointOfInterestRepositoryReturnData> getAllPointOfInterests(
      String entitytype, String entityid) async {
    PointOfInterestRepositoryReturnData myreturn =
        PointOfInterestRepositoryReturnData();
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
      //Please put your code here
      GenericLookUpDataUsedForRegistration gr =
          new GenericLookUpDataUsedForRegistration();
      gr.errortype = -1;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<PointOfInterestRepositoryReturnData>
      getPointOfInterestWithOfferingSearch(String entitytype, String entityid,
          String sessionterm, String offeringgroup) async {
    PointOfInterestRepositoryReturnData grerror =
        new PointOfInterestRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<RoutePointsModel> vrlist =
          await RoutePointsRepository.fetchRoutePoints(
        serviceID: entityid,
      );
      ;
      //Please put your code here
      PointOfInterestRepositoryReturnData gr =
          new PointOfInterestRepositoryReturnData();
      gr.errortype = -1;
      gr.itemlist = vrlist;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<PointOfInterestRepositoryReturnData> createPointOfInterest(
      RoutePointsModel item, String entitytype, String entityid) async {
    PointOfInterestRepositoryReturnData myreturn =
        PointOfInterestRepositoryReturnData();
    await RoutePointsRepository.addRoutePoint(
      routePoint: item,
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<PointOfInterestRepositoryReturnData> updatePointOfInterest(
      RoutePointsModel item, String entitytype, String entityid) async {
    PointOfInterestRepositoryReturnData myreturn =
        PointOfInterestRepositoryReturnData();
    await RoutePointsRepository.editRoutePoint(
      routePoint: item,
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<PointOfInterestRepositoryReturnData> updatePointOfInterestWithDiff(
      RoutePointsModel newitem,
      RoutePointsModel olditem,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<PointOfInterestRepositoryReturnData> deletePointOfInterestWithData(
      RoutePointsModel item, String entitytype, String entityid) async {
    PointOfInterestRepositoryReturnData myreturn =
        PointOfInterestRepositoryReturnData();
    await RoutePointsRepository.removeRoutePoint(
      routePoint: item,
      serviceID: entityid,
    );

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<PointOfInterestRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    PointOfInterestRepositoryReturnData myreturn =
        PointOfInterestRepositoryReturnData();
    myreturn.itemlist = await RoutePointsRepository.fetchRoutePoints(
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }
}

import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';

class RemoteTripRepositoryReturnData {
  List<RemoteTripData> itemlist;
  RemoteTripData item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  RemoteTripRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class RemoteTripRepository {
  Future<RemoteTripRepositoryReturnData> getAllRemoteTrips(
      String entitytype, String entityid) async {
    RemoteTripRepositoryReturnData myreturn = RemoteTripRepositoryReturnData();
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

  Future<RemoteTripRepositoryReturnData> getRemoteTripWithOfferingSearch(
      String entitytype,
      String entityid,
      String sessionterm,
      String offeringgroup) async {
    RemoteTripRepositoryReturnData grerror =
        new RemoteTripRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      RemoteTripRepositoryReturnData gr = RemoteTripRepositoryReturnData();
      gr.errortype = -1;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<RemoteTripRepositoryReturnData> createRemoteTrip(
      RemoteTripData item, String entitytype, String entityid) async {
    RemoteTripRepositoryReturnData myreturn = RemoteTripRepositoryReturnData();

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<RemoteTripRepositoryReturnData> updateRemoteTrip(
      RemoteTripData item, String entitytype, String entityid) async {
    RemoteTripRepositoryReturnData myreturn = RemoteTripRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<RemoteTripRepositoryReturnData> updateRemoteTripWithDiff(
      RemoteTripData newitem,
      RemoteTripData olditem,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<RemoteTripRepositoryReturnData> deleteRemoteTripWithData(
      RemoteTripData item, String entitytype, String entityid) async {
    RemoteTripRepositoryReturnData myreturn = RemoteTripRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<RemoteTripRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    RemoteTripRepositoryReturnData myreturn = RemoteTripRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<List<RemoteTripData>> getServiceProvidersList(
      String entitytype, String entityid) async {
    // RemoteTripRepositoryReturnData myreturn = RemoteTripRepositoryReturnData();
    // myreturn.errortype = -1;
    List<String> serviceProvidersList = [
      'Service Provider 1',
      'Service Provider 2',
      'Service Provider 3',
      'Service Provider 4',
    ];

    List<RemoteTripData> serviceProviders = serviceProvidersList
        .map((item) => RemoteTripData(serviceProvider: item))
        .toList();
    return serviceProviders;
  }

  Future<List<String>> getRoutesList(String entitytype, String entityid) async {
    // RemoteTripRepositoryReturnData myreturn = RemoteTripRepositoryReturnData();
    // myreturn.errortype = -1;
    List<String> routes = [
      'Trip 1',
      'Trip 2',
      'Trip 3',
      'Trip 4',
    ];

    return routes;
  }
}

class RemoteTripData {
  String serviceProvider;
  RemoteTripData({
    this.serviceProvider,
  });
}

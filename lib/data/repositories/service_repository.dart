import 'dart:async';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/data/models/response/general_response.dart';
import 'package:complex/data/models/response/generic_response.dart';
import 'package:complex/data/models/response/user_response/service_model.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:complex/data/models/response/user_response/user_service.dart';
import 'package:complex/data/providers/service_provicer.dart';
import 'package:meta/meta.dart';

class ServiceRepository {
//  List<ServiceModel> _serviceList = [];
  ServiceProvider serviceProvider;

  ServiceRepository({this.serviceProvider});

  String serviceproviderid;
  Map<String, ServiceModel> _serviceList = {};

  Stream<ServiceModel> getServiceAsStream(String id) {
    return serviceProvider.getServiceAsStream(id);
  }

  //service
  Future<void> setService(UserService service) async {
    ServiceModel _serviceModel = await serviceProvider.getService(service);
    _serviceList[_serviceModel.serviceID] = _serviceModel;
  }

  Map<String, ServiceModel> getServiceList() => _serviceList;

  Future<ServiceModel> getService(UserService service) async {
    if (_serviceList[service.serviceID] == null) {
      await setService(service);
    }
    return _serviceList[service.serviceID];
  }

  ServiceModel getServiceByID(String serviceId) => _serviceList[serviceId];

  Future<ServiceModel> getUpdatedServiceWithId({@required String serviceID}) =>
      serviceProvider.fetchService(serviceID);

  Future<GenericResponse> getComplexDetail({String id}) async {
    try {
      final complexResponse = await serviceProvider.getComplexDetail(id: id);
      return GenericResponse(
          success: true, message: "create successfully", data: complexResponse);
    } on FirebaseFunctionsException catch (e) {
      print("error : ${e.message}");
      print("error : ${e.stackTrace}");
      return GenericResponse(success: false, message: e.stackTrace.toString());
    } catch (e) {
      return GenericResponse(success: false, message: "Something went wrong");
    }
  }

  Future<GeneralResponse> createService(ServiceModel service) async {
    try {
      final serviceResponse =
          await serviceProvider.createServiceProvider(serviceModel: service);
      // final response = await userRepo.setUser(UserSession.userId);
      return GeneralResponse(success: true, message: "create successfully");
    } on FirebaseFunctionsException catch (e) {
      print("error : ${e.message}");
      print("error : ${e.stackTrace}");
      return GeneralResponse(success: false, message: e.stackTrace.toString());
    } catch (e) {
      return GeneralResponse(success: false, message: "Something went wrong");
    }
  }

  Future<GeneralResponse> updateService(ServiceModel service) async {
    try {
      final serviceResponse =
          await serviceProvider.updateServiceProvider(serviceModel: service);
      // final response = await userRepo.setUser(UserSession.userId);
      return GeneralResponse(success: true, message: "create successfully");
    } on FirebaseFunctionsException catch (e) {
      print("error : ${e.message}");
      print("error : ${e.stackTrace}");
      return GeneralResponse(success: false, message: e.stackTrace.toString());
    } catch (e) {
      return GeneralResponse(success: false, message: "Something went wrong");
    }
  }

 Future<GeneralResponse> setDefaultService(UserModel model, String serviceId) async {
    try {
      final serviceResponse =
          await serviceProvider.makeEntityDefault(newEntityId: serviceId,user: model);
      // final response = await userRepo.setUser(UserSession.userId);
      return GeneralResponse(success: true, message: "create successfully");
    } on FirebaseFunctionsException catch (e) {
      print("error : ${e.message}");
      print("error : ${e.stackTrace}");
      return GeneralResponse(success: false, message: e.stackTrace.toString());
    } catch (e) {
      return GeneralResponse(success: false, message: "Something went wrong");
    }
  }

  Future getFilterForServiceType(
    String serviceType,
    UserModel user,
  ) =>
      serviceProvider.getFilterForServiceType(serviceType, user);
}

class ServiceFilterParameter {
  SpatialData sd;
  String textsearch;
  String servicetype;
  List<String> serviceofferedselectedvalues;
  int offset;

  ServiceFilterParameter({
    this.sd,
    this.textsearch,
    this.servicetype,
    this.serviceofferedselectedvalues,
    this.offset,
  });

  Map<String, dynamic> toJson() => <String, dynamic>{
        'sd': this.sd,
        'textsearch': this.textsearch,
        'servicetype': this.servicetype,
        'serviceofferedselectedvalues': this.serviceofferedselectedvalues,
        'offset': this.offset,
      };
}

class SpatialData {
  String curStatename;
  double lati;
  double longi;
  int radius;
  String statename;
  List<AreaInfo> locationname;

  SpatialData({
    this.curStatename,
    this.lati,
    this.longi,
    this.radius,
    this.statename,
    this.locationname,
  });

  Map<String, dynamic> toJson() => <String, dynamic>{
        'curStatename': this.curStatename,
        'lati': this.lati,
        'longi': this.longi,
        'radius': this.radius,
        'statename': this.statename,
        'locationname': this.locationname,
      };
}

class AreaInfo {
  String districtname;
  String areaname;

  AreaInfo({this.districtname, this.areaname});

  Map<String, dynamic> toJson() => <String, dynamic>{
        'districtname': this.districtname,
        'areaname': this..areaname,
      };
}

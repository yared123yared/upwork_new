import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';


import 'package:complex/utils/log_print.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ProductProviderOld {
  ProductProviderOld({@required this.api});

  ApiService api;

  Future<List<EcomVehicleModel>> getVehicleList(String userId) {
    // todo write your code and return data
  }

  Future<List<PetModel>> getPetList(String userId) {
    // todo write your code and return data
  }

  Future<List<RealEstateModel>> getPropertyList(String userId) {
    // todo write your code and return data
  }

  Future<List<JobPosting>> getJobList(String userId) {
    // todo write your code and return data
  }
  Future<List<ProductModel>> getProductList(String userId) {
    // todo write your code and return data
  }

  Future<dynamic> getCategoryFiled({String request}) async {
    final response =
        await FirebaseFirestore.instance.doc("SCHEMA/$request").get();
    print("Response getCategoryFiled ===> $response");
    if (response != null) return response.data();
    return null;
  }

  Future<dynamic> getCategoryFiledValues({String request}) async {
    UserSession.showCategoryResult = request;
    final response =
        await FirebaseFirestore.instance.doc("SCHEMADATA/$request").get();
    print("Response ===> getCategoryFiledValues $response");
    if (response != null) return response.data();
    return null;
  }

  Future<dynamic> getAnimalType() async {
    final response =
        await FirebaseFirestore.instance.doc("ANIMALTYPE/PET").get();
    print("Response ===> getAnimalType $response");
    if (response != null) return response.data();
    return null;
  }

  // Future<ProductModel>

  Future<dynamic> breedList({String name}) async {
    final response =
        await FirebaseFirestore.instance.doc("ANIMALBREED/$name").get();
    print("Response ===> getAnimalType $response");
    if (response != null) return response.data();
    return null;
  }

  Future<dynamic> maketypes() async {
    final response =
        await FirebaseFirestore.instance.doc("VEHICLEMAKE/MOTORCYCLE").get();
    print("Response ===> getAnimalType $response");
    if (response != null) return response.data();
    return null;
  }

  Future<dynamic> modelList({String name}) async {
    print("VEHICLEMAKEMODEL/$name");
    final response =
        await FirebaseFirestore.instance.doc("VEHICLEMAKEMODEL/$name").get();
    if (response != null) {
      print("Response ===> modelList ${response.data()}");
      return response.data();
    }
    return null;
  }

  Future<dynamic> getProductDetail({String docId}) async {
    final response =
        await FirebaseFirestore.instance.doc("CLASSIFIED/$docId").get();
    print("Response ===> getCategoryFiledValues $response");
    if (response != null) return response.data();
    return null;
  }

  Future<String> updateCategoryFiled(
      {Map<String, dynamic> request, String filedName}) async {
    print("request  $request");
    try {
      final response = await FirebaseFirestore.instance
          .doc("SCHEMADATA/${filedName.toUpperCase()}")
          .update(request);
      return "";
    } catch (e) {
      return null;
    }
  }

  Future<dynamic> getCategory({String levelName}) async {
    final response = await FirebaseFirestore.instance.doc(levelName).get();
    print("Response ===> getCategoryFiledValues $response");
    if (response != null) return response.data();
    return null;
  }

  Future<dynamic> getBrandAndDyanmicProperty({String levelName}) async {
    final response = await FirebaseFirestore.instance.doc(levelName).get();
    print("Response ===> getCategoryFiledValues $response");
    if (response != null) return response.data();
    return null;
  }

  Future<bool> addNewProperty({RealEstateModel model, String userId}) async {
    var request = json.encode({
      'data': {
        'productactionrequest': {
          "qtype": null,
          "action": "add",
          "origin": "USER",
          "serviceid": null,
          "userid": userId,
          "producttype": null,
          "classifiedtype": "REALESTATE",
          "petmodel": null,
          "productmodel": null,
          "vehiclemodel": null,
          "jobrequestmodel": null,
          'realestatemodel': model.toJson()
        }
      },
    });
    LogPrint(request);
    try {
      var response = await http.post(
          Uri.parse(
              "https://us-central1-brindavan-c61b7.cloudfunctions.net/digitaloceaninteract"),
          headers: {"Authorization": "Bearer ${UserSession.userToken}"},
          body: request);
      if (response.statusCode == 200) {
        return true;
      }
    } catch (e) {
      return false;
    }
  }

  Future<bool> addNewVehicle({EcomVehicleModel model, String userId}) async {
    var request = json.encode({
      'data': {
        'productactionrequest': {
          "qtype": null,
          "action": "add",
          "origin": "USER",
          "serviceid": null,
          "userid": userId,
          "producttype": null,
          "classifiedtype": "VEHICLE",
          "realestatemodel": null,
          "petmodel": null,
          "productmodel": null,
          "jobrequestmodel": null,
          'vehiclemodel': model.toJson()
        }
      },
    });
    LogPrint(request);
    try {
      var response = await http.post(
          Uri.parse(
              "https://us-central1-brindavan-c61b7.cloudfunctions.net/digitaloceaninteract"),
          headers: {"Authorization": "Bearer ${UserSession.userToken}"},
          body: request);
      if (response.statusCode == 200) {
        return true;
      }
    } catch (e) {
      return false;
    }
  }

  Future<bool> addNewPet({PetModel model, String userId}) async {
    var request = json.encode({
      'data': {
        'productactionrequest': {
          "qtype": null,
          "action": "add",
          "origin": "USER",
          "serviceid": null,
          "userid": userId,
          "producttype": null,
          "classifiedtype": "PET",
          "realestatemodel": null,
          "productmodel": null,
          "vehiclemodel": null,
          "jobrequestmodel": null,
          'petmodel': model.toJson()
        }
      },
    });
    LogPrint(request);
    try {
      var response = await http.post(
          Uri.parse(
              "https://us-central1-brindavan-c61b7.cloudfunctions.net/digitaloceaninteract"),
          headers: {"Authorization": "Bearer ${UserSession.userToken}"},
          body: request);
      if (response.statusCode == 200) {
        return true;
      }
    } catch (e) {
      return false;
    }
  }

  Future<bool> addNewJob({JobPosting model, String userId}) async {
    var request = json.encode({
      'data': {
        'productactionrequest': {
          "qtype": null,
          "action": "add",
          "origin": "USER",
          "serviceid": null,
          "userid": userId,
          "producttype": null,
          "classifiedtype": "JOB",
          "realestatemodel": null,
          "petmodel": null,
          "productmodel": null,
          "vehiclemodel": null,
          'jobrequestmodel': model.toJson()
        }
      },
    });
    LogPrint(request);
    try {
      var response = await http.post(
          Uri.parse(
              "https://us-central1-brindavan-c61b7.cloudfunctions.net/digitaloceaninteract"),
          headers: {"Authorization": "Bearer ${UserSession.userToken}"},
          body: request);
      if (response.statusCode == 200) {
        return true;
      }
    } catch (e) {
      return false;
    }
  }

  Future<bool> addProduct({ProductModel model, String userId}) async {
    var request = json.encode({
      'data': {
        'productactionrequest': {
          "qtype": null,
          "action": "add",
          "origin": "USER",
          "serviceid": null,
          "userid": userId,
          "producttype": null,
          "classifiedtype": "PRODUCT",
          "realestatemodel": null,
          "petmodel": null,
          "productmodel": model.toJson(),
          "vehiclemodel": null,
          'jobrequestmodel': null
        }
      },
    });
    LogPrint(request);
    try {
      var response = await http.post(
          Uri.parse(
              "https://us-central1-brindavan-c61b7.cloudfunctions.net/digitaloceaninteract"),
          headers: {"Authorization": "Bearer ${UserSession.userToken}"},
          body: request);
      if (response.statusCode == 200) {
        return true;
      }
    } catch (e) {
      return false;
    }
  }
}

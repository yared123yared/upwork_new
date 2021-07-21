import 'package:complex/data/models/response/general_response.dart';
import 'package:complex/data/models/response/generic_response.dart';
import 'package:complex/data/providers/product_provider_old.dart';
import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';


class ProductRepository {
  final ProductProviderOld productProvider;

  ProductRepository({this.productProvider});

  Future<GenericResponse<List<ProductModel>>> getProductList(
      String userID) async {
    try {
      List<ProductModel> response =
          await productProvider.getProductList(userID);
      return GenericResponse(
        success: true,
        message: "success",
        data: response,
      );
    } catch (e) {
      return GenericResponse(message: 'fetch error $e', success: false);
    }
  }

  Future<GenericResponse<List<PetModel>>> getPetList(String userID) async {
    try {
      List<PetModel> response = await productProvider.getPetList(userID);
      return GenericResponse(
        success: true,
        message: "success",
        data: response,
      );
    } catch (e) {
      return GenericResponse(message: 'fetch error $e', success: false);
    }
  }

  Future<GenericResponse<List<EcomVehicleModel>>> getVehicleList(
      String userID) async {
    try {
      List<EcomVehicleModel> response =
          await productProvider.getVehicleList(userID);
      return GenericResponse(
        success: true,
        message: "success",
        data: response,
      );
    } catch (e) {
      return GenericResponse(message: 'fetch error $e', success: false);
    }
  }

  Future<GenericResponse<List<JobPosting>>> getJobList(String userID) async {
    try {
      List<JobPosting> response = await productProvider.getJobList(userID);
      return GenericResponse(
        success: true,
        message: "success",
        data: response,
      );
    } catch (e) {
      return GenericResponse(message: 'fetch error $e', success: false);
    }
  }

  Future<GenericResponse<List<RealEstateModel>>> getPropertyList(
      String userID) async {
    try {
      List<RealEstateModel> response =
          await productProvider.getPropertyList(userID);
      return GenericResponse(
        success: true,
        message: "success",
        data: response,
      );
    } catch (e) {
      return GenericResponse(message: 'fetch error $e', success: false);
    }
  }

  Future<GenericResponse> getCategoryFiled({String request}) async {
    final response = await productProvider.getCategoryFiled(request: request);
    if (response != null) {
      final _response = await productProvider.getCategoryFiledValues(
          request:
              (response['adata']['displayfield']).toString().toUpperCase());
      return GenericResponse(
          message: "success", data: _response, success: true);
    }
    return GenericResponse(message: "fetch error");
  }

  Future<GenericResponse> updateCategoryFiled(
      {Map<String, dynamic> request, String filedName}) async {
    final response = await productProvider.updateCategoryFiled(
        request: request, filedName: filedName);
    if (response != null) {
      final _response = await productProvider.getCategoryFiledValues(
          request: filedName.toString().toUpperCase());
      return GenericResponse(
          message: "success", data: _response, success: true);
    }
    return GenericResponse(message: "fetch error");
  }

  Future<GeneralResponse> addNewProperty(
      {RealEstateModel model, String userId}) async {
    final response =
        await productProvider.addNewProperty(model: model, userId: userId);
    if (response) {
      return GeneralResponse(
          message: "Property Added Successfully", success: true);
    }
    return GeneralResponse(message: "Something went wrong", success: false);
  }

  Future<GeneralResponse> addNewVehicle(
      {EcomVehicleModel model, String userId}) async {
    final response =
        await productProvider.addNewVehicle(model: model, userId: userId);
    if (response) {
      return GeneralResponse(
          message: "Vehicle Added Successfully", success: true);
    }
    return GeneralResponse(message: "Something went wrong", success: false);
  }

  Future<GeneralResponse> addNewJob({JobPosting model, String userId}) async {
    final response =
        await productProvider.addNewJob(model: model, userId: userId);
    if (response) {
      return GeneralResponse(message: "Job Added Successfully", success: true);
    }
    return GeneralResponse(message: "Something went wrong", success: false);
  }

  Future<GeneralResponse> addNewPet({PetModel model, String userId}) async {
    final response =
        await productProvider.addNewPet(model: model, userId: userId);
    if (response) {
      return GeneralResponse(message: "Pet Added Successfully", success: true);
    }
    return GeneralResponse(message: "Something went wrong", success: false);
  }

  Future<GenericResponse> getProductDetail({String docId}) async {
    final response = await productProvider.getProductDetail(docId: docId);
    if (response != null) {
      return GenericResponse(message: "success", data: response, success: true);
    }
    return GenericResponse(message: "Something went wrong!");
  }

  Future<GeneralResponse> addProduct(
      {ProductModel model, String userId}) async {
    final response =
        await productProvider.addProduct(model: model, userId: userId);
    if (response) {
      return GeneralResponse(
          message: "Product Added Successfully", success: true);
    }
    return GeneralResponse(message: "Something went wrong", success: false);
  }
}

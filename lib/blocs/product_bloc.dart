import 'package:bloc/bloc.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/response/general_response.dart';
import 'package:complex/data/models/response/generic_response.dart';
import 'package:complex/data/models/response/product_models/job_model.dart';
import 'package:complex/data/models/response/product_models/pet_model.dart';
import 'package:complex/data/models/response/product_models/product_model.dart';
import 'package:complex/data/models/response/product_models/property_model.dart';
import 'package:complex/data/models/response/product_models/vehicle_model.dart';
import 'package:complex/data/repositories/product_repository.dart';
import 'package:flutter/material.dart';
import 'package:injector/injector.dart';

//create event
abstract class ProductEvent {
  ProductEvent([List event = const []]) : super();
}

class GetCategoryFieldEvent extends ProductEvent {
  final String filedName;

  GetCategoryFieldEvent({@required this.filedName}) : super([filedName]);
}

class GetProductDetailEvent extends ProductEvent {
  final String docId;

  GetProductDetailEvent({@required this.docId}) : super([docId]);
}

class GetProductListEvent extends ProductEvent {
  final String userID;

  GetProductListEvent({@required this.userID}) : super([userID]);
}

class GetVehicleListEvent extends ProductEvent {
  final String userID;

  GetVehicleListEvent({@required this.userID}) : super([userID]);
}

class GetJobListEvent extends ProductEvent {
  final String userID;

  GetJobListEvent({@required this.userID}) : super([userID]);
}

class GetPetListEvent extends ProductEvent {
  final String userID;

  GetPetListEvent({@required this.userID}) : super([userID]);
}

class GetPropertyListEvent extends ProductEvent {
  final String userID;

  GetPropertyListEvent({@required this.userID}) : super([userID]);
}

class AddNewPropertyEvent extends ProductEvent {
  final PropertyModel model;
  final String userId;

  AddNewPropertyEvent({@required this.model, @required this.userId})
      : super([model, userId]);
}

class AddNewJobEvent extends ProductEvent {
  final JobModel model;
  final String userId;

  AddNewJobEvent({@required this.model, @required this.userId})
      : super([model, userId]);
}

class AddNewPetEvent extends ProductEvent {
  final PetModel model;
  final String userId;

  AddNewPetEvent({@required this.model, @required this.userId})
      : super([model, userId]);
}

class AddNewVehicleEvent extends ProductEvent {
  final VehicleModel model;
  final String userId;

  AddNewVehicleEvent({@required this.model, @required this.userId})
      : super([model, userId]);
}

class AddNoPackageEvent extends ProductEvent {
  final ProductModel model;
  final String userId;

  AddNoPackageEvent({@required this.model, @required this.userId})
      : super([model, userId]);
}

class AddPackageEvent extends ProductEvent {
  final ProductModel model;
  final String userId;

  AddPackageEvent({@required this.model, @required this.userId})
      : super([model, userId]);
}

class AddMultiColorEvent extends ProductEvent {
  final ProductModel model;
  final String userId;

  AddMultiColorEvent({@required this.model, @required this.userId})
      : super([model, userId]);
}

class UpdateCategoryFieldEvent extends ProductEvent {
  final Map<String, dynamic> requestMap;
  final String filedName;

  UpdateCategoryFieldEvent(
      {@required this.requestMap, @required this.filedName})
      : super([requestMap, filedName]);
}

//create state
abstract class ProductState {
  ProductState([List states = const []]) : super();
}

//create initial State
class ProductInitial extends ProductState {
  ProductInitial() : super([]);
}

class GetCategoryFieldState extends ProductState {
  ApiStatus apiState;
  GenericResponse response;
  String message;

  GetCategoryFieldState(this.apiState, {this.response, this.message});
}

class ProductListState<T> extends ProductState {
  ApiStatus apiState;
  String pageName;
  GeneralResponse response;
  String message;
  List<T> list;
  ProductListState(this.apiState, list, this.pageName,
      {this.response, this.message});
}

class AddNoPackageState extends ProductState {
  ApiStatus apiState;
  GeneralResponse response;
  String message;

  AddNoPackageState(this.apiState, {this.response, this.message});
}

class AddPackageState extends ProductState {
  ApiStatus apiState;
  GeneralResponse response;
  String message;

  AddPackageState(this.apiState, {this.response, this.message});
}

class AddMultiColorState extends ProductState {
  ApiStatus apiState;
  GeneralResponse response;
  String message;

  AddMultiColorState(this.apiState, {this.response, this.message});
}

class GetProductDetailState extends ProductState {
  ApiStatus apiState;
  GenericResponse response;
  String message;

  GetProductDetailState(this.apiState, {this.response, this.message});
}

class AddNewPropertyState extends ProductState {
  ApiStatus apiState;
  GeneralResponse response;
  String message;

  AddNewPropertyState(this.apiState, {this.response, this.message});
}

class AddNewPetState extends ProductState {
  ApiStatus apiState;
  GeneralResponse response;
  String message;

  AddNewPetState(this.apiState, {this.response, this.message});
}

class AddNewJobState extends ProductState {
  ApiStatus apiState;
  GeneralResponse response;
  String message;

  AddNewJobState(this.apiState, {this.response, this.message});
}

class AddNewVehicleState extends ProductState {
  ApiStatus apiState;
  GeneralResponse response;
  String message;

  AddNewVehicleState(this.apiState, {this.response, this.message});
}

class UpdateCategoryFieldState extends ProductState {
  ApiStatus apiState;
  GenericResponse response;
  String message;

  UpdateCategoryFieldState(this.apiState, {this.response, this.message});
}

//bloc start
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final productRepository = Injector.appInstance.get<ProductRepository>();

  ProductBloc(ProductState initialState) : super(initialState);

  @override
  Stream<ProductState> mapEventToState(ProductEvent event) async* {
    if (event is GetCategoryFieldEvent) {
      try {
        yield GetCategoryFieldState(ApiStatus.LOADING);
        final response =
            await productRepository.getCategoryFiled(request: event.filedName);
        if (response.success) {
          yield GetCategoryFieldState(ApiStatus.SUCCESS, response: response);
        } else {
          yield GetCategoryFieldState(ApiStatus.ERROR,
              message: response.message);
        }
      } catch (e) {
        yield GetCategoryFieldState(ApiStatus.ERROR,
            message: "Something went wrong");
      }
    } else if (event is UpdateCategoryFieldEvent) {
      try {
        yield UpdateCategoryFieldState(ApiStatus.LOADING);
        final response = await productRepository.updateCategoryFiled(
            request: event.requestMap, filedName: event.filedName);
        if (response.success) {
          yield UpdateCategoryFieldState(ApiStatus.SUCCESS, response: response);
        } else {
          yield UpdateCategoryFieldState(ApiStatus.ERROR,
              message: response.message);
        }
      } catch (e) {
        yield UpdateCategoryFieldState(ApiStatus.ERROR,
            message: "Something went wrong");
      }
    } else if (event is AddNewPropertyEvent) {
      try {
        yield AddNewPropertyState(ApiStatus.LOADING);
        final response = await productRepository.addNewProperty(
            model: event.model, userId: event.userId);
        if (response.success) {
          yield AddNewPropertyState(ApiStatus.SUCCESS, response: response);
        } else {
          yield AddNewPropertyState(ApiStatus.ERROR, message: response.message);
        }
      } catch (e) {
        yield AddNewPropertyState(ApiStatus.ERROR,
            message: "Something went wrong");
      }
    } else if (event is AddNewVehicleEvent) {
      try {
        yield AddNewVehicleState(ApiStatus.LOADING);
        final response = await productRepository.addNewVehicle(
            model: event.model, userId: event.userId);
        if (response.success) {
          yield AddNewVehicleState(ApiStatus.SUCCESS, response: response);
        } else {
          yield AddNewVehicleState(ApiStatus.ERROR, message: response.message);
        }
      } catch (e) {
        yield AddNewVehicleState(ApiStatus.ERROR,
            message: "Something went wrong");
      }
    } else if (event is AddNewJobEvent) {
      try {
        yield AddNewJobState(ApiStatus.LOADING);
        final response = await productRepository.addNewJob(
            model: event.model, userId: event.userId);
        if (response.success) {
          yield AddNewJobState(ApiStatus.SUCCESS, response: response);
        } else {
          yield AddNewJobState(ApiStatus.ERROR, message: response.message);
        }
      } catch (e) {
        yield AddNewJobState(ApiStatus.ERROR, message: "Something went wrong");
      }
    } else if (event is AddNewPetEvent) {
      try {
        yield AddNewPetState(ApiStatus.LOADING);
        final response = await productRepository.addNewPet(
            model: event.model, userId: event.userId);
        if (response.success) {
          yield AddNewPetState(ApiStatus.SUCCESS, response: response);
        } else {
          yield AddNewPetState(ApiStatus.ERROR, message: response.message);
        }
      } catch (e) {
        yield AddNewPetState(ApiStatus.ERROR, message: "Something went wrong");
      }
    } else if (event is GetProductDetailEvent) {
      try {
        yield GetProductDetailState(ApiStatus.LOADING);
        final response =
            await productRepository.getProductDetail(docId: event.docId);
        if (response.success) {
          yield GetProductDetailState(ApiStatus.SUCCESS, response: response);
        } else {
          yield GetProductDetailState(ApiStatus.ERROR,
              message: response.message);
        }
      } catch (e) {
        yield GetProductDetailState(ApiStatus.ERROR,
            message: "Something went wrong");
      }
    } else if (event is AddNoPackageEvent) {
      try {
        yield AddNoPackageState(ApiStatus.LOADING);
        final response = await productRepository.addProduct(
            model: event.model, userId: event.userId);
        if (response.success) {
          yield AddNoPackageState(ApiStatus.SUCCESS, response: response);
        } else {
          yield AddNoPackageState(ApiStatus.ERROR, message: response.message);
        }
      } catch (e) {
        yield AddNoPackageState(ApiStatus.ERROR,
            message: "Something went wrong");
      }
    } else if (event is AddPackageEvent) {
      try {
        yield AddPackageState(ApiStatus.LOADING);
        final response = await productRepository.addProduct(
            model: event.model, userId: event.userId);
        if (response.success) {
          yield AddPackageState(ApiStatus.SUCCESS, response: response);
        } else {
          yield AddPackageState(ApiStatus.ERROR, message: response.message);
        }
      } catch (e) {
        yield AddPackageState(ApiStatus.ERROR, message: "Something went wrong");
      }
    } else if (event is AddMultiColorEvent) {
      try {
        yield AddMultiColorState(ApiStatus.LOADING);
        final response = await productRepository.addProduct(
            model: event.model, userId: event.userId);
        if (response.success) {
          yield AddMultiColorState(ApiStatus.SUCCESS, response: response);
        } else {
          yield AddMultiColorState(ApiStatus.ERROR, message: response.message);
        }
      } catch (e) {
        yield AddMultiColorState(ApiStatus.ERROR,
            message: "Something went wrong");
      }
    } else if (event is GetProductListEvent) {
      yield ProductListState(ApiStatus.LOADING, [], 'Product List');
      final GenericResponse<List<ProductModel>> response =
          await productRepository.getProductList(event.userID);
      if (response.success) {
        yield ProductListState<List<ProductModel>>(
            ApiStatus.SUCCESS, response.data, 'Product List');
      } else {
        yield ProductListState<List<ProductModel>>(
            ApiStatus.ERROR, [], 'Product List',
            message: response.message);
      }
    } else if (event is GetPropertyListEvent) {
      yield ProductListState(ApiStatus.LOADING, [], 'Property List');
      final GenericResponse<List<PropertyModel>> response =
          await productRepository.getPropertyList(event.userID);
      if (response.success) {
        yield ProductListState<PropertyModel>(
            ApiStatus.SUCCESS, response.data, 'Property List');
      } else {
        yield ProductListState<PropertyModel>(
            ApiStatus.ERROR, [], 'Property List',
            message: response.message);
      }
    } else if (event is GetPetListEvent) {
      yield ProductListState(ApiStatus.LOADING, [], 'Pet List');
      final GenericResponse<List<PetModel>> response =
          await productRepository.getPetList(event.userID);
      if (response.success) {
        yield ProductListState<PetModel>(
          ApiStatus.SUCCESS,
          response.data,
          'Pet List',
        );
      } else {
        yield ProductListState<PetModel>(ApiStatus.ERROR, [], 'Pet List',
            message: response.message);
      }
    } else if (event is GetJobListEvent) {
      yield ProductListState(ApiStatus.LOADING, [], 'Job List');
      final GenericResponse<List<JobModel>> response =
          await productRepository.getJobList(event.userID);
      if (response.success) {
        yield ProductListState<JobModel>(
          ApiStatus.SUCCESS,
          response.data,
          'Job List',
        );
      } else {
        yield ProductListState<ProductModel>(
            ApiStatus.ERROR, [], 'Product List',
            message: response.message);
      }
    } else if (event is GetVehicleListEvent) {
      yield ProductListState(ApiStatus.LOADING, [], 'Vehicle List');
      final GenericResponse<List<VehicleModel>> response =
          await productRepository.getVehicleList(event.userID);
      if (response.success) {
        yield ProductListState<VehicleModel>(
          ApiStatus.SUCCESS,
          response.data,
          'Product List',
        );
      } else {
        yield ProductListState<VehicleModel>(
            ApiStatus.ERROR, [], 'Product List',
            message: response.message);
      }
    }
  }
}

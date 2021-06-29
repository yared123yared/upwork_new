import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/data/models/response/general_response.dart';
import 'package:complex/data/models/response/generic_response.dart';
import 'package:complex/data/models/response/user_response/complex_model.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:complex/data/providers/complex_provider.dart';
import 'package:complex/data/repositories/user_repository.dart';

class ComplexRepository {
  ComplexProvider complexProvider;
  UserRepository userRepo;

  ComplexRepository({this.complexProvider, this.userRepo});

  Future<GeneralResponse> createComplex({ComplexModel complexModel}) async {
    try {
      final complexResponse =
          await complexProvider.createComplex(complexModel: complexModel);
      final response = await userRepo.setUser(userRepo.getUser().userID);
      return GeneralResponse(success: true, message: "create successfully");
    } on FirebaseFunctionsException catch (e) {
      print("error : ${e.message}");
      print("error : ${e.stackTrace}");
      return GeneralResponse(success: false, message: e.stackTrace.toString());
    } catch (e) {
      return GeneralResponse(success: false, message: "Something went wrong");
    }
  }

  Future<GeneralResponse> updateUser({ComplexModel complexModel}) async {
    try {
      final complexResponse =
          await complexProvider.updateComplex(complexModel: complexModel);
      final response = await userRepo.setUser(userRepo.getUser().userID);
      print("qwertyuiop");
      return GeneralResponse(success: true, message: "Update successfully");
    } on FirebaseFunctionsException catch (e) {
      print("error : ${e.message}");
      print("error : ${e.stackTrace}");
      return GeneralResponse(success: false, message: e.stackTrace.toString());
    } catch (e) {
      print("error : ${e}");
      return GeneralResponse(success: false, message: "Something went wrong");
    }
  }

  Future<GenericResponse> getComplexDetail({String id}) async {
    try {
      final complexResponse = await complexProvider.getComplexDetail(id: id);
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

  Future<GeneralResponse> setDefaultComplex(
      {UserModel userModel, String newEntityId,}) async {
    try {
      final complexResponse = await complexProvider.setDefaultComplexEntity(
        user: userModel,
        newEntityId: newEntityId,
      );
      final userSet = await userRepo.setUser(userModel.userID);
      return GeneralResponse(success: true, message: "create successfully");
    } on FirebaseFunctionsException catch (e) {
      print("error : ${e.message}");
      print("error : ${e.stackTrace}");
      return GeneralResponse(success: false, message: e.stackTrace.toString());
    } catch (e) {
      return GeneralResponse(success: false, message: "Something went wrong");
    }
  }
}

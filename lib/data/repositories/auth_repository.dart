import 'package:complex/data/models/request/auth_request/login_request.dart';
import 'package:complex/data/models/request/auth_request/signup_request.dart';
import 'package:complex/data/models/response/general_response.dart';
import 'package:complex/data/providers/auth_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

class AuthRepository {
  AuthRepository({@required this.authProvider});

  final AuthProvider authProvider;

  Future<GeneralResponse> loginCall({LoginRequest request}) async {
    try {
      await authProvider.signInWithCredentials(loginRequest: request);
      final _isSignedIn = await authProvider.isSignedIn();
      if (_isSignedIn) {
        return GeneralResponse(message: "Login Success", success: true);
      } else {
        return GeneralResponse(
            message: "Login fail please try again", success: false);
      }
    } on FirebaseAuthException catch (e) {
      return GeneralResponse(message: e.message, success: false);
    } catch (e) {
      return GeneralResponse(
          message: "Login fail please try again", success: false);
    }
  }

  Future<GeneralResponse> socialSignIn({AuthCredential authCredential}) async {
    try {
      final _isSignedIn = await authProvider.isSignedIn();
      if (_isSignedIn) {
        return GeneralResponse(message: "Login Success", success: true);
      } else {
        return GeneralResponse(
            message: "Login fail please try again", success: false);
      }
    } on FirebaseAuthException catch (e) {
      return GeneralResponse(message: e.message, success: false);
    } catch (e) {
      return GeneralResponse(
          message: "Login fail please try again", success: false);
    }
  }

  Future<GeneralResponse> createUserForRequest({SignUpRequest request}) async {
    try {
      await authProvider.signUp(request.email, request.password);
      request.userId = authProvider.getUId();
      await authProvider.userProfileCreationRequest(signUpModel: request);
      return GeneralResponse(message: "SignUp Success", success: true);
    } on FirebaseAuthException catch (e) {
      return GeneralResponse(message: e.message, success: false);
    } catch (e) {
      return GeneralResponse(
          message: "SignUp fail please try after sometime", success: false);
    }
  }



  Future<GeneralResponse> createUser({SignUpRequest request}) async {
    try {
      await authProvider.signUp(request.email, request.password);
      request.userId = authProvider.getUId();
      await authProvider.userProfileCreationRequest(signUpModel: request);
      final _isSignedIn = await authProvider.isSignedIn();
      if (_isSignedIn) {
        return GeneralResponse(message: "SignUp Success", success: true);
      } else {
        return GeneralResponse(
            message: "SignUp fail please try after sometime", success: false);
      }
    } on FirebaseAuthException catch (e) {
      return GeneralResponse(message: e.message, success: false);
    } catch (e) {
      return GeneralResponse(
          message: "SignUp fail please try after sometime", success: false);
    }
  }

  Future<GeneralResponse> createSocialUser({SignUpRequest request}) async {
    try {
      await authProvider.userProfileCreationRequest(signUpModel: request);
      final _isSignedIn = await authProvider.isSignedIn();
      if (_isSignedIn) {
        return GeneralResponse(message: "SignUp Success", success: true);
      } else {
        return GeneralResponse(
            message: "SignUp fail please try after sometime", success: false);
      }
    } on FirebaseAuthException catch (e) {
      return GeneralResponse(message: e.message, success: false);
    } catch (e) {
      return GeneralResponse(
          message: "SignUp fail please try after sometime", success: false);
    }
  }

  void updateProfile({String name, String email, String password}) {
    authProvider.updateProfile(name: name, email: email, password: password);
  }
}

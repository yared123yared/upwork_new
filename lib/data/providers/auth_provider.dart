import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/request/auth_request/login_request.dart';
import 'package:complex/data/models/request/auth_request/signup_request.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class AuthProvider {
  AuthProvider({@required this.api});

  ApiService api;
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> signInWithCredentials({LoginRequest loginRequest}) {
    return _firebaseAuth.signInWithEmailAndPassword(
      email: loginRequest.email,
      password: loginRequest.password,
    );
  }

  Future<void> socialSignIn({AuthCredential authCredential}) {
    return _firebaseAuth.signInWithCredential(authCredential);
  }

  Future<void> signUp(String email, String password) async {
    return await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }


  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }


  Future<bool> isSignedIn() async {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser != null;
  }

  Future<bool> hasVerifiedEmail() async =>
      _firebaseAuth.currentUser.emailVerified;

  Future<bool> hasVerifiedNumber() async {
    return _firebaseAuth.currentUser.phoneNumber != null &&
        _firebaseAuth.currentUser.phoneNumber.isNotEmpty;
  }

  String getUser() => _firebaseAuth.currentUser.email;

  String getUId() => _firebaseAuth.currentUser.uid;

  Future<void> userProfileCreationRequest({SignUpRequest signUpModel}) async {
    final HttpsCallable userProfileCreationRequest =
        FirebaseFunctions.instance.httpsCallable(
      'UserProfileCreationRequest',
    );
    try {
      final HttpsCallableResult result =
          await userProfileCreationRequest.call(<String, dynamic>{
        'email': signUpModel.email,
        'username': signUpModel.username,
        'phonenum': signUpModel.phoneNum,
        'defaultpassword': signUpModel.password,
        'requesttype': signUpModel.requestType,
        'userid': signUpModel.userId,
      });
      print("result ${result.data}");
    } on FirebaseFunctionsException catch (e) {
      print('caught firebase functions exception');
      print(e.code);
      print(e.message);
      print(e.details);
    } catch (e) {
      print('caught generic exception');
      print(e);
    }
  }

  Future<String> userProfileCreationRequestwithreturnval({SignUpRequest signUpModel}) async {
    final HttpsCallable userProfileCreationRequest =
    FirebaseFunctions.instance.httpsCallable(
      'UserProfileCreationRequest',
    );
    try {
      final HttpsCallableResult result =
      await userProfileCreationRequest.call(<String, dynamic>{
        'email': signUpModel.email,
        'username': signUpModel.username,
        'phonenum': signUpModel.phoneNum,
        'defaultpassword': signUpModel.password,
        'requesttype': signUpModel.requestType,

      });
      print("result ${result.data}");
      Map<String, dynamic> mdata = Map<String, dynamic>.from(result.data);
      if (mdata['error'] != null) return null;
      return mdata['id'];

    } on FirebaseFunctionsException catch (e) {
      print('caught firebase functions exception');
      print(e.code);
      print(e.message);
      print(e.details);
    } catch (e) {
      print('caught generic exception');
      print(e);
    }
  }


  Future<int> updateProfile({
    String name,
    String photoURL,
    String password,
    String phoneNumber,
    String email,
  }) async {
    if (name != null) {
      return await FirebaseAuth.instance.currentUser
          .updateProfile(displayName: name)
          .then((value) => 0)
          .catchError((onError) => 1);
    } else if (photoURL != null) {
      return await FirebaseAuth.instance.currentUser
          .updateProfile(photoURL: photoURL)
          .then((value) => 0)
          .catchError((onError) => 1);
    } else if (password != null) {
      return await FirebaseAuth.instance.currentUser
          .updatePassword(password)
          .then((value) => 0)
          .catchError((onError) {
        print('error $onError');
        return 1;
      });
    } else if (phoneNumber != null) {
     /* return await FirebaseAuth.instance.currentUser
          .updatePhoneNumber(PhoneAuthCredential)
          .then((value) => 0)
          .catchError((onError) {
        print('error $onError');
        return 1;
      })*/
    } else if (email != null) {
      return await FirebaseAuth.instance.currentUser
          .updateEmail(email)
          .then((value) => 0)
          .catchError((onError) => 1);
    } else {
      return 2;
    }
  }
}

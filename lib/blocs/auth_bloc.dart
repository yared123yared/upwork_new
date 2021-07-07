import 'package:bloc/bloc.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/request/auth_request/login_request.dart';
import 'package:complex/data/models/request/auth_request/signup_request.dart';
import 'package:complex/data/models/response/general_response.dart';
import 'package:complex/data/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:injector/injector.dart';
import 'package:logger/logger.dart';

//create event
abstract class AuthEvent {
  AuthEvent([List event = const []]) : super();
}

class LoginUser extends AuthEvent {
  final LoginRequest request;

  LoginUser({@required this.request}) : super([request]);
}

class SocialLoginUser extends AuthEvent {
  final AuthCredential request;

  SocialLoginUser({@required this.request}) : super([request]);
}

class CreateUserEvent extends AuthEvent {
  final SignUpRequest request;

  CreateUserEvent({@required this.request}) : super([request]);
}

class CreateSocialUserEvent extends AuthEvent {
  final SignUpRequest request;

  CreateSocialUserEvent({@required this.request}) : super([request]);
}

class GetProfile extends AuthEvent {
  GetProfile() : super([]);
}

class Logout extends AuthEvent {
  Logout() : super([]);
}

//create state
abstract class AuthState {
  AuthState([List states = const []]) : super();
}

//create initial State
class AuthInitial extends AuthState {
  AuthInitial() : super([]);
}

class LoginState extends AuthState {
  ApiStatus apiState;
  GeneralResponse response;
  String message;

  LoginState(this.apiState, {this.response, this.message});
}

class CreateUserState extends AuthState {
  ApiStatus apiState;
  GeneralResponse response;
  String message;

  CreateUserState(this.apiState, {this.response, this.message});
}

class CreateSocialUserState extends AuthState {
  ApiStatus apiState;
  GeneralResponse response;
  String message;

  CreateSocialUserState(this.apiState, {this.response, this.message});
}

//bloc start
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final authRepository = Injector.appInstance.get<AuthRepository>();

  AuthBloc(AuthState initialState) : super(initialState);

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is LoginUser) {
      try {
        yield LoginState(ApiStatus.LOADING);
        final response = await authRepository.loginCall(request: event.request);
        if (response.success) {
          yield LoginState(ApiStatus.SUCCESS, response: response);
        } else {
          yield LoginState(ApiStatus.ERROR, message: response.message);
        }
      } catch (e) {
        Logger().e(e.toString());
        yield LoginState(ApiStatus.ERROR, message: "Something went wrong");
      }
    } else if (event is SocialLoginUser) {
      try {
        yield LoginState(ApiStatus.LOADING);
        final response =
            await authRepository.socialSignIn(authCredential: event.request);
        if (response.success) {
          yield LoginState(ApiStatus.SUCCESS, response: response);
        } else {
          yield LoginState(ApiStatus.ERROR, message: response.message);
        }
      } catch (e) {
        yield LoginState(ApiStatus.ERROR, message: "Something went wrong");
      }
    } else if (event is CreateUserEvent) {
      try {
        yield CreateUserState(ApiStatus.LOADING);
        final response =
            await authRepository.createUser(request: event.request);
        if (response.success) {
          yield CreateUserState(ApiStatus.SUCCESS, response: response);
        } else {
          yield CreateUserState(ApiStatus.ERROR, message: response.message);
        }
      } catch (e) {
        yield CreateUserState(ApiStatus.ERROR, message: "");
      }
    } else if (event is CreateSocialUserEvent) {
      try {
        yield CreateUserState(ApiStatus.LOADING);
        final response =
            await authRepository.createSocialUser(request: event.request);
        if (response.success) {
          yield CreateUserState(ApiStatus.SUCCESS, response: response);
        } else {
          yield CreateUserState(ApiStatus.ERROR, message: response.message);
        }
      } catch (e) {
        yield CreateUserState(ApiStatus.ERROR, message: "");
      }
    }
  }
}

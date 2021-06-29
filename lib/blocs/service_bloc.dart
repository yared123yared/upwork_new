import 'package:bloc/bloc.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/data/models/response/general_response.dart';
import 'package:complex/data/models/response/user_response/service_model.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:complex/data/repositories/service_repository.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:injector/injector.dart';

//create event
abstract class ServiceEvent {
  ServiceEvent([List event = const []]) : super();
}

class CreateServiceEvent extends ServiceEvent {
  final ServiceModel request;

  CreateServiceEvent({@required this.request}) : super([request]);
}

class UpdateServiceEvent extends ServiceEvent {
  final ServiceModel request;

  UpdateServiceEvent({@required this.request}) : super([request]);
}

class SetDefaultServiceEvent extends ServiceEvent {
  final UserModel model;
  final String serviceId;

  SetDefaultServiceEvent({
    @required this.serviceId,
    @required this.model,
  }) : super([serviceId, model]);
}

//create state
abstract class ServiceState {
  ServiceState([List states = const []]) : super();
}

//create initial State
class ServiceInitialState extends ServiceState {
  ServiceInitialState() : super([]);
}

class CreateServiceState extends ServiceState {
  ApiStatus apiState;
  GeneralResponse response;
  String message;

  CreateServiceState(this.apiState, {this.response, this.message});
}

class UpdateServiceState extends ServiceState {
  ApiStatus apiState;
  GeneralResponse response;
  String message;

  UpdateServiceState(this.apiState, {this.response, this.message});
}

class SetDefaultServiceState extends ServiceState {
  ApiStatus apiState;
  GeneralResponse response;
  String message;

  SetDefaultServiceState(this.apiState, {this.response, this.message});
}

//bloc start
class ServiceBloc extends Bloc<ServiceEvent, ServiceState> {
  final serviceRepository = Injector.appInstance.get<ServiceRepository>();
  final userRepository = Injector.appInstance.get<UserRepository>();

  ServiceBloc(ServiceState initialState) : super(initialState);

  @override
  Stream<ServiceState> mapEventToState(ServiceEvent event) async* {
    if (event is CreateServiceEvent) {
      try {
        yield CreateServiceState(ApiStatus.LOADING);
        final response = await serviceRepository.createService(event.request);
        await userRepository.setUser(UserSession.userId);
        if (response != null) {
          yield CreateServiceState(ApiStatus.SUCCESS, response: response);
        } else {
          yield CreateServiceState(ApiStatus.ERROR, message: response.message);
        }
      } catch (e) {
        yield CreateServiceState(ApiStatus.ERROR, message: e.toString());
      }
    } else if (event is UpdateServiceEvent) {
      try {
        yield UpdateServiceState(ApiStatus.LOADING);
        final response = await serviceRepository.updateService(event.request);
        await userRepository.setUser(UserSession.userId);
        if (response != null) {
          yield UpdateServiceState(ApiStatus.SUCCESS, response: response);
        } else {
          yield UpdateServiceState(ApiStatus.ERROR, message: response.message);
        }
      } catch (e) {
        yield UpdateServiceState(ApiStatus.ERROR, message: e.toString());
      }
    }else if (event is SetDefaultServiceEvent) {
      try {
        yield SetDefaultServiceState(ApiStatus.LOADING);
        final response = await serviceRepository.setDefaultService(event.model,event.serviceId);
        await userRepository.setUser(UserSession.userId);
        if (response != null) {
          yield SetDefaultServiceState(ApiStatus.SUCCESS, response: response);
        } else {
          yield SetDefaultServiceState(ApiStatus.ERROR, message: response.message);
        }
      } catch (e) {
        yield SetDefaultServiceState(ApiStatus.ERROR, message: e.toString());
      }
    }
  }
}

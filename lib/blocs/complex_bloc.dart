import 'package:bloc/bloc.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/response/general_response.dart';
import 'package:complex/data/models/response/generic_response.dart';
import 'package:complex/data/models/response/user_response/complex_model.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:complex/data/repositories/complex_repository.dart';
import 'package:flutter/material.dart';
import 'package:injector/injector.dart';

//create event
abstract class ComplexEvent {
  ComplexEvent([List event = const []]) : super();
}

class CreateComplexEvent extends ComplexEvent {
  final ComplexModel request;

  CreateComplexEvent({@required this.request}) : super([request]);
}

class UpdateComplexEvent extends ComplexEvent {
  final ComplexModel request;

  UpdateComplexEvent({@required this.request}) : super([request]);
}

class SetDefaultComplexEvent extends ComplexEvent {
  final String newEntityId;
  final UserModel userModel;

  SetDefaultComplexEvent({
    @required this.newEntityId,
    @required this.userModel,
  }) : super([ newEntityId, userModel]);
}

class GetComplexDetailEvent extends ComplexEvent {
  final String id;

  GetComplexDetailEvent({@required this.id}) : super([id]);
}

//create state
abstract class ComplexState {
  ComplexState([List states = const []]) : super();
}

//create initial State
class ComplexInitialState extends ComplexState {
  ComplexInitialState() : super([]);
}

class CreateComplexState extends ComplexState {
  ApiStatus apiState;
  GeneralResponse response;
  String message;

  CreateComplexState(this.apiState, {this.response, this.message});
}

class SetDefaultComplexState extends ComplexState {
  ApiStatus apiState;
  GeneralResponse response;
  String message;

  SetDefaultComplexState(this.apiState, {this.response, this.message});
}

class UpdateComplexState extends ComplexState {
  ApiStatus apiState;
  GeneralResponse response;
  String message;

  UpdateComplexState(this.apiState, {this.response, this.message});
}

class GetComplexDetailState extends ComplexState {
  ApiStatus apiState;
  GenericResponse response;
  String message;

  GetComplexDetailState(this.apiState, {this.response, this.message});
}

//bloc start
class ComplexBloc extends Bloc<ComplexEvent, ComplexState> {
  final complexRepository = Injector.appInstance.get<ComplexRepository>();

  ComplexBloc(ComplexState initialState) : super(initialState);

  @override
  Stream<ComplexState> mapEventToState(ComplexEvent event) async* {
    if (event is CreateComplexEvent) {
      try {
        yield CreateComplexState(ApiStatus.LOADING);
        final response =
            await complexRepository.createComplex(complexModel: event.request);
        if (response.success) {
          yield CreateComplexState(ApiStatus.SUCCESS, response: response);
        } else {
          yield CreateComplexState(ApiStatus.ERROR, message: response.message);
        }
      } catch (e) {
        yield CreateComplexState(ApiStatus.ERROR,
            message: "Something went wrong");
      }
    }
    if (event is UpdateComplexEvent) {
      try {
        yield UpdateComplexState(ApiStatus.LOADING);
        final response =
            await complexRepository.updateUser(complexModel: event.request);
        print("qwertyuiop  bloc ${response.success}");
        if (response.success) {
          yield UpdateComplexState(ApiStatus.SUCCESS, response: response);
        } else {
          yield UpdateComplexState(ApiStatus.ERROR, message: response.message);
        }
      } catch (e) {
        print("qwertyuiop  bloc $e");
        yield UpdateComplexState(ApiStatus.ERROR,
            message: "Something went wrong");
      }
    }
    if (event is GetComplexDetailEvent) {
      try {
        yield GetComplexDetailState(ApiStatus.LOADING);
        final response = await complexRepository.getComplexDetail(id: event.id);
        if (response.success) {
          yield GetComplexDetailState(ApiStatus.SUCCESS, response: response);
        } else {
          yield GetComplexDetailState(ApiStatus.ERROR,
              message: response.message);
        }
      } catch (e) {
        yield GetComplexDetailState(ApiStatus.ERROR,
            message: "Something went wrong");
      }
    }
    if (event is SetDefaultComplexEvent) {
      try {
        yield SetDefaultComplexState(ApiStatus.LOADING);
        final response = await complexRepository.setDefaultComplex(
          userModel: event.userModel,
          newEntityId: event.newEntityId,
        );
        if (response.success) {
          yield SetDefaultComplexState(ApiStatus.SUCCESS, response: response);
        } else {
          yield SetDefaultComplexState(ApiStatus.ERROR,
              message: response.message);
        }
      } catch (e) {
        yield SetDefaultComplexState(ApiStatus.ERROR,
            message: "Something went wrong");
      }
    }
  }
}

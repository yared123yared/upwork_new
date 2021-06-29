import 'package:bloc/bloc.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/response/channel_model/channel_model.dart';
import 'package:complex/data/models/response/generic_response.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:complex/data/repositories/channel_repository.dart';
import 'package:flutter/material.dart';
import 'package:injector/injector.dart';

//create event
abstract class ChannelEvent {
  ChannelEvent([List event = const []]) : super();
}

class GetChannelsEvent extends ChannelEvent {
  final UserModel request;

  GetChannelsEvent({@required this.request}) : super([request]);
}

class ActivateDeactivateChannelEvent extends ChannelEvent {
  ChannelModel channel;
  String userID;
  bool status;

  ActivateDeactivateChannelEvent({
    @required this.channel,
    @required this.userID,
    @required this.status,
  }) : super([channel, userID, status]);
}

//create state
abstract class ChannelsState {
  ChannelsState([List states = const []]) : super();
}

//create initial State
class ChannelsInitialState extends ChannelsState {
  ChannelsInitialState() : super([]);
}

class GetChannelsState extends ChannelsState {
  ApiStatus apiState;
  GenericResponse response;
  String message;

  GetChannelsState(this.apiState, {this.response, this.message});
}

class ActivateDeactivateChannelState extends ChannelsState {
  ApiStatus apiState;
  GenericResponse response;
  String message;

  ActivateDeactivateChannelState(this.apiState, {this.response, this.message});
}

//bloc start
class ChannelsBloc extends Bloc<ChannelEvent, ChannelsState> {
  final channelsRepo = Injector.appInstance.get<ChannelsRepository>();

  ChannelsBloc(ChannelsState initialState) : super(initialState);

  @override
  Stream<ChannelsState> mapEventToState(ChannelEvent event) async* {
    if (event is GetChannelsEvent) {
      try {
        yield GetChannelsState(ApiStatus.LOADING);
        final response =
            await channelsRepo.setChatRoomsInOneGo(user: event.request);
        if (response != null) {
          yield GetChannelsState(ApiStatus.SUCCESS, response: response);
        } else {
          yield GetChannelsState(ApiStatus.ERROR, message: response.message);
        }
      } catch (e) {
        yield GetChannelsState(ApiStatus.ERROR, message: e.toString());
      }
    }if (event is ActivateDeactivateChannelEvent) {
      try {
        yield ActivateDeactivateChannelState(ApiStatus.LOADING);
        final response =
            await channelsRepo.activateDeactivateChannel(channel: event.channel,userId:event.userID,status:event.status);
        if (response != null) {
          yield ActivateDeactivateChannelState(ApiStatus.SUCCESS, response: response);
        } else {
          yield ActivateDeactivateChannelState(ApiStatus.ERROR, message: response.message);
        }
      } catch (e) {
        yield ActivateDeactivateChannelState(ApiStatus.ERROR, message: e.toString());
      }
    }
  }
}

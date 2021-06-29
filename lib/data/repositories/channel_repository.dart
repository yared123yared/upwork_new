import 'package:complex/data/models/response/channel_model/channel_model.dart';
import 'package:complex/data/models/response/generic_response.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:complex/data/providers/channel_provider.dart';

class ChannelsRepository {
  final ChannelsProvider channelsProvider;

  ChannelsRepository(this.channelsProvider);

  Future<GenericResponse> setChatRoomsInOneGo({UserModel user}) async {
    final setChannel = await channelsProvider.setChatRoomsInOneGo(user: user);
    final getChannel = await channelsProvider.getChatRooms();
    if (getChannel != null) {
      return GenericResponse(
          message: "fetch success", data: getChannel, success: true);
    }
    return GenericResponse(message: "fetch error");
  }

  Future<GenericResponse> activateDeactivateChannel(
      {ChannelModel channel, String userId, bool status}) async {
    final _status = await channelsProvider.activateDeactivateChannel(
        channel, userId, status);
    if (_status != null && _status['error'] == null) {
      return GenericResponse(
          message: "fetch success", data: _status, success: true);
    } else if (_status != null && _status['error'] != null) {
      return GenericResponse(message: _status['error'], success: false);
    }
    return GenericResponse(message: "Something went wrong");
  }
}

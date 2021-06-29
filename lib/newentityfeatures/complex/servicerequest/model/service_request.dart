import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_request.freezed.dart';
part 'service_request.g.dart';

enum ServiceRequestType {
  VISITOR,
  ADHOCVISITOR,
  RIDE,
  DELIVERY,
  GATEPASS,
  HOMEHELP,
}

@freezed
abstract class ServiceRequestModel with _$ServiceRequestModel {
  @JsonSerializable(explicitToJson: true)
  const factory ServiceRequestModel(
      {String adHocVisitorPhoto,
      @required String correspondingName,
      @required String generatedQrCode,
      @required String groupReqName,
      @required DateTime endDate,
      @required bool multipleEntryAllowed,
      @required String notesInstructions,
      @required String phone,
      @required ServiceRequestType requestType,
      @required DateTime requestedDate,
      @required String requesterID,
      @required String requesterType,
      @required bool requireNotificationEntry,
      @required String serviceRequestorMemberUserId,
      @required String serviceProviderId,
      @required bool suspend,
      @required bool terminate,
      @required String qrCodeLink,
      @required String unitId,
      @required DateTime startDate,
      @required StaffInfo staffInfo,
      @required String requestID,
      @required String adhocstate
      }) = _ServiceRequestModel;

  factory ServiceRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceRequestModelFromJson(json);
}

@freezed
abstract class StaffInfo with _$StaffInfo {
  const factory StaffInfo({@required int id, @required String name}) =
      _StaffInfo;
  factory StaffInfo.fromJson(Map<String, dynamic> json) =>
      _$StaffInfoFromJson(json);
}

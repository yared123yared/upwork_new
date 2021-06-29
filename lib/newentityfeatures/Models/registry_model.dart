import 'package:equatable/equatable.dart';
import 'package:complex/common/helputil.dart';



// ignore: must_be_immutable
class RegistryModel extends Equatable {
  DateTime ownerEndDate;
  String ownerGroup;
  String ownerManagementPosition;
  DateTime ownerStartDate;
  DateTime residentEndDate;
  DateTime residentStartDate;
  String residentManagementPosition;
  String ownerName;
  String ownerPublishedContact;
  bool ownerRecvMsg;
  String ownerToken;
  String ownerUserId;
  String residentName;
  String residentPublishedContact;
  bool residentResvMessage;

  String residentToken;
  String residentUserId;
  String unitAddress;
  num version;
  bool shareownercontactflag;
  bool shareresidentcontactflag;
  ///this item is add to just display the owner in the ui

  RegistryModel({
    this.ownerEndDate,
    this.ownerGroup,
    this.ownerManagementPosition,
    this.ownerStartDate,
    this.residentEndDate,
    this.residentStartDate,
    this.residentManagementPosition,
    this.version,
    this.ownerName,
    this.ownerPublishedContact,
    this.ownerRecvMsg,
    this.ownerToken,
    this.ownerUserId,
    this.residentName,
    this.residentPublishedContact,
    this.residentResvMessage,
    this.residentToken,
    this.residentUserId,
    this.unitAddress,
    this.shareownercontactflag,
    this.shareresidentcontactflag,
  });

  @override
  List<Object> get props => [
        version,
        ownerEndDate,
        ownerGroup,
        ownerManagementPosition,
        ownerStartDate,
        residentEndDate,
        residentStartDate,
        residentManagementPosition,
        ownerName,
        ownerPublishedContact,
        ownerRecvMsg,
        ownerToken,
        ownerUserId,
        residentName,
        residentPublishedContact,
        residentResvMessage,
        residentToken,
        residentUserId,
        unitAddress,
    shareownercontactflag,
    shareresidentcontactflag
      ];

  RegistryModel copyWith({
    DateTime ownerEndDate,
    String ownerGroup,
    String ownerManagementPosition,
    DateTime ownerStartDate,
    DateTime residentEndDate,
    DateTime residentStartDate,
    String residentManagementPosition,
    String ownerName,
    String ownerPublishedContact,
    bool ownerRecvMsg,
    String ownerToken,
    String ownerUserId,
    String residentName,
    String residentPublishedContact,
    bool residentResvMessage,
    String residentToken,
    String residentUserId,
    String unitAddress,
    num version,
    bool shareownercontactflag,
    bool shareresidentcontactflag,
  }) {
    return RegistryModel(
      ownerEndDate: ownerEndDate ?? this.ownerEndDate,
      ownerGroup: ownerGroup ?? this.ownerGroup,
      ownerManagementPosition:
          ownerManagementPosition ?? this.ownerManagementPosition,
      ownerStartDate: ownerStartDate ?? this.ownerStartDate,
      residentEndDate: residentEndDate ?? this.residentEndDate,
      residentStartDate: residentStartDate ?? this.residentStartDate,
      residentManagementPosition:
          residentManagementPosition ?? this.residentManagementPosition,
      ownerName: ownerName ?? this.ownerName,
      ownerPublishedContact:
          ownerPublishedContact ?? this.ownerPublishedContact,
      ownerRecvMsg: ownerRecvMsg ?? this.ownerRecvMsg,
      ownerToken: ownerToken ?? this.ownerToken,
      ownerUserId: ownerUserId ?? this.ownerUserId,
      residentName: residentName ?? this.residentName,
      residentPublishedContact:
          residentPublishedContact ?? this.residentPublishedContact,
      residentResvMessage: residentResvMessage ?? this.residentResvMessage,
      residentToken: residentToken ?? this.residentToken,
      residentUserId: residentUserId ?? this.residentUserId,
      unitAddress: unitAddress ?? this.unitAddress,
      version: version ?? this.version,
        shareownercontactflag:shareownercontactflag??this.shareownercontactflag,
        shareresidentcontactflag:shareresidentcontactflag??this.shareresidentcontactflag,
    );
  }

  RegistryModel.fromJson(Map<String, dynamic> json) {
    ownerEndDate = HelpUtil.toDate(timestamp: json['ownerenddate'] ?? 0);
    ownerGroup = json['ownergroup'];
    ownerManagementPosition = json['ownermanagementposition'];
    ownerStartDate =
        HelpUtil.toDate(timestamp: json['ownerstartdate'] ?? 0);
    residentEndDate =
        HelpUtil.toDate(timestamp: json['residentenddate'] ?? 0);
    residentStartDate =
        HelpUtil.toDate(timestamp: json['residentstartdate'] ?? 0);
    residentManagementPosition = json['residentmanagementposition'];
    ownerName = json['ownername'];
    ownerPublishedContact = json['ownerpublishedcontact']?.toString();
    ownerRecvMsg = json['ownerrecvmsg'];
    ownerToken = json['ownertoken'];
    ownerUserId = json['owneruserid'];
    residentName = json['residentname'];
    residentPublishedContact = json['residentpublishedcontact'];
    residentResvMessage = json['residentrecvmsg'];
    residentToken = json['residenttoken'];
    residentUserId = json['residentuserid'];
    //serverSideTimeStamp = json['serversidetimestamp'];
    unitAddress = json['unitaddress'];
    version = json['version'];
    //shareownercontactflag:shareownercontactflag??this.shareownercontactflag,
    //shareresidentcontactflag:shareresidentcontactflag??this.shareresidentcontactflag,
    shareownercontactflag = json['opcf']==null ||json['opcf']==false?false:true;
    shareresidentcontactflag = json['residentpublishedcontactflag']==null ||json['residentpublishedcontactflag']==false ?false:true;


  }

  String get buildingName => unitAddress.split("@").first;

  String get floorNum => unitAddress.split("@")[1];

  static List<RegistryModel> listFromJson(List<dynamic> json) {
    List<RegistryModel> _list = [];
    if (json != null) {
      json.forEach((j) {
        _list.add(RegistryModel.fromJson(j()));
      });
    }
    return _list;
  }
}

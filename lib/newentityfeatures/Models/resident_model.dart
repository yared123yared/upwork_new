import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:complex/common/helputil.dart';



// ignore: must_be_immutable
class ResidentModel extends Equatable {
  num approvedByManager;
  num approvedByOwner;
  String appUserId;
  String contactUserId;
  String contactNumber;
  String email;
  DateTime endDate;
  String firstName;
  String lastName;
  String managementPosition;
  String publishedContact;
  bool recvmsg;
  String registerAs;
  Timestamp serverSideTimestamp;
  bool terminateNow;
  String unitAddress;
  num version;
  DateTime startDate;
  String residentID;
  bool publishcontactflag;

  ResidentModel(
      {this.unitAddress,
      this.version,
      this.endDate,
      this.appUserId,
      this.approvedByManager,
      this.approvedByOwner,
      this.contactNumber,
      this.contactUserId,
      this.email,
      this.firstName,
      this.lastName,
      this.managementPosition,
      this.publishedContact,
      this.recvmsg,
      this.residentID,
      this.registerAs,
      this.serverSideTimestamp,
      this.terminateNow,
      this.startDate,
      this.publishcontactflag});

  @override
  List<Object> get props => [
        unitAddress,
        version,
        endDate,
        appUserId,
        approvedByManager,
        approvedByOwner,
        contactNumber,
        contactUserId,
        email,
        firstName,
        lastName,
        residentID,
        managementPosition,
        publishedContact,
        recvmsg,
        registerAs,
        serverSideTimestamp,
        terminateNow,
        startDate,
        publishcontactflag
      ];

  ResidentModel copyWith({
    num approvedByManager,
    num approvedByOwner,
    String appUserId,
    String contactUserId,
    String contactNumber,
    String email,
    DateTime endDate,
    String firstName,
    String lastName,
    String managementPosition,
    String publishedContact,
    bool recvmsg,
    String registerAs,
    Timestamp serverSideTimestamp,
    bool terminateNow,
    DateTime startDate,
    String unitAddress,
    num version,
    bool publishcontactflag,
  }) {
    return ResidentModel(
      approvedByManager: approvedByManager ?? this.approvedByManager,
      approvedByOwner: approvedByOwner ?? this.approvedByOwner,
      appUserId: appUserId ?? this.appUserId,
      contactUserId: contactUserId ?? this.contactUserId,
      contactNumber: contactNumber ?? this.contactNumber,
      email: email ?? this.email,
      endDate: endDate ?? this.endDate,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      managementPosition: managementPosition ?? this.managementPosition,
      publishedContact: publishedContact ?? this.publishedContact,
      recvmsg: recvmsg ?? this.recvmsg,
      registerAs: registerAs ?? this.registerAs,
      serverSideTimestamp: serverSideTimestamp ?? this.serverSideTimestamp,
      terminateNow: terminateNow ?? this.terminateNow,
      unitAddress: unitAddress ?? this.unitAddress,
      version: version ?? this.version,
      startDate: startDate ?? this.startDate,
      publishcontactflag: publishcontactflag ?? this.publishcontactflag,
    );
  }

  ResidentModel.fromJson(Map<String, dynamic> json, String docID) {
    residentID = docID;
    approvedByManager = json['ApprovedByManager'];
    approvedByOwner = json['ApprovedByOwner'];
    appUserId = json['appuserid'];
    contactNumber = json['contactnumber'];
    email = json['email'];
    endDate = HelpUtil.toDate(timestamp: json['enddate']);
    firstName = json['firstname'];
    lastName = json['lastname'];
    managementPosition = json['managementposition'];
    publishedContact = json['publishedcontact'];
    recvmsg = json['recvmsg'];
    registerAs = json['registeras'];
    serverSideTimestamp = json['serversidetimestamp'];
    startDate = HelpUtil.toDate(timestamp: json['startdate']);
    terminateNow = json['tertminatenow'];
    unitAddress = json['unitaddress'];
    version = json['version'];
    publishcontactflag = json['publishedcontactflag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = new Map<String, dynamic>();
    json['version'] = 1;
    json['firstname'] = this.firstName;
    json['lastname'] = this.lastName;
    json['email'] = this.email;
    json['contactnumber'] = this.contactNumber;
    json['registeras'] = this.registerAs;
    json['publishedcontact'] = this.publishedContact;
    json['unitaddress'] = this.unitAddress;
    json['startdate'] = HelpUtil.toTimeStamp(dateTime: this.startDate);
    json['enddate'] = HelpUtil.toTimeStamp(dateTime: this.endDate);
    json['terminatenow'] = false;
    json['recvmsg'] = true;
    json['managementposition'] = this.managementPosition;
    json['ApprovedByManager'] = false;
    json['ApprovedByOwner'] = false;
    json['appuserid'] = this.appUserId;
    json['fromManagementflag'] = false;
    json['ownergroup'] = null;
    json['publishedcontactflag'] = publishcontactflag;
    return json;
  }

  static List<ResidentModel> listFromJson(
      List<dynamic> json, List<String> docID) {
    List<ResidentModel> _list = [];
    if (json != null) {
      json.asMap().forEach((index, j) {
        _list.add(ResidentModel.fromJson(j, docID[index]));
      });
    }
    return _list;
  }
}

//import 'package:cloud_functions/cloud_functions.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//
//class TestRepo {
//
//  static Future getVirtualRoomActionRequest() async {
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'VirtualRoomActionRequest',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{   "entitytype":"SERVICEPROVIDERINFO",
//      "entityid":"a22BgQvIWcZ78eYh3yYA",
//      "virtualroomdata":{      "version":1,
//        "virtualroomname":"grade2-I",
//        "virtualroomcategory":"grade2",
//        "associatedroom":"room2",
//        "sessiontermname":"2020-2021",
//        "numofstudents":40,
//        "listofregisterid":"None",
//        "listofofferings":[
//          "(4).(ENGLISH).(M)",
//          "(4).(MATH).(M)",
//          "(4).(HINDI).(M)"
//
//        ],
//        "primaryowner":{
//          "id":"sP5OJhuCjQhNlJH4mERyncyxd133",
//          "display":"ins2reg2"
//
//        },
//        "secondaryowner":[   {
//          "id":"otjXMx6Pk9eAdeRfAeLZG25qp422",
//          "display":"ins3reg3"
//
//        },
//          {
//            "id":"w40C4Q00KCTz0nTCFHfIYXOrw6x1",
//            "display":"ins4reg4"
//
//          }
//
//        ],
//        "attendencetype":"ALL",
//        "scheduletype":"BYROOM",
//        "classroomtype":"HIGH",
//        "runningnumber":1,
//        "channeltype":"READ",
//        "channelid":"None",
//        "serversidetimestamp":"Sentinel Value used to set a document field to the server timestamp.",
//        "associatedchatroomid":"None"
//
//      },
//      "olddata":"None",
//      "newdata":"None",
//      "virtualroomname":"grade2-I",
//      "sessionterm":"2020-2021",
//      "channelid":"None",
//      "actiontype":"add"
//    }
//
//    );
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
//  static Future getRollNumber() async {
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'GetRollNumberRequest',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'entitytype': 'SERVICEPROVIDERINFO',
//      'entityid': 'kF2P9uwiLfYuhYUQbsGK',
//      'virtualroomname': 'grade2-A',
//      'sessionterm': '2020-2021'
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
//  static Future getVirtualRoomActionRequestx() async {
//
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'VirtualRoomActionRequest',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{   "entitytype":"SERVICEPROVIDERINFO",
//      "entityid":"kF2P9uwiLfYuhYUQbsGK",
//      "virtualroomdata":{      "version":1,
//        "virtualroomname":"grade2-Q",
//        "virtualroomcategory":"grade2",
//        "associatedroom":"room1",
//        "sessiontermname":"2020-2021",
//        "numofstudents":40,
//        "listofregisterid":"None",
//        "listofofferings":[
//          "(4).(ENGLISH).(M)",
//          "(4).(MATH).(M)",
//          "(4).(HINDI).(M)"
//        ],
//        "primaryowner":{
//          "id":"sP5OJhuCjQhNlJH4mERyncyxd133",
//          "display":"ins2reg2"
//
//        },
//        "secondaryowner":[   {
//          "id":"otjXMx6Pk9eAdeRfAeLZG25qp422",
//          "display":"ins3reg3"
//
//        },
//          {
//            "id":"w40C4Q00KCTz0nTCFHfIYXOrw6x1",
//            "display":"ins4reg4"
//
//          }
//
//        ],
//        "attendencetype":"ALL",
//        "scheduletype":"BYROOM",
//        "classroomtype":"HIGH",
//        "runningnumber":1,
//        "channeltype":"READ",
//        "channelid":"None",
//        "serversidetimestamp":"Sentinel:Value used to set a document field to the server timestamp.",
//        "associatedchatroomid":"None"
//
//      },
//      "olddata":"None",
//      "newdata":"None",
//      "virtualroomname":"grade2-A",
//      "sessionterm":"2020-2021",
//      "channelid":"None",
//      "actiontype":"add"
//    }
//    );
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
//  static Future<void> signInWithCredentials(String email, String password) {
//    return FirebaseAuth.instance.signInWithEmailAndPassword(
//      email: email,
//      password: password,
//    );
//  }
//
//  static Future newEntityCreateRequest() async {
//    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'NewEntityCreateRequest',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'entitydata': {
//        'complexName': "1",
//        'createdby': uid,
//      },
//      'entitytype': "COMPLEXES",
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
////FieldValue.serverTimestamp() was giving exception
//  static Future newServiceRequestCreateRequest(String token) async {
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'NewServiceRequestCreateRequestModified',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'servicerequestdata': {
//        'version': 1,
//        'requesttype': 'ADHOCVISITOR',
//        'requestertype': 'staff',
//        'requesterid': 'PeT6NoXeXLXfEcZE5NyQs2kyGz23',
//        'requesteddate': 1585699200,
//        'correspondingname': 'GUEST4',
//        'serviceproviderid': null,
//        'servicerequestormemberuserid': null,
//        'startdate': 1585699200,
//        'enddate': 1688291200,
//        'terminate': false,
//        'suspend': false,
//        'adhocvisitorphoto': null,
//        'requirenotificationentry': true,
//        'phone': '99919191',
//        'notesinstructions': "plz allow",
//        'unitId': 'building51@2@a7474',
//        'generatedqrcode': null,
//        'groupreqname': 'MyGrp1',
//        'multipleentryallowed': false,
//        'serversidetimestamp': null
//      },
//      'entitytype': "COMPLEXES",
//      'entityid': "b2GqkLKPyLHXi3Lg0vdK",
//      'fcmtoken': token,
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
////normal field change
//  static Future updateServiceRequestRequest() async {
//    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'UpdateServiceRequestRequest',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'givenqrcode': 'HJVpX4LeeJR0qNcsjLel',
//      'requesttype': "VISITOR",
//      'olddata': {'enddate': 1609459200},
//      'newdata': {'enddate': 1609469200},
//      'byuserid': 'PeT6NoXeXLXfEcZE5NyQs2kyGz23',
//      'appuserid': 'PeT6NoXeXLXfEcZE5NyQs2kyGz23',
//      'unitaddress': null,
//      'servicereqid': 'HJVpX4LeeJR0qNcsjLel',
//      'entitytype': "COMPLEXES",
//      'entityid': "gAw0j2JLxwr3RfxqaiLH",
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
//  static Future addResidentRequestUpdated(
//      String residentID, String unitID) async {
//    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'AddResidentRequestUpdated',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'residentdata': {
//        'version': 1,
//        'firstname': 'owner1',
//        'lastname': 'lastname',
//        'email': 'owner1@abc.com',
//        'contactnumber': '9999991919',
//        'registeras': 'resident',
//        'publishedcontact': '9999991919',
//        'unitaddress': unitID,
//        'startdate': 1577836800,
//        'enddate': 1677836800,
//        'terminatenow': false,
//        'recvmsg': true,
//        'managementposition': '',
//        'ApprovedByManager': false,
//        'ApprovedByOwner': false,
//        'appuserid': residentID,
//        'fromManagementflag': false,
//        'ownergroup': null,
//        'serversidetimestamp': null
//      },
//      'residentdeltadata': {'ApprovedByManager': true},
//      'residentdetailsid': 'building1@0@a501_r',
//      'entitytype': "COMPLEXES",
//      'entityid': "gAw0j2JLxwr3RfxqaiLH",
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
//  static Future sendNotification({String token}) async {
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'sendFCMMessageTo',
//    );
//
//    dynamic resp = await callable.call(<String, dynamic>{
//      'tokenlist': [token],
//      'mdata': {
//        "click_action": "FLUTTER_NOTIFICATION_CLICK",
//        "type": "adHocVisitor"
//      },
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
////normal field change
//  static Future deleteServiceRequestRequest() async {
//    final FirebaseUser user =  FirebaseAuth.instance.currentUser;
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'UpdateServiceRequestRequest',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'givenqrcode': 'HJVpX4LeeJR0qNcsjLel',
//      'requesttype': "VISITOR",
//      'olddata': {'terminateflag': false},
//      'newdata': {'terminateflag': true},
//      'byuserid': 'PeT6NoXeXLXfEcZE5NyQs2kyGz23',
//      'appuserid': 'PeT6NoXeXLXfEcZE5NyQs2kyGz23',
//      'unitaddress': null,
//      'servicereqid': 'HJVpX4LeeJR0qNcsjLel',
//      'entitytype': "COMPLEXES",
//      'entityid': "gAw0j2JLxwr3RfxqaiLH",
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
//  static Future addResidentRequest() async {
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'AddResidentRequestModified',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'residentdata': {
//        'version': 1,
//        'firstname': 'owner1',
//        'lastname': 'lastname',
//        'email': 'owner1@abc.com',
//        'contactnumber': '9999991919',
//        'registeras': 'owner',
//        'publishedcontact': '9999991919',
//        'unitaddress': 'building51@2@a7474',
//        'startdate': 1577836800,
//        'enddate': 1677836800,
//        'terminatenow': false,
//        'recvmsg': true,
//        'managementposition': '',
//        'ApprovedByManager': false,
//        'ApprovedByOwner': false,
//        'appuserid': 'PeT6NoXeXLXfEcZE5NyQs2kyGz23',
//        'fromManagementflag': false,
//        'ownergroup': null,
//        'serversidetimestamp': null
//      },
//      'residentdeltadata': {'ApprovedByManager': true},
//      'residentdetailsid': 'building51@2@a7474',
//      'entitytype': "COMPLEXES",
//      'entityid': "b2GqkLKPyLHXi3Lg0vdK",
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
//  static Future updateResidentRequest() async {
//    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'UpdateResidentRequest',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'residentdetailsid': 'building1@0@a401',
//      'residentid': 'PeT6NoXeXLXfEcZE5NyQs2kyGz23',
//      'unitaddress': 'building1@0@a401',
//      'olddata': {'enddate': 1609459200},
//      'newdata': {'enddate': 1609469200},
//      'byuserid': 'PeT6NoXeXLXfEcZE5NyQs2kyGz23',
//      'entitytype': "COMPLEXES",
//      'entityid': "gAw0j2JLxwr3RfxqaiLH",
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
//  static Future deleteResidentRequest() async {
//    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'DeleteResidentRequest',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'residentdetailid': 'building1@0@a401_o',
//      'appuserid': 'PeT6NoXeXLXfEcZE5NyQs2kyGz23',
//      'byuserid': 'PeT6NoXeXLXfEcZE5NyQs2kyGz23',
//      'entitytype': "COMPLEXES",
//      'entityid': "gAw0j2JLxwr3RfxqaiLH",
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
//  static Future newComplexVehicleCreateRequest() async {
//    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'NewComplexVehicleCreateRequest',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'vehicledata': {
//        'version': 1,
//        'unitaddress': null,
//        'ownername': 'bcd',
//        'appuserid': 'PeT6NoXeXLXfEcZE5NyQs2kyGz23',
//        'numberplate': 'numplate123',
//        'registrationnum': '134122',
//        'isstaff': null,
//        'vehicletype': 'abc',
//        'photolink': 'drive/mygoogle',
//        'startdate': 1580515200,
//        'enddate': 1585699200,
//        'generatedqrcode': 'numplate1',
//        'generatedqrcodelink': 'drivelink',
//        'isactive': true,
//        'isvisitor': null,
//        'issubemployee': null,
//        'username': null,
//        'useremail': null,
//        'userphonenum': null,
//        'ispickanddrop': null
//      },
//      'entitytype': "COMPLEXES",
//      'entityid': "gAw0j2JLxwr3RfxqaiLH",
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
////if some fields are changing
//  static Future complexVehicleUpdateRequest() async {
//    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'ComplexVehicleUpdateRequest',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'isvisitor': false,
//      'myolddata': {'enddate': 1609479200},
//      'mynewdata': {'enddate': 1609469200},
//      'byuserid': 'PeT6NoXeXLXfEcZE5NyQs2kyGz23',
//      'userid': 'PeT6NoXeXLXfEcZE5NyQs2kyGz23',
//      'residentdetailsid': null,
//      'numplate': 'numplate1',
//      'entitytype': "COMPLEXES",
//      'entityid': "gAw0j2JLxwr3RfxqaiLH",
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
//  //if some fields are changing
//  static Future complexVehicleDeleteRequest() async {
//    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'ComplexVehicleUpdateRequest',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'isvisitor': false,
//      'myolddata': {'enddate': 1609459200},
//      'mynewdata': {'terminateflag': true},
//      'byuserid': 'PeT6NoXeXLXfEcZE5NyQs2kyGz23',
//      'userid': 'PeT6NoXeXLXfEcZE5NyQs2kyGz23',
//      'residentdetailsid': null,
//      'numplate': 'numplate1',
//      'entitytype': "COMPLEXES",
//      'entityid': "gAw0j2JLxwr3RfxqaiLH",
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
//  static Future newStaffCreateRequest() async {
//    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'NewStaffCreateRequestModified',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'staffdata': {
//        'version': 1,
//        'name': 'myname',
//        'email': 'xxxasas@abc.com',
//        'phonenum': 999999999,
//        'dob': '10/10/2000',
//        'serviceoffered': ['abc', 'bcd'],
//        'startdate': 1577836800,
//        'enddate': 1609459200,
//        'category': 'gardener',
//        'showasteammember': true,
//        'educationalqualification': null,
//        'basicbio': null,
//        'allowedroles': ['staff'],
//        'addressinfo': null,
//        'photo1': null,
//        'appuserid': 'w40C4Q00KCTz0nTCFHfIYXOrw6x1',
//        'issuspended': false,
//        'sickleave': 1,
//        'paidleave': 2,
//        'casualleave': 2,
//        'locationupdaterequired': false,
//        'TimeInterval': 10,
//        'VirtualRoomAttached': 10,
//        'terminate': false
//      },
//      'entitytype': "COMPLEXES",
//      'entityid': "gAw0j2JLxwr3RfxqaiLH",
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
//  static Future staffUpdateRequest() async {
//    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'StaffUpdateRequest',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'staffid': 'qRabE78RplVEJTUPZOftKKRD8Yu1',
//      'olddata': {'enddate': 1609459200, 'category': 'gardener'},
//      'newdata': {'enddate': 1609469200, 'category': 'gardener2'},
//      'byuserid': 'PeT6NoXeXLXfEcZE5NyQs2kyGz23',
//      'entitytype': "COMPLEXES",
//      'entityid': "gAw0j2JLxwr3RfxqaiLH",
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
//  static Future staffDeleteRequest() async {
//    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'StaffDeleteRequest',
//    );
//    print("CloudFunction StaffDelete" + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'staffid': 'qRabE78RplVEJTUPZOftKKRD8Yu1',
//      'byuserid': 'PeT6NoXeXLXfEcZE5NyQs2kyGz23',
//      'entitytype': "COMPLEXES",
//      'entityid': "gAw0j2JLxwr3RfxqaiLH",
//    });
//    print("CloudFunction Delete " + callable.toString());
//    print("CloudFunction Delete" + resp.data.toString());
//  }
//
//  static Future newUnitRequest(String address) async {
//    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'NewUnitRequest',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'unitdata': {
//        'version': 1,
//        'address': address,
//        'buildingname': 'building1',
//        'floornum': 0,
//        'numvisitorparking': 1,
//        'numfixedparking': 0,
//        'channel': null
//      },
//      'entitytype': "COMPLEXES",
//      'entityid': "gAw0j2JLxwr3RfxqaiLH",
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
////registering new user
//  static Future registerNewUser() async {
//    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'UserProfileCreationRequest',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'requesttype': 'USER',
//      'username': 'raja',
//      'email': 'raja@abc.com',
//      'phonenum': 88388388,
//      'defaultpassword': '222#3344R',
//      'userid': null
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
//  static Future createProfileOfUser() async {
//    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'UserProfileCreationRequest',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'requesttype': 'PROFILE',
//      'username': 'raja12',
//      'email': null,
//      'phonenum': null,
//      'defaultpassword': null,
//      'userid': 'qRabE78RplVEJTUPZOftKKRD8Yu1'
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
//  //registering new user
//  static Future registerNewOwnerForTest() async {
//    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'UserProfileCreationRequest',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'requesttype': 'USER',
//      'username': 'owner1',
//      'email': 'owner1@abc.com',
//      'phonenum': 99388388,
//      'defaultpassword': '222#3344R',
//      'userid': null
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
//  /*
//  def registergrpmembers(name,appuserid, phonenumber, email,relation,appaccess,isprimary,grpname):
//        mydata={}
//  mydata["version"] =1
//  mydata["appuserid"] =appuserid
//  mydata["name"] = name
//  mydata["phonenumber"] = phonenumber
//  mydata["email"] =email
//  mydata["relation"] =appuserid
//  mydata["appaccess"] = appaccess
//  mydata["isprimary"] = isprimary
//  mydata["residentdetailsid"] = isprimary
//  mydata["grpname"] =grpname
//  return mydata
//
//  def addAndRemoveFamilyMembersToOwnerAndResident(entitytype,entityid):
//    family1tenant1_userid = AddNewAppUser(db,storage,"family1tenant1", "family1tenant1@abc.com", None,True)
//    family2tenant1_userid = AddNewAppUser(db,storage,"family1tenant2", "family2tenant1@abc.com", None,True)
//    family1owner1_userid = AddNewAppUser(db,storage,"family1owner1", "family1owner1@abc.com", None,True)
//    family2owner1_userid = AddNewAppUser(db,storage,"family2owner1", "family2owner1@abc.com", None,True)
//
//    residentdetailsid_o="building1@0@a401_o"
//    residentdetailsid_r ="building1@0@a401_r"
//    regdata1 = registergrpmembers("family1tenant1",family1tenant1_userid, None, "family1tenant1@abc.com","family",True,False,residentdetailsid_r)
//    db.collection(entitytype).document(entityid).collection(u'UNITGRPMEM').document(residentdetailsid_r).collection("DATA").document(family1tenant1_userid).set(regdata1)
//
//    regdata2 = registergrpmembers("family1tenant2",family2tenant1_userid, None, "family2tenant1@abc.com","family",True,False,residentdetailsid_r)
//    db.collection(entitytype).document(entityid).collection(u'UNITGRPMEM').document(residentdetailsid_r).collection("DATA").document(family2tenant1_userid).set(regdata2)
//
//    regdata3 = registergrpmembers("family1owner1_userid",family1owner1_userid, None, "family1owner1@abc.com","family",True,False,residentdetailsid_o)
//    db.collection(entitytype).document(entityid).collection(u'UNITGRPMEM').document(residentdetailsid_o).collection("DATA").document(family1owner1_userid).set(regdata3)
//
//    regdata4 = registergrpmembers("family2owner1_userid",family2owner1_userid, None, "family2owner1@abc.com","family",True,False,residentdetailsid_o)
//    db.collection(entitytype).document(entityid).collection(u'UNITGRPMEM').document(residentdetailsid_o).collection("DATA").document(family2owner1_userid).set(regdata4)
//    actiontype="share"
//    sharewithuserid = family1tenant1_userid
//
//   */
//
////For Staff
//  static Future shareAppAccessForGrpWithStaffMemberRequest() async {
//    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'ShareSubscriptionForGroup',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'actiontype': 'share',
//      'memberid': 'ratyE78RplVEJTUPZOftKKRD8Yu1',
//      'grpname': 'abc',
//      'entitytype': "COMPLEXES",
//      'entityid': "gAw0j2JLxwr3RfxqaiLH",
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
//  static Future unShareAppAccessForGrpWithStaffMemberRequest() async {
//    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'ShareSubscriptionForGroup',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'actiontype': 'unshare',
//      'memberid': 'ratyE78RplVEJTUPZOftKKRD8Yu1',
//      'grpname': 'abc',
//      'entitytype': "COMPLEXES",
//      'entityid': "gAw0j2JLxwr3RfxqaiLH",
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
//  static Future makePrimaryForGrpWithStaffMemberRequest() async {
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'SubmitAttendenceRequest',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'studentInfo': {
//        'id': 8,
//        'val': 'A',
//        'vr': 'grade2-A',
//      },
//      'date': "26/5/2020",
//      'kind': "All",
//      'actiontype': "ofr",
//      'sessionterm': "sessionterm",
//      'virtualroomname': 'grade2-A',
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
////share app access with unit member
//  static Future shareAppAccessForUnitMemberRequest() async {
//    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'ShareSubscriptionForResidentUnitRequest',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'actiontype': 'share',
//      'sharewithuserid': 'U5WkC3HcyZgOnAaBMKpmwRxXohy2',
//      'residentdetailsid': 'building1@0@a401_r',
//      'entitytype': "COMPLEXES",
//      'entityid': "4uHIVopKb0vsKUxRotji",
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
//  static Future removeAppAccessForUnitMemberRequest() async {
//    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'ShareSubscriptionForResidentUnit',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'actiontype': 'unshare',
//      'sharewithuserid': 'owner1',
//      'residentdetailsid': 'ratyE78RplVEJTUPZOftKKRD8Yu1',
//      'entitytype': "COMPLEXES",
//      'entityid': "gAw0j2JLxwr3RfxqaiLH",
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
//  static Future makePrimaryUnitMemberRequest() async {
//    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'ShareSubscriptionForResidentUnit',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'actiontype': 'primary',
//      'sharewithuserid': 'owner1',
//      'residentdetailsid': 'ratyE78RplVEJTUPZOftKKRD8Yu1',
//      'entitytype': "COMPLEXES",
//      'entityid': "gAw0j2JLxwr3RfxqaiLH",
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
//
//  static Future saveTokenForEntity() async {
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'SaveTokenInEntity',
//    );
//    dynamic resp = await callable.call(<String, dynamic>{
//      'appuserid': 'U5WkC3HcyZgOnAaBMKpmwRxXohy2',
//      'roles': ["manager"],
//      'residentunitlist': [
//        {'m': 'false', 'rd': 'building1@0@a401_o'}
//      ],
//      'token': "bdfdfdffd",
//      'entityid': 'gAw0j2JLxwr3RfxqaiLH',
//      'entitytype': "COMPLEXES"
//    });
//    print('Response:' + resp.toString());
//  }
//
//  static Future<bool> userProfileCreationRequest() async {
//    final HttpsCallable userProfileCreationRequest =
//        CloudFunctions.instance.getHttpsCallable(
//      functionName: 'UserProfileCreationRequestModified',
//    );
//    try {
//      final HttpsCallableResult result =
//          await userProfileCreationRequest.call(<String, dynamic>{
//        'email': 'abcxyz99@gmail.com',
//        'username': 'testStaff',
//        'phonenum': null,
//        'defaultpassword': 'secretPassword',
//        'requesttype': "CHECK",
//      });
//      print("result ${result.data['id']}");
//      return true;
//    } on CloudFunctionsException catch (e) {
//      print('caught firebase functions exception');
//      print(e.code);
//      print(e.message);
//      print(e.details);
//      return false;
//    } catch (e) {
//      print('caught generic exception');
//      print(e);
//      return false;
//    }
//  }
//}

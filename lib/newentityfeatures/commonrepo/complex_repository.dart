import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';

import 'package:complex/newentityfeatures/Models/entity/staff_model.dart';
import 'package:complex/newentityfeatures/gateway/complex_staff_gateway.dart';
import 'package:meta/meta.dart';

import 'leave_request_repository.dart';
import 'registry_repository.dart';
import 'unit_repository.dart';

import 'package:complex/newentityfeatures/Models/entity/complex_model.dart';
import 'package:complex/newentityfeatures/Models/building_model.dart';
import 'package:complex/newentityfeatures/Models/unit_model.dart';
import 'package:complex/newentityfeatures/Models/tempmodelforcomplex.dart';
import 'package:complex/newentityfeatures/Models/complex_vehicle_model.dart';
import 'package:complex/newentityfeatures/Models/entry_logs_model.dart';
import 'package:complex/newentityfeatures/Models/resident_model.dart';
import 'package:complex/newentityfeatures/Models/service_request_model.dart';
import 'package:complex/newentityfeatures/Models/qrcode_model.dart';
import 'package:complex/newentityfeatures/Models/family_member.dart';

import 'package:complex/newentityfeatures/gateway/complex_gateway.dart';
import 'package:complex/newentityfeatures/gateway/building_gateway.dart';
import 'package:complex/newentityfeatures/gateway/complex_vehicle_gateway.dart';
import 'package:complex/newentityfeatures/gateway/unit_gateway.dart';
import 'package:complex/newentityfeatures/gateway/entry_log_gateway.dart';
import 'package:complex/newentityfeatures/gateway/service_request_gateway.dart';
import 'package:complex/newentityfeatures/gateway/resident_gateway.dart';
import 'package:complex/newentityfeatures/gateway/registry_gateway.dart';

import 'package:complex/data/models/response/user_response/user_complex.dart';

class NewComplexRepository {
  UnitsRepository units;
  RegistryRepository registry;
  LeaveRequestRepository leaveRequest;
  Map<String, ComplexModel> _complexList = {};
  Map<String, List<BuildingModel>> _buildingList = {};
  Map<String, List<UnitModel>> _unitList = {};
  Map<String, Map<String, EntityRoles>> _myUnitList = {};
  Map<String, List<ComplexVehicleModel>> _vehicleList = {};
  Map<String, List<StaffModelx>> _staffList = {};

  NewComplexRepository() {
    this.setup();
  }

  setup() {
    registry = RegistryRepository();
    units = UnitsRepository();
    leaveRequest = LeaveRequestRepository();
  }

  void clear() {
    _buildingList = {};
    _unitList = {};
    _myUnitList = {};
    _vehicleList = {};

    leaveRequest.clear();
  }

  //complex
  Future<void> setComplex({@required UserComplex complex}) async {
    try {
      print("complexEroor : ${complex.complexID}");
      _complexList[complex.complexID] =
          await ComplexGateway.getComplex(complex: complex);
    } catch (e) {
      print(e);
    }
  }

  Map<String, ComplexModel> getComplexList() {
    return _complexList;
  }

  // ignore: missing_return
  ComplexModel getComplex({@required String complexID}) {
    try {
      if (_complexList.containsKey(complexID)) return _complexList[complexID];
    } catch (e) {
      print(e);
    }
  }

  Future<ComplexModel> getComplexAsync({@required UserComplex complex}) async {
    try {
      _complexList[complex.complexID] = await ComplexGateway.getComplex(
        complex: complex,
      );
      return _complexList[complex.complexID];
    } catch (e) {
      print(e);
      return e;
    }
  }

  /// get complex without the roles of the user
  Future<ComplexModel> fetchComplex({@required String complexId}) async =>
      ComplexGateway.fetchComplex(complexId);

  // Future<ComplexModel> getComplexFromUserComplex(
  //     {@required UserComplex complex}) async {
  //   if (_complexList[complex.complexID] == null) {
  //     await setComplex(complex: complex);
  //   }
  //   return _complexList[complex.complexID];
  // }

  setMyUnitList({@required UserModel user, @required String complexID}) {
    try {
      user.complexes.forEach((complex) {
        if (complex.roles.contains(EntityRoles.Owner)) {
          complex.residentunits.forEach((unit) {
            _myUnitList[complex.complexID] = {unit.rd: EntityRoles.Owner};
          });
          complex.ownerunits.forEach((unit) {
            _myUnitList[complex.complexID] = {unit.rd: EntityRoles.Owner};
          });
        } else if (complex.roles.contains(EntityRoles.Resident)) {
          complex.residentunits.forEach((unit) {
            _myUnitList[complex.complexID] = {unit.rd: EntityRoles.Resident};
          });
          complex.ownerunits.forEach((unit) {
            _myUnitList[complex.complexID] = {unit.rd: EntityRoles.Resident};
          });
        }
      });
    } catch (e) {
      print(e);
    }
  }

  Map<String, EntityRoles> getMyUnitList({@required String complexID}) =>
      _myUnitList[complexID];

  Future<void> createComplex({@required ComplexModel complexModel}) async =>
      ComplexGateway.createComplex(complexModel: complexModel);

  Future<void> updateComplex({@required ComplexModel complexModel}) async =>
      ComplexGateway.updateComplex(complexModel: complexModel);

  //building
  Future<void> setBuildingList({@required String complexID}) async =>
      _buildingList[complexID] = await BuildingGateway.getBuildingList(
          complexID: _complexList[complexID].complexID);

  Future<List<BuildingModel>> getBuildingList(
      {@required String complexID}) async {
    try {
      return await BuildingGateway.getBuildingList(complexID: complexID);
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<void> updateBuilding({
    @required String complexID,
    @required BuildingModel building,
  }) async {
    try {
      await BuildingGateway.updateBuilding(
          complexID: complexID, building: building);

      await setBuildingList(complexID: complexID);
    } catch (e) {
      print(e);
    }
  }

  Future<void> addNewBuilding(
      {@required String complexID, @required BuildingModel building}) async {
    try {
      await BuildingGateway.addNewBuilding(
          complexID: complexID, building: building);
      await setBuildingList(complexID: complexID);
    } catch (e) {
      print(e);
    }
  }

  Future<void> removeBuilding(
      {@required String complexID, @required BuildingModel building}) async {
    try {
      await BuildingGateway.removeBuilding(
        complexID: complexID,
        building: building,
      );

      await setBuildingList(complexID: complexID);
    } catch (e) {
      print(e);
    }
  }

  //vehicle
  Future<void> setVehicleList({
    @required String entitytype,
    String entityid,
    @required UserModel user,
  }) async {
    try {
      await getUnitList(entitytype: entitytype, entityid: entityid, user: user);

      List<ComplexVehicleModel> _tempVehicles =
          await ComplexVehicleGateway.getVehicleList(
        entitytype: entitytype,
        entityid: entityid,
      );
      _vehicleList[entityid] = [];
      _tempVehicles.forEach((vehicle) {
        _unitList[entityid].forEach((unit) {
          if (vehicle.unitAddress == unit.unitID) {
            _vehicleList[entityid].add(vehicle);
          }
        });
      });
    } catch (e) {
      print(e);
    }
  }

  List<ComplexVehicleModel> getVehicleList({@required String complexID}) =>
      _vehicleList[complexID];

  Future<void> updateVehicle(
      {@required String entitytype,
      String entityid,
      @required ComplexVehicleModel oldVehicle,
      @required ComplexVehicleModel newVehicle,
      @required UserModel userModel}) async {
    try {
      return ComplexVehicleGateway.updateVehicle(
          entitytype: entitytype,
          entityid: entityid,
          oldVehicle: oldVehicle,
          newVehicle: newVehicle,
          user: userModel);
    } catch (e) {
      print(e);
    }
  }

  Future<void> addNewVehicle(
          {@required String entitytype,
          @required String entityid,
          @required ComplexVehicleModel vehicle,
          @required UserModel user}) async =>
      await ComplexVehicleGateway.newComplexVehicleCreateRequest(
          vehicle: vehicle,
          user: user,
          entitytype: entitytype,
          entityid: entityid);

  Future<void> removeComplexVehicle(String complexID, String vehicleID) async {
    try {
      return await FirebaseFirestore.instance
          .collection(
              "COMPLEXES/${_complexList[complexID].complexID}/COMPLEXVEHICLEREG")
          .doc(vehicleID)
          .delete();
    } catch (e) {
      print(e);
    }
  }



  List<StaffModelx> getStaffList({@required String complexID}) =>
      _staffList[_complexList[complexID].complexID];

  Future<void> addNewStaff(
      {@required String entitytype,@required String entityid, @required StaffModelx staffModel}) async {
    try {
      await ComplexStaffGateway.newStaffRequest(
          staffModel: staffModel, entitytype: entitytype,entityid:entityid);

    } catch (e) {
      print(e);
    }
  }

  Future<void> updateStaff(
      {@required String entitytype,@required String entityid,
      @required StaffModelx newStaff,
      @required StaffModelx oldStaff,
      @required UserModel user}) async {
    try {
      await ComplexStaffGateway.updateStaffRequest(oldStaff:oldStaff,newStaff:newStaff,userModel: user,entitytype:entitytype,entityid: entityid );


    } catch (e) {
      print(e);
    }
  }

  Future<dynamic> removeStaff(
      {@required String entitytype,@required String entityid,
      @required StaffModelx staffModel,
      @required UserModel userModel}) async {
    try {
      final response = await ComplexStaffGateway.deleteStaffRequest(staffModel: staffModel,userModel: userModel,
          entitytype:entitytype,entityid: entityid);
      //print('responseeeee ${response['id']}');

      return response;
    } catch (e) {
      print(e);
    }
  }

  //unit
  Future<void> setUnitList(
      {@required String entitytype,
      String entityid,
      @required UserModel user}) async {
    try {
      List<UnitModel> _visibleUnitList = await UnitGateway.getUnitList(
          entitytype: entitytype, entityid: entityid);
      _unitList[_complexList[entityid].complexID] = [];
      if (_complexList[entityid].roles.contains(EntityRoles.Manager)) {
        _unitList[_complexList[entityid].complexID] = _visibleUnitList;
      } else {
        user.complexes.forEach((complex) {
          print('hey ${complex.residentunits.map((e) => e.rd)}');
          if (complex.complexID == _complexList[entityid].complexID) {
            complex.residentunits.forEach((unit) {
              _visibleUnitList.forEach((allUnit) {
                if (unit.rd.split('_').first == allUnit.unitID) {
                  _unitList[_complexList[entityid].complexID].add(allUnit);
                }
              });
            });
          }
        });
      }
    } catch (e) {
      print(e);
    }
  }

  Future<List<UnitModel>> getUnitList(
      {@required String entitytype,
      String entityid,
      @required UserModel user}) async {
    try {
      List<UnitModel> _visibleUnitList = await UnitGateway.getUnitList(
          entitytype: entitytype, entityid: entityid);
      return _visibleUnitList;
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<void> updateUnit(
      String entitytype, String complexID, UnitModel unitModel) async {
    try {
      return await FirebaseFirestore.instance
          .collection("$entitytype/$complexID/UNITS")
          .doc(unitModel.unitID)
          .update(unitModel.toJson());
    } catch (e) {
      print(e); // I Don't Know
    }
  }

  Future<void> addNewUnit(
          {@required String entitytype,
          String entityid,
          @required UnitModel unitModel}) async =>
      await UnitGateway.newUnitRequest(
          entitytype: entitytype, entityid: entityid, unitModel: unitModel);

  Future<void> removeUnit(
          {@required String entitytype,
          String entityid,
          @required UnitModel unitModel}) async =>
      await UnitGateway.removeUnit(
          entitytype: entitytype, entityid: entityid, unitModel: unitModel);

  //entry logs

  Future<List<EntryLogModel>> getLogList(
      {@required String entitytype, String entityid}) async {
    try {
      return await EntryLogGateway.getEntryLogListGateway(
          entitytype: entitytype, entityid: entityid);
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<void> addNewEntryLog(
      {@required String entitytype,
      String entityid,
      @required EntryLogModel entryLog}) async {
    try {
      await EntryLogGateway.addNewEntryLog(
          entitytype: entitytype, entityid: entityid, entryLog: entryLog);
    } catch (e) {
      print(e);
    }
  }

  //service request

  Future deleteServiceRequest({
    @required String entitytype,
    String entityid,
    @required ServiceRequestModel serviceRequest,
  }) async =>
      await ServiceRequestGateway.deleteServiceRequest(
        entitytype: entitytype,
        entityid: entityid,
        serviceRequest: serviceRequest,
      );

  Future<List<ServiceRequestModel>> getAllActiveServiceRequestList(
      {@required String entitytype,
      String entityid,
      UserModel userModel}) async {
    try {
      List<ServiceRequestModel> mylist = [];
      mylist = await ServiceRequestGateway.getAllActiveServiceRequestList(
          entitytype: entitytype, entityid: entityid);
      return mylist;
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<List<ServiceRequestModel>> getServiceRequestStaffSelf(
      {@required String entitytype,
      String entityid,
      String  userid}) async {
    try {
      List<ServiceRequestModel> mylist = [];
      mylist = await ServiceRequestGateway.getServiceRequestStaffSelf(
          entitytype: entitytype, entityid: entityid, um: userid);
      return mylist;
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<List<ServiceRequestModel>> getAllServiceRequestModelsForListOfUnits(
      {@required String entitytype,
      String entityid,
        List<String> residentunitlist}) async {
    try {
      List<ServiceRequestModel> mylist = [];
      mylist = await ServiceRequestGateway.getAllServiceRequestModelsForListOfUnits(
          entitytype: entitytype, entityid: entityid, residentunitlist: residentunitlist);
      return mylist;
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<void> responseToAdhocRequest({
    @required String name,
    @required String phone,
    @required String entityId,
    @required String serviceToken,
    @required String requestId,
    @required bool accepted,
  }) {
    try {
      return ServiceRequestGateway.responseToAdhocVisitor(
        name: name,
        phone: phone,
        entityId: entityId,
        serviceToken: serviceToken,
        accepted: accepted,
        requestId: requestId,
      );
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<QRCodeModel> getQrModel({
    @required String entitytype,
    @required String entityid,
    @required String qrcode,
  }) =>
      ComplexGateway.getQRCodeData(
        entityId: entityid,
        entityType: entitytype,
        qrCode: qrcode,
      );

  Future<List<ServiceRequestModel>> getServiceRequestFromQrCode({
    @required String entitytype,
    String entityid,
    @required String code,
  }) async {
    try {
      return await ServiceRequestGateway.getServiceRequestFromQrCode(
          code: code, entitytype: entitytype, entityid: entityid);
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<void> updateServiceRequest(
      {@required String entitytype,
      String entityid,
      @required ServiceRequestModel oldRequest,
      @required ServiceRequestModel newRequest,
      @required UserModel user}) async {
    try {
      await ServiceRequestGateway.updateServiceRequest(
        oldRequest: oldRequest,
        newRequest: newRequest,
        user: user,
        entitytype: entitytype,
        entityid: entityid,
        roletype: '',
      );
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<void> addNewServiceRequest(
          {@required ServiceRequestModel serviceRequest,
          @required String entitytype,
          String entityid,
          @required String fcmToken,
          String roletype}) async =>
      await ServiceRequestGateway.addNewServiceRequest(
        fcmToken: fcmToken,
        serviceRequest: serviceRequest,
        entitytype: entitytype,
        entityid: entityid,
        roletype: roletype,
      );

  //resident
  Future addResidentRequest(
          {@required ResidentModel residentRequest,
          @required UserModel userModel,
          @required String entitytype,
          String entityid}) async =>
      await ResidentGateway.addResidentRequest(
        resident: residentRequest,
        entitytype: entitytype,
        entityid: entityid,
      );

  Future<List<ResidentModel>> getResidentList(
      {@required String entitytype, String entityid}) async {
    try {
      return await ResidentGateway.getResidents(
          entitytype: entitytype, entityid: entityid);
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<dynamic> removeResident({
    @required String entitytype,
    String entityid,
    @required String unitadress,
    @required bool isOwner,
    @required UserModel userModel,
  }) async =>
      await RegistryGateway.deleteRegistry(
        entitytype: entitytype,
        entityid: entityid,
        unitadress: unitadress,
        isOwner: isOwner,
        userModel: userModel,
      );

  //entryLogs

  Future<List<EntryLogModel>> getEntryLogList(
      {@required String entitytype,
      @required String entityid,
      @required DateTime dt}) async {
    try {
      List<EntryLogModel> lm = await EntryLogGateway.getEntryLogListGateway(
        entitytype: entitytype,
        entityid: entityid,
      );

      return lm;
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<void> addEntryLog(
      {@required String entitytype,
      String entityid,
      @required EntryLogModel entryLogModel}) async {
    try {
      await EntryLogGateway.addNewEntryLog(
          entitytype: entitytype, entityid: entityid, entryLog: entryLogModel);
    } catch (e) {
      print(e);
    }
  }

  //--------------------------- family members --------------------------//

  Future<List<FamilyMember>> familyMembers({
    @required String entitytype,
    String entityid,
    List<String> units,
    String userId,
  }) async {
    try {
      return ComplexGateway.getFamilyMembersList(
        entitytype: entitytype,
        entityid: entityid,
        units: units,
        userId: userId,
      );
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future addFamilyMember(
      FamilyMember member, String entitytype, String entityid) async {
    try {
      await ComplexGateway.addFamilyMember(
        member: member,
        entitytype: entitytype,
        entityid: entityid,
        giveAccess: true,
      );
    } catch (e) {
      print(e);
    }
  }

  Future removeFamilyMember(
    FamilyMember member,
    String entitytype,
    String entityid,
  ) async {
    try {
      await ComplexGateway.addFamilyMember(
        member: member,
        entitytype: entitytype,
        entityid: entityid,
        giveAccess: false,
      );
    } catch (e) {
      print(e);
    }
  }
}

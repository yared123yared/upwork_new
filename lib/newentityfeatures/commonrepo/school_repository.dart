import 'dart:async';

import 'package:complex/domain/lookup/lookup.dart';
import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/fee_item_groups_model.dart';

import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';

import 'package:complex/newentityfeatures/Models/school_owner_model.dart';
import 'package:complex/newentityfeatures/Models/user_registration_model.dart';
import 'package:complex/newentityfeatures/Models/user_reg_fee_collection.dart';

import 'package:complex/newentityfeatures/commonrepo/assignment_repository.dart';
import 'package:complex/newentityfeatures/commonrepo/fee_plans_repository.dart';
import 'package:complex/newentityfeatures/commonrepo/instructor_repository.dart';
import 'package:complex/newentityfeatures/commonrepo/lookup_repository.dart';
import 'package:complex/newentityfeatures/commonrepo/offering_schedule_repository.dart';
import 'package:complex/newentityfeatures/commonrepo/parents_repository.dart';
import 'package:complex/newentityfeatures/commonrepo/progress_repository.dart';

import 'package:complex/newentityfeatures/commonrepo/user_session_reg_repository.dart';
import 'package:complex/newentityfeatures/commonrepo/virtual_rooms_repository.dart';

import 'package:complex/newentityfeatures/gateway/fee_item_groups_gateway.dart';

import 'package:complex/newentityfeatures/gateway/gcloud_gateway.dart';
import 'package:complex/newentityfeatures/gateway/lookups_gateway.dart';
import 'package:complex/newentityfeatures/gateway/offering_vr_schedule_gateway.dart';

import 'package:complex/newentityfeatures/gateway/user_fee_collection_gateway.dart';
import 'package:complex/newentityfeatures/gateway/user_registration_gateway.dart';

class NewSchoolRepository {
  LookupRepository lookup;
  AssignmentRepository assignment;
  VirtualRoomsRepository virtualRoom;
  ParentsRepository parent;
  OfferingScheduleRepository offeringSchedule;
  ProgressRepository progress;
  FeePlansRepository feePlans;
  UserSessionRegRepository userSessionReg;

  InstructorRepository instructor;

  NewSchoolRepository() {
    instructor = InstructorRepository();
    parent = ParentsRepository();
    lookup = LookupRepository();
    progress = ProgressRepository();
    feePlans = FeePlansRepository();
    userSessionReg = UserSessionRegRepository();

    virtualRoom = VirtualRoomsRepository(lookup: lookup);
    assignment = AssignmentRepository(lookup: lookup, virtualRoom: virtualRoom);
  }

  Map<String, Map<String, UserRegistrationModel>> _usersList = {};
  Map<String, List<FeeItemGroupsModel>> _feeItemGroupsList = {};
  Map<String, List<ExamTermInfo>> _examTermInfoList = {};
  Map<String, List<UserRegFeeCollectionModel>> _feeCollectionList = {};
  Map<String, List<ClassPeriodInfo>> _classPeriodList = {};
  Map<String, Map<String, UserRegistrationModel>> _studentsList = {};

  //user reg
  Future<void> setUserRegList({@required String serviceID}) async {
    try {
      _usersList[serviceID] =
          await UserRegistrationGateway.getUserRegistrationList(
        serviceID: serviceID,
      );
    } catch (e) {
      print(e);
    }
  }

  Map<String, UserRegistrationModel> getUserRegList(
          {@required String serviceID}) =>
      _usersList[serviceID];

  //user session reg
  Future<void> addUserReg({
    @required String serviceID,
    @required UserRegistrationModel userReg,
  }) async {
    try {
      await UserRegistrationGateway.addNewUserRegistration(
        userReg: userReg,
        serviceID: serviceID,
      );
      await setUserRegList(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<void> updateUserReg({
    @required String serviceID,
    @required UserRegistrationModel userReg,
  }) async {
    try {
      await UserRegistrationGateway.addNewUserRegistration(
        userReg: userReg,
        serviceID: serviceID,
      );
      await setUserRegList(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  //Lookups

  //session

  Future<void> setExamTermsList({@required String serviceID}) async {
    try {
      _examTermInfoList[serviceID] =
          await LookupGateway.getExamTermInfo(serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<void> setFeeICollection({@required String serviceID}) async {
    try {
      _feeCollectionList[serviceID] =
          await UserFeeCollectionGateWay.getUserFeeCollectionList(
              serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<List<UserRegFeeCollectionModel>> getFeeICollection(
      {@required String serviceID}) async {
    try {
      if (_feeCollectionList[serviceID] == null ||
          _feeCollectionList[serviceID].length == 0) {
        await setFeeICollection(serviceID: serviceID);
      }
      return _feeCollectionList[serviceID];
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<void> setUserRegFeePayProcessingAddMaster(
      {@required UserRegFeeCollectionModel userRegFeeCollectionModel,
      @required String serviceID}) async {
    try {
      await UserFeeCollectionGateWay.userRegFeePayProcessingAddMaster(
          userRegFeeCollectionModel: userRegFeeCollectionModel,
          serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<void> updateUserRegFeePayProcessingMaster(
      {@required UserRegFeeCollectionModel newData,
      @required UserRegFeeCollectionModel oldData,
      @required String serviceID}) async {
    try {
      if (_feeCollectionList[serviceID] != null ||
          _feeCollectionList[serviceID].length != 0) {
        await UserFeeCollectionGateWay.userRegFeePayProcessingMasterUpdate(
            newData: newData, oldData: oldData, serviceID: serviceID);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> addFeeItemGPRS({
    FeeItemGroupsModel feeItemGPRS,
    String serviceID,
  }) async {
    try {
      await FeeItemGroupsGateway.addNewFeeItemGPRS(
        feeItemGPRS: feeItemGPRS,
        serviceID: serviceID,
      );
      await setFeeItemGroupList(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<void> updatesFeeItemGPRS({
    @required FeeItemGroupsModel feeItemGPRS,
    @required String serviceID,
  }) async {
    try {
      await FeeItemGroupsGateway.updateFeeItemGPRS(
        feeItemGPRS: feeItemGPRS,
        serviceID: serviceID,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<void> setClassPeriodList({@required String serviceID}) async {
    try {
      _classPeriodList[serviceID] = await LookupGateway.getClassPeriodInfo(
        serviceID,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<void> addSchedule({
    @required String serviceID,
    String type,
    Schedule schedule,
  }) async {
    ///update the service list
    await setClassPeriodList(serviceID: serviceID);
    List<ClassPeriodInfo> periods = _classPeriodList[serviceID];

    ClassPeriodInfo added;
    try {
      added = periods.firstWhere((element) => element.type == type);
      _classPeriodList[serviceID].remove(added);

      added.schedule.removeWhere(
        (element) => element.classPeriodName == schedule.classPeriodName,
      );

      added.schedule.add(schedule);
    } catch (e) {
      added = ClassPeriodInfo(
        type: type,
        schedule: [schedule],
      );
    }

    //if not found the type mean create a new period froup
    _classPeriodList[serviceID].insert(0, added);

    await LookupGateway.setClassPeriodInfo(
      serviceID: serviceID,
      classPeriodInfoList: _classPeriodList[serviceID],
    );
  }

  Future<List<ExamTermInfo>> getExamTermList({
    @required String serviceID,
  }) async {
    try {
      if (_examTermInfoList == null || _examTermInfoList.isEmpty)
        await setExamTermsList(serviceID: serviceID);
      return _examTermInfoList[serviceID];
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<ExamTermInfo> getExamTermByIndex(
          {@required String serviceID, @required int index}) async =>
      getExamTermList(serviceID: serviceID).then((value) => value[index]);

  List<ClassPeriodInfo> getClassPeriodInfoList({@required String serviceID}) {
    return _classPeriodList[serviceID];
  }

  //feePlan + feeGroups

  Future<void> setFeeItemGroupList({@required String serviceID}) async {
    try {
      _feeItemGroupsList = _feeItemGroupsList ?? {};
      List<FeeItemGroupsModel> _list =
          await FeeItemGroupsGateway.getFeeItemGroupsList(serviceID: serviceID);
      _feeItemGroupsList[serviceID] = _list;
    } catch (e) {
      print(e);
    }
  }

  Future<List<FeeItemGroupsModel>> getFeeItemGroupList(
      {@required String serviceID}) async {
    try {
      if (_feeItemGroupsList == null || _feeItemGroupsList.isEmpty)
        await setFeeItemGroupList(serviceID: serviceID);
      return _feeItemGroupsList[serviceID];
    } catch (e) {
      print(e);
      return e;
    }
  }

  //user student
  Future<void> setUserRegistrationList({@required String serviceID}) async {
    try {
      Map<String, UserRegistrationModel> _list =
          await UserRegistrationGateway.getUserRegistrationList(
        serviceID: serviceID,
      );
      print("user reg ${_list.length}");
      _studentsList[serviceID] = _list;
    } catch (e) {
      print(e);
    }
  }

  Future<Map<String, UserRegistrationModel>> getUserRegistrationMap(
      {@required String serviceID}) async {
    try {
      if (_studentsList == null || _studentsList.isEmpty)
        await setUserRegistrationList(serviceID: serviceID);
      return _studentsList[serviceID];
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<List<UserRegistrationModel>> getUserRegistrationList(
          {@required String serviceID}) async =>
      await getUserRegistrationMap(serviceID: serviceID)
          .then((value) => value.values.toList());

  Future<UserRegistrationModel> getRegistgerdUserByID(
      {@required String serviceID, String studentID}) async {
    try {
      return await getUserRegistrationMap(serviceID: serviceID)
          .then((value) => value[studentID]);
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<UserRegistrationModel> getUserWithOneOf(
    String serviceID, {
    String cardNum,
    String phone,
    String guardianPhone,
  }) {
    try {
      return UserRegistrationGateway.getUserWithOneOf(
        serviceID: serviceID,
        phone: phone.isEmpty ? null : phone,
        cardNum: cardNum.isEmpty ? null : cardNum,
        guardianPhone: guardianPhone.isEmpty ? null : guardianPhone,
      );
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<List<String>> getListOfGrades({@required String serviceID}) async {
    try {
      return await LookupGateway.getGradeList(serviceID);
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<List<String>> getListOfSubject({@required String serviceID}) async {
    try {
      print("list of Subjects");
      return await LookupGateway.getSubjectList(serviceID);
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<void> getOfferingModel({
    OfferingModelGroup data,
    String actiontype,
    String entitytype,
    String entityid,
  }) async {
    try {
      await OfferingsVrManagementGateway.offeringModelGroupDBActions(
          data: data,
          actiontype: actiontype,
          entitytype: entitytype,
          entityid: entityid);

      print("end of function: 'getOfferingModel'");
    } catch (e) {
      print(e);
    }
  }

  Future<void> getOfferingWeeklyScheduleModel({
    @required OfferingWeeklySchedule data,
    @required String actiontype,
    @required String entitytype,
    @required String entityid,
  }) async {
    try {
      await OfferingsVrManagementGateway.offeringWeeklyScheduleDBActions(
        data: data,
        actiontype: actiontype,
        entitytype: entitytype,
        entityid: entityid,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<List<SchoolOwner>> getSchoolOwner({
    @required String staffcategory,
    @required String entitytype,
    @required String entityid,
  }) async {
    try {
      return await OfferingsVrManagementGateway.getListOfStaff(
          staffcategory: staffcategory,
          entitytype: entitytype,
          entityid: entityid);
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<List<OfferingModelGroup>> getKindListForGrade({
    @required String grade,
    @required String entitytype,
    @required String entityid,
  }) async {
    try {
      return await OfferingsVrManagementGateway.getKindListForGrade(
          grade: grade, entitytype: entitytype, entityid: entityid);
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<Map<String, List<OfferingWeeklySchedule>>> getOfferingWeeklyForGrade({
    @required String grade,
    @required String entityid,
  }) async {
    try {
      print("Get Kind List For Grade");

      Map<String, List<OfferingWeeklySchedule>> _ofrMap = {};
      List<OfferingWeeklySchedule> _ofrList =
          await OfferingsVrManagementGateway.getOfferingScheduleGradeList(
        grade: grade,
        serviceID: entityid,
      );
      _ofrList.forEach((offering) {
        _ofrMap[offering.grade] = _ofrMap[offering.grade] ?? [];
        _ofrMap[offering.grade].add(offering);
      });
      print(_ofrMap);
      return _ofrMap;
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<Map<String, List<OfferingModelGroup>>> getKindListPerGrade({
    @required String grade,
    @required String entityid,
  }) async {
    try {
      print("Get Kind List For Grade");

      Map<String, List<OfferingModelGroup>> _ofrMap = {};
      List<OfferingModelGroup> _ofrList =
          await OfferingsVrManagementGateway.getOfferingMdelList(
        grade: grade,
        serviceID: entityid,
      );
      _ofrList.forEach((offering) {
        _ofrMap[offering.grade] = _ofrMap[offering.grade] ?? [];
        _ofrMap[offering.grade].add(offering);
      });
      print(_ofrMap);
      return _ofrMap;
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<void> addVirtualRoomModified({
    @required VirtualRoomModelNewFormat virtualRoomsModelMod,
    @required String serviceID,
  }) async {
    try {
      await OfferingsVrManagementGateway.addVirtualRoomActionRequest(
        virtualRoomsModelMod: virtualRoomsModelMod,
        serviceID: serviceID,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<void> updateVirtualRoomModified({
    @required VirtualRoomModelNewFormat newdata,
    @required VirtualRoomModelNewFormat oldData,
    @required String serviceID,
  }) async {
    try {
      await OfferingsVrManagementGateway.updateVirtualRoom(
        newdata: newdata,
        serviceID: serviceID,
        oldData: oldData,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<void> deleteVirtualRoomModified({
    @required String virtualroomname,
    @required String serviceID,
  }) async {
    try {
      await OfferingsVrManagementGateway.deleteVirtualRoom(
        virtualroomname: virtualroomname,
        serviceID: serviceID,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<void> addTeacherOfferingAssignment({
    @required TeacherOfferingsAssignment model,
    @required String serviceID,
  }) async {
    try {
      await OfferingsVrManagementGateway.createTeacherOfferingsAssignment(
        model: model,
        serviceID: serviceID,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<void> deleteTeacherOfferingAssignment({
    @required TeacherOfferingsAssignment model,
    @required String serviceID,
  }) async {
    try {
      await OfferingsVrManagementGateway.deleteOfferingSchedule(
          model: model, serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<void> updateTeacherOfferingAssignment({
    @required TeacherOfferingsAssignment oldData,
    @required TeacherOfferingsAssignment newData,
    @required serviceID,
  }) async {
    try {
      await OfferingsVrManagementGateway.updateOfferingSchedule(
        newData: newData,
        oldData: oldData,
        serviceID: serviceID,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<List<String>> getListOfVirtualRoomByGrade({
    @required String grade,
    @required String entitytype,
    @required String entityid,
  }) async {
    try {
      return await OfferingsVrManagementGateway.getVirtualRoomsListForGrade(
        grade: grade,
        entitytype: entitytype,
        entityid: entityid,
      );
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<List<VirtualRoomModelNewFormat>> getVirtualRoomsList({
    String serviceID,
    String grade,
  }) async {
    try {
      return await OfferingsVrManagementGateway
          .getVirtualRoomModelNewFormatList(
        serviceID,
        grade,
      );
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<Map<String, List<VirtualRoomModelNewFormat>>> getVirtualRoomList({
    @required String serviceID,
    String grade,
  }) async {
    try {
      Map<String, List<VirtualRoomModelNewFormat>> _ofrMap = {};

      List<VirtualRoomModelNewFormat> _ofrList =
          await OfferingsVrManagementGateway.getVirtualRoomModelNewFormatList(
        serviceID,
        grade,
      );

      _ofrList.forEach((offering) {
        _ofrMap[offering.grade] = _ofrMap[offering.grade] ?? [];
        _ofrMap[offering.grade].add(offering);
      });

      return _ofrMap;
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<List<TeacherOfferingsAssignment>>
      getTeacherOfferingsAssignmentListByGrade(
          {String serviceID, String grade}) async {
    try {
      return await OfferingsVrManagementGateway
          .getTeacherOfferingsAssignmentList(
        serviceID,
        grade,
      );
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<int> getRegistrationModel(String serviceId) {
    try {
      return SchoolGateway.getRegistrationNumber(serviceId);
    } catch (e) {
      print(e);
    }
  }

  Future<Map<String, List<TeacherOfferingsAssignment>>>
      get_ListOfAssignemntOfferedByTeacher({
    String serviceID,
    String grade,
  }) async {
    try {
      Map<String, List<TeacherOfferingsAssignment>> _ofrMap = {};

      List<TeacherOfferingsAssignment> _ofrList =
          await OfferingsVrManagementGateway.getTeacherOfferingsAssignmentList(
        serviceID,
        grade,
      );

      _ofrList.forEach((offering) {
        _ofrMap[offering.grade] = _ofrMap[offering.grade] ?? [];
        _ofrMap[offering.grade].add(offering);
      });

      print(_ofrMap);
      return _ofrMap;
    } catch (e) {
      print(e);
    }
  }

  Future<List<OfferingWeeklySchedule>> getOfferingWeekly(
      {String serviceID, String grade}) async {
    try {
      return await OfferingsVrManagementGateway.getOfferingWeeklyScheduleList(
          serviceID, grade);
    } catch (e) {
      print(e);
    }
  }

  Future<Map<String, List<OfferingWeeklySchedule>>> get_OfferingWeekly({
    String serviceID,
    String grade,
  }) async {
    try {
      Map<String, List<OfferingWeeklySchedule>> _ofrMap = {};

      List<OfferingWeeklySchedule> _ofrList =
          await OfferingsVrManagementGateway.getOfferingWeeklyScheduleList(
              serviceID, grade);

      _ofrList.forEach((offering) {
        _ofrMap[offering.grade] = _ofrMap[offering.grade] ?? [];
        _ofrMap[offering.grade].add(offering);
      });

      print('this: ');
      _ofrMap.forEach((key, value) {
        for (int i = 0; i < value.length; i++) {
          print(value[i].grade);
        }
      });
      return _ofrMap;
    } catch (e) {
      print(e);
    }
  }

  Future<UserRegFeeCollectionModel> getPaymentDataForIDPeriod({
    String serviceID,
    String idcardnum,
    String periodname,
  }) async {
    try {
      return await UserFeeCollectionGateWay
          .getPaymentDataForIDCardParticularPeriod(
        serviceID,
        idcardnum,
        periodname,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<List<PaymentDetails>> getListOfPaymentDetails(
      {@required String serviceID,
      @required UserRegFeeCollectionModel userRegFeeCollectionModel}) async {
    try {
      return await UserFeeCollectionGateWay.getPaymentDetailsList(
        serviceID: serviceID,
        userRegFeeCollectionModel: userRegFeeCollectionModel,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<List<OfferingModelGroup>> getListOfOfferingModelGroup({
    @required String serviceID,
    @required String grade,
  }) async {
    try {
      return await OfferingsVrManagementGateway.getOfferingMdelList(
        serviceID: serviceID,
        grade: serviceID,
      );
    } catch (e) {
      print(e);
    }
  }
}

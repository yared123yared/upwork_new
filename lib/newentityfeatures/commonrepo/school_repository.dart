import 'dart:async';

import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/fee_item_groups_model.dart';

import 'package:complex/newentityfeatures/Models/offering_model.dart';

import 'package:complex/newentityfeatures/Models/school_owner_model.dart';
import 'package:complex/newentityfeatures/Models/user_registration_model.dart';
import 'package:complex/newentityfeatures/Models/user_reg_fee_collection.dart';

import 'package:complex/newentityfeatures/commonrepo/assignment_repository.dart';
import 'package:complex/newentityfeatures/commonrepo/fee_plans_repository.dart';
import 'package:complex/newentityfeatures/commonrepo/instructor_repository.dart';

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

    progress = ProgressRepository();
    feePlans = FeePlansRepository();
    userSessionReg = UserSessionRegRepository();

    virtualRoom = VirtualRoomsRepository();
    assignment = AssignmentRepository(virtualRoom: virtualRoom);
  }



  //user reg


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

    } catch (e) {
      print(e);
    }
  }

  //Lookups

  //session







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
       {
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





  Future<List<ExamTermInfo>> getExamTermList({
    @required String serviceID,
  }) async {
    try {


      return await LookupGateway.getExamTermInfo(serviceID);
    } catch (e) {
      print(e);
      return e;
    }
  }



  Future<List<ClassPeriodInfo>> getClassPeriodInfoList({@required String serviceID}) async {
    return await LookupGateway.getClassPeriodInfo(
      serviceID,
    );
  }

  //feePlan + feeGroups



  Future<List<FeeItemGroupsModel>> getFeeItemGroupList(
      {@required String serviceID}) async {
    try {
      return await FeeItemGroupsGateway.getFeeItemGroupsList(serviceID: serviceID);
    } catch (e) {
      print(e);
      return e;
    }
  }

  //user student







  Future<List<String>> getListOfGrades({@required String serviceID}) async {
    try {
      return await LookupGateway.getGradeList(serviceID:serviceID);
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
      return UserRegistrationGateway.getRegistrationNumber(serviceId);
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

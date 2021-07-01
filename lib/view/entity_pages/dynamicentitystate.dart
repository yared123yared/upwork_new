import 'package:complex/common/helputil.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/common/model/grid_model.dart';
import 'package:complex/data/models/response/user_response/user_entity.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/newentityfeatures/Attendance/presentation/attendance_page.dart';
import 'package:complex/newentityfeatures/Fee%20plan/presentation/feeplan_listview.dart';
import 'package:complex/newentityfeatures/Models/common_enum_methods.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_model.dart';

import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
import 'package:complex/newentityfeatures/complex/building/presentation/buildingmodel_listview.dart';
import 'package:complex/newentityfeatures/complex/entry_logs/presentation/entrylogs_listview.dart';
import 'package:complex/newentityfeatures/complex/family_members/presentation/familymember_listview.dart';
import 'package:complex/newentityfeatures/complex/leave_request/presentation/leaverequest_listview.dart';
import 'package:complex/newentityfeatures/complex/registry/presentation/registry_listview.dart';
import 'package:complex/newentityfeatures/complex/servicerequest/presentation/servicerequest_listview.dart';
import 'package:complex/newentityfeatures/complex/staff_form/presentation/staffmodel_listview.dart';
import 'package:complex/newentityfeatures/complex/unit/presentation/unitmodel_listview.dart';
import 'package:complex/newentityfeatures/complex/vehicle/presentation/vehiclemodel_listview.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/views/delivery/delivery_view.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/views/orders/orders_view.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/views/trip/trips_view.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/views/vendor/vendor_view.dart';
import 'package:complex/newentityfeatures/f_lookups/cf_lookuptypes/feeitems/presentation/feeItem_listview.dart';
import 'package:complex/newentityfeatures/school/Class%20period/presentation/classperiodmodel_listview.dart';
import 'package:complex/newentityfeatures/school/Create%20assignment%20form/presentation/createassignment_listview.dart';
import 'package:complex/newentityfeatures/school/Event/presentation/event_page.dart';
import 'package:complex/newentityfeatures/school/Fee%20item%20groups/presentation/feeitemgrps_listview.dart';
import 'package:complex/newentityfeatures/school/Offering%20by%20grade/presentation/offeringschedule_listview.dart';
import 'package:complex/newentityfeatures/school/Offering%20group/presentation/offeringmodelgroup_listview.dart';
import 'package:complex/newentityfeatures/school/Parent%20info/presentation/parent_info_page.dart';
import 'package:complex/newentityfeatures/school/Payment/presentation/paymentmodel_listview.dart';
import 'package:complex/newentityfeatures/school/Progress/presentation/progress_page.dart';
import 'package:complex/newentityfeatures/school/Student%20model/presentation/studentbasicform_listview.dart';
import 'package:complex/newentityfeatures/school/Teacher%20assignment/presentation/teacherassignment_listview.dart';
import 'package:complex/newentityfeatures/school/Virtual%20room/presentation/virtualroom_listview.dart';
import 'package:complex/newentityfeatures/vrassignment/presentation/vrassignmentmodel_listview.dart';
import 'package:complex/view/job_pages/job_detail_page.dart';
import 'package:complex/view/pet_pages/pets_detail_page.dart';
import 'package:complex/view/product_pages/dynamic_category_page.dart';
import 'package:complex/view/product_pages/general_contact_details_page.dart';
import 'package:complex/view/property/property_detail_page.dart';
import 'package:complex/view/vehicle/vehicle_detail_page.dart';
import 'package:complex/utils/next_page_routing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EntityRoleState {
  final EntityRoles role;
  final List<DynamicEntityPageState> pageState;
  final List<DynamicEntityGridState> selfalertInfo;
  final List<DynamicEntityGridState> selforderandappointmentInfo;
  final List<DynamicEntityGridState> userclassifiedpanel;

  final List<DynamicEntityGridState> setupPanel;

  final List<DynamicEntityGridState> academicPanel;
  final List<DynamicEntityGridState> staffPanel;
  final List<DynamicEntityGridState> securityPanel;
  final List<DynamicEntityGridState> feesPaymentPanel;
  final List<DynamicEntityGridState> ecomPanel;

  final List<DynamicEntityGridState> aptPanel;
  final List<DynamicEntityGridState> academicManagerPanel;
  final List<DynamicEntityGridState> tripManagerpanel;
  final List<DynamicEntityGridState> tripuserpanel;
  final List<DynamicEntityGridState> enduserpanel;
  final List<DynamicEntityGridState> newformpanel;
  final List<DynamicEntityGridState> brokerpanel;
  final List<DynamicEntityGridState> productpanel;

  EntityRoleState({
    @required this.pageState,
    @required this.role,
    @required this.selfalertInfo,
    @required this.selforderandappointmentInfo,
    @required this.staffPanel,
    @required this.academicPanel,
    @required this.setupPanel,
    @required this.feesPaymentPanel,
    @required this.securityPanel,
    @required this.ecomPanel,
    @required this.aptPanel,
    @required this.academicManagerPanel,
    @required this.tripManagerpanel,
    @required this.tripuserpanel,
    @required this.enduserpanel,
    @required this.newformpanel,
    @required this.userclassifiedpanel,
    @required this.brokerpanel,
    @required this.productpanel,
  });
}

//school
enum DynamicEntityPageState {
  SetupPanel,
  SetupPanelComplex,
  EndUserComplex,
  Academic,
  FeesPayment,
  SelfInformationAlert,
  SelfInformationOrderAndApt,
  StaffPanel,
  SecurityPanel,
  EcomPanel,
  AcademicManager,
  EndUser,
  NewForms,
  userclassifiedpanel,
  brokerpanel,
  productpanel,
  AptPanel,
  TripUserPanel,
  TripManagerPanel,
  TripStaffPanel,
}
enum DynamicEntityGridState {
  selfstaff,
  selfstaffservicerequest,
  selfleaverequest,
  leaverequestapproval,
  newBuilding,
  newUnits,
  newRegistry,
  newServiceRequest,

  newVehicle,
  newFamilyMember,
  newEntryLogs,
  ComplexQRScan,
  newownerresidentservicerequest,
  newownerresidentregistry,
  managerregistrySingleOwner,
  managerregistryMultiOwner,
  registrylist,

  securityservicerequest,

  SessionTerm,
  Rooms,
  ExamTerm,
  ClassPeriod,
  Grades,
  Offerings,
  FeeQRScan,
  FeeItem,
  newfeeplan,
  newfeeitemgrp,
  newofferinggroup,
  newvirtualroom,
  newteacherassignment,
  newofferingschedule,
  // newSessionRegistration,
  newEvent,
  newParentAttendance,
  newParentProgress,
  newParentEvent,
  newParentAssignmentScore,
  newParentAssignmentsList,
  newProgress,
  newAttendance,
  newAssignment,
  newStudents,
  newPaymentPeriod,
  newClassPeriod,
  newStaff,
  newStaffRegistry,
  newVRAssignment,

  classifiedvehicle,
  classifiedrealestate,
  classifiedpet,
  classifiedjob,
  tempvehicledetails,
  temprealestatedetails,
  temppetdetails,
  tempjobdetails,

  brokerclassifiedvehicle,
  brokerclassifiedrealestate,
  productcategorylist,
  shopproduct,
  classifiedproduct,
  neworder,
  newdelivery,
  newdeliverytrip,
  newvenodr
}

class UiEntityPageStateList {
  static final UserRepository _userRepository = HelpUtil.getUserRepository();

  static bool isEndUserInService() {
    return _userRepository.getUser().defaultServiceEntity.isEndUser;
  }

  static bool checkRoleWithEmployeeCheckInService(List<String> allowedroles) {
    List<String> rlist = _userRepository.getUser().defaultServiceEntity.roles;
    if (rlist == null ||
        rlist.length == 0 ||
        _userRepository.getUser().defaultServiceEntity.isEmployee ==
            false) // rlist will be null or with
      return false;
    for (String s in allowedroles) {
      if (rlist.contains(s.toLowerCase())) return true;
      if (rlist.contains(s.toUpperCase())) return true;
    }
    return false;
  }

  static bool checkRoleWithEmployeeCheckInComplex(List<String> allowedroles) {
    List<String> rlist = _userRepository.getUser().defaultComplexEntity.roles;
    if (rlist == null ||
        rlist.length == 0 ||
        _userRepository.getUser().defaultServiceEntity.isEmployee ==
            false) // rlist will be null or with
      return false;
    for (String s in allowedroles) {
      if (rlist.contains(s.toLowerCase())) return true;
      if (rlist.contains(s.toUpperCase())) return true;
    }
    return false;
  }

  static bool checkServiceTypeInService(List<String> allowedServiceType) {
    if (_userRepository.getUser().defaultType != entityT.service) return false;
    List<String> serviceList =
        _userRepository.getUser().defaultServiceModel.serviceOffered;
    for (String service in allowedServiceType) {
      if (service.contains("*")) {
        String s12 = service.replaceAll("*", "");
        for (String s1 in serviceList) {
          if (s1.toUpperCase().startsWith(s12.toUpperCase())) return true;
        }
      } else {
        for (String s1 in serviceList) {
          if (s1.toUpperCase() == service.toUpperCase()) return true;
        }
      }
    }
    return false;
  }

  static bool checkifServiceHasSecurity() {
    return _userRepository.getUser().defaultServiceModel.hassec;
  }

  static bool checkifServiceHasFeeScan() {
    return _userRepository.getUser().defaultServiceModel.hasfscan;
  }

  static bool checkifServiceHasRegistration() {
    return _userRepository.getUser().defaultServiceModel.hasregistration;
  }

  static bool checkifServiceHasTrip() {
    return _userRepository.getUser().defaultServiceModel.hastrip;
  }

  static bool checkifServiceHasEcom() {
    return _userRepository.getUser().defaultServiceModel.hasecom;
  }

  static bool checkifServiceHasApt() {
    return _userRepository.getUser().defaultServiceModel.hasApt;
  }

  static bool checkifServiceHasRent() {
    return _userRepository.getUser().defaultServiceModel.hasrent;
  }

  static List<DynamicEntityGridState> fillSetupPanelService() {
    List<DynamicEntityGridState> setupP = [];
    if (_userRepository.getUser().defaultType != entityT.service) return setupP;

    List<String> allowedroles = ["MANAGER"];
    bool ismanager = checkRoleWithEmployeeCheckInService(allowedroles);
    if (ismanager == false) {
      return setupP;
    }

    setupP.add(DynamicEntityGridState.newStaff);
    return setupP;
  }

  static List<DynamicEntityGridState> fillSetupPanelComplex() {
    List<DynamicEntityGridState> setupP = [];
    if (_userRepository.getUser().defaultType != entityT.complex) return setupP;

    List<String> allowedroles = ["MANAGER"];
    bool ismanager = checkRoleWithEmployeeCheckInComplex(allowedroles);
    if (ismanager == false) {
      return setupP;
    }
    setupP.add(DynamicEntityGridState.newBuilding);
    setupP.add(DynamicEntityGridState.newUnits);
    setupP.add(DynamicEntityGridState.newStaff);

    return setupP;
  }

  static List<DynamicEntityGridState> fillNewPanel() {
    List<DynamicEntityGridState> panelmem = [];
    panelmem.add(DynamicEntityGridState.newfeeplan);
    panelmem.add(DynamicEntityGridState.newfeeitemgrp);
    panelmem.add(DynamicEntityGridState.newofferinggroup);
    panelmem.add(DynamicEntityGridState.newvirtualroom);
    panelmem.add(DynamicEntityGridState.newteacherassignment);
    panelmem.add(DynamicEntityGridState.newofferingschedule);

    panelmem.add(DynamicEntityGridState.newEvent);
    panelmem.add(DynamicEntityGridState.newParentAttendance);
    panelmem.add(DynamicEntityGridState.newParentProgress);
    panelmem.add(DynamicEntityGridState.newParentEvent);
    panelmem.add(DynamicEntityGridState.newParentAssignmentScore);
    panelmem.add(DynamicEntityGridState.newParentAssignmentsList);
    panelmem.add(DynamicEntityGridState.newProgress);
    panelmem.add(DynamicEntityGridState.newAttendance);
    panelmem.add(DynamicEntityGridState.newAssignment);
    panelmem.add(DynamicEntityGridState.newStudents);
    panelmem.add(DynamicEntityGridState.newPaymentPeriod);
    panelmem.add(DynamicEntityGridState.newClassPeriod);
    return panelmem;
  }

  static List<DynamicEntityGridState> fillAcademicsManagerPanel() {
    List<DynamicEntityGridState> panelmem = [];
    if (_userRepository.getUser().defaultType != entityT.service)
      return panelmem;

    List<String> allowedrolesIM = ["MANAGER", "INSTRUCTORMANAGER"];
    bool ismanagerOrIm = checkRoleWithEmployeeCheckInService(allowedrolesIM);

    List<String> allowedServiceTypes = ["SCHOOL*", "COACHING*"];
    bool isservicetypeallowed = checkServiceTypeInService(allowedServiceTypes);

    if (ismanagerOrIm == false || isservicetypeallowed == false) {
      return panelmem;
    }

    panelmem.add(DynamicEntityGridState.Grades);
    panelmem.add(DynamicEntityGridState.Rooms);
    panelmem.add(DynamicEntityGridState.newvirtualroom);
    panelmem.add(DynamicEntityGridState.newofferinggroup);
    // panelmem.add(DynamicEntityGridState.OfferingSchedule);
    panelmem.add(DynamicEntityGridState.ExamTerm);
    panelmem.add(DynamicEntityGridState.ClassPeriod);
    panelmem.add(DynamicEntityGridState.newteacherassignment);
    return panelmem;
  }

  static List<DynamicEntityGridState> fillAcademicsPanel() {
    List<DynamicEntityGridState> panelmem = [];
    if (_userRepository.getUser().defaultType != entityT.service)
      return panelmem;

    List<String> allowedrolesI = ["MANAGER", "INSTRUCTORMANAGER", "INSTRUCTOR"];
    bool ismanagerOrImOrI = checkRoleWithEmployeeCheckInService(allowedrolesI);
    List<String> allowedServiceTypes = ["SCHOOL*", "COACHING*"];
    bool isservicetypeallowed = checkServiceTypeInService(allowedServiceTypes);
    if (ismanagerOrImOrI == false || isservicetypeallowed == false) {
      return panelmem;
    }
    panelmem.add(DynamicEntityGridState.newAssignment);
    panelmem.add(DynamicEntityGridState.newVRAssignment);
    panelmem.add(DynamicEntityGridState.newAttendance);
    panelmem.add(DynamicEntityGridState.newProgress);
    panelmem.add(DynamicEntityGridState.newvirtualroom);
    panelmem.add(DynamicEntityGridState.newofferingschedule);

    return panelmem;
  }

  static List<DynamicEntityGridState> fillFeePaymentPanel() {
    List<DynamicEntityGridState> panelmem = [];
    if (_userRepository.getUser().defaultType != entityT.service)
      return panelmem;

    List<String> allowedrolesI = ["MANAGER", "FEEMANAGER"];
    bool ismanagerOrImOrI = checkRoleWithEmployeeCheckInService(allowedrolesI);
    List<String> allowedServiceTypes = ["SCHOOL*", "COACHING*"];
    bool isservicetypeallowed = checkServiceTypeInService(allowedServiceTypes);
    if (ismanagerOrImOrI == false || isservicetypeallowed == false) {
      return panelmem;
    }
    panelmem.add(DynamicEntityGridState.SessionTerm);

    panelmem.add(DynamicEntityGridState.newfeeitemgrp);
    panelmem.add(DynamicEntityGridState.FeeItem);
    panelmem.add(DynamicEntityGridState.newfeeplan);

    panelmem.add(DynamicEntityGridState.newPaymentPeriod);
    panelmem.add(DynamicEntityGridState.newStudents);

    if (checkifServiceHasFeeScan())
      panelmem.add(DynamicEntityGridState.FeeQRScan);
    return panelmem;
  }

  static List<DynamicEntityGridState> fillEndUserPanelService() {
    List<DynamicEntityGridState> panelmem = [];
    if (_userRepository.getUser().defaultType != entityT.service)
      return panelmem;

    bool isenduser = isEndUserInService();
    List<String> allowedServiceTypes = ["SCHOOL*", "COACHING*"];
    bool isservicetypeallowed = checkServiceTypeInService(allowedServiceTypes);
    if (isenduser == false || isservicetypeallowed == false) {
      return panelmem;
    }
    panelmem.add(DynamicEntityGridState.newParentAttendance);
    panelmem.add(DynamicEntityGridState.newParentAssignmentScore);
    panelmem.add(DynamicEntityGridState.newParentAssignmentsList);
    panelmem.add(DynamicEntityGridState.newParentEvent);
    panelmem.add(DynamicEntityGridState.newParentProgress);

    return panelmem;
  }

  static List<DynamicEntityGridState> fillEndUserPanelComplex() {
    List<DynamicEntityGridState> panelmem = [];
    if (_userRepository.getUser().defaultComplexEntity.isEndUser == false)
      return panelmem;

    panelmem.add(DynamicEntityGridState.newownerresidentregistry);
    panelmem.add(DynamicEntityGridState.newownerresidentservicerequest);
    panelmem.add(DynamicEntityGridState.newFamilyMember);
    panelmem.add(DynamicEntityGridState.registrylist);
    panelmem.add(DynamicEntityGridState.newStaffRegistry);
    return panelmem;
  }

  static List<DynamicEntityGridState> fillEcomPanel() {
    List<DynamicEntityGridState> panelmem = [];
    List<String> allowedrolesI = ["MANAGER", "ORDERMANAGER"];
    bool roleallowed = checkRoleWithEmployeeCheckInService(allowedrolesI);
    bool hasecom = checkifServiceHasEcom();
    panelmem.add(DynamicEntityGridState.neworder);
    panelmem.add(DynamicEntityGridState.newdelivery);
    panelmem.add(DynamicEntityGridState.newdeliverytrip);
    panelmem.add(DynamicEntityGridState.newvenodr);
    if (roleallowed == false || hasecom == false) {
      return panelmem;
    }
    // panelmem.add(DynamicEntityGridState.E_com);
    // panelmem.add(DynamicEntityGridState.E_com_Products);

    return panelmem;
  }

  static List<DynamicEntityGridState> fillAptPanel() {
    List<DynamicEntityGridState> panelmem = [];
    List<String> allowedrolesI = ["MANAGER", "APPOINTMENTMANAGER"];
    bool roleallowed = checkRoleWithEmployeeCheckInService(allowedrolesI);
    bool hasecom = checkifServiceHasEcom();
    if (roleallowed == false || hasecom == false) {}
    return panelmem;

    //panelmem.add(DynamicEntityGridState.MyAppointmentUserView);
    //panelmem.add(DynamicEntityGridState.MyAppointmentServiceProvider);
    //panelmem.add(DynamicEntityGridState.MyAppointmentMembersView);
    // panelmem.add(DynamicEntityGridState.Appointment_Products);

    return panelmem;
  }

  static List<DynamicEntityGridState> fillStaffPanelService() {
    List<DynamicEntityGridState> panelmem = [];
    if (_userRepository.getUser().defaultServiceEntity.isEmployee == false)
      return panelmem;

    panelmem.add(DynamicEntityGridState.selfstaff);
    panelmem.add(DynamicEntityGridState.newStaffRegistry);
    if (checkifServiceHasSecurity())
      panelmem.add(DynamicEntityGridState.newServiceRequest);

    panelmem.add(DynamicEntityGridState.selfleaverequest);
    return panelmem;
  }

  static List<DynamicEntityGridState> fillStaffPanelComplex() {
    List<DynamicEntityGridState> panelmem = [];
    if (_userRepository.getUser().defaultComplexEntity.isEmployee == false)
      return panelmem;

    panelmem.add(DynamicEntityGridState.selfstaff);
    panelmem.add(DynamicEntityGridState.newStaffRegistry);
    if (checkifServiceHasSecurity())
      panelmem.add(DynamicEntityGridState.newServiceRequest);

    panelmem.add(DynamicEntityGridState.selfleaverequest);
    return panelmem;
  }

  static List<DynamicEntityGridState> fillSecurityPaneService() {
    List<DynamicEntityGridState> panelmem = [];
    List<String> allowedrolesI = ["SECURITY", "MANAGER"];
    bool ismanagerOrImOrI = checkRoleWithEmployeeCheckInService(allowedrolesI);
    bool hassec = checkifServiceHasSecurity();
    if (ismanagerOrImOrI == false || hassec == false) {
      return panelmem;
    }
    panelmem.add(DynamicEntityGridState.newVehicle);
    panelmem.add(DynamicEntityGridState.securityservicerequest);
    return panelmem;
  }

  static List<DynamicEntityGridState> fillSecurityPaneComplex() {
    List<DynamicEntityGridState> panelmem = [];
    List<String> allowedrolesI = ["SECURITY", "MANAGER"];
    bool ismanagerOrImOrI = checkRoleWithEmployeeCheckInService(allowedrolesI);
    bool hassec = checkifServiceHasSecurity();
    if (ismanagerOrImOrI == false || hassec == false) {
      return panelmem;
    }
    panelmem.add(DynamicEntityGridState.ComplexQRScan);
    panelmem.add(DynamicEntityGridState.newVehicle);
    panelmem.add(DynamicEntityGridState.securityservicerequest);
    return panelmem;
  }

  static List<DynamicEntityGridState> fillTripManagerPanel() {
    List<DynamicEntityGridState> panelmem = [];
    List<String> allowedrolesI = ["TRIPMANAGER", "MANAGER"];
    bool ismanagerOrImOrI = checkRoleWithEmployeeCheckInService(allowedrolesI);
    bool hassec = checkifServiceHasTrip();
    if (ismanagerOrImOrI == false || hassec == false) {
      return panelmem;
    }
    panelmem.add(DynamicEntityGridState.newStaff);
    return panelmem;
  }

  static List<DynamicEntityGridState> fillTripUserPanel() {
    List<DynamicEntityGridState> panelmem = [];
    List<String> allowedrolesI = ["TRIPMANAGER", "MANAGER", "TRIPUSER"];
    bool ismanagerOrImOrI = checkRoleWithEmployeeCheckInService(allowedrolesI);
    bool hassec = checkifServiceHasTrip();
    if (ismanagerOrImOrI == false || hassec == false) {
      return panelmem;
    }
    panelmem.add(DynamicEntityGridState.newStaff);
    return panelmem;
  }

  static List<DynamicEntityGridState> fillClassifiedUserPanel() {
    List<DynamicEntityGridState> panelmem = [];
    panelmem.add(DynamicEntityGridState.classifiedvehicle);
    panelmem.add(DynamicEntityGridState.classifiedrealestate);
    panelmem.add(DynamicEntityGridState.classifiedpet);
    panelmem.add(DynamicEntityGridState.classifiedjob);
    panelmem.add(DynamicEntityGridState.tempvehicledetails);
    panelmem.add(DynamicEntityGridState.temprealestatedetails);
    panelmem.add(DynamicEntityGridState.temppetdetails);
    panelmem.add(DynamicEntityGridState.tempjobdetails);
    return panelmem;
  }

  static List<DynamicEntityGridState> fillClassifiedBrokerPanel() {
    List<DynamicEntityGridState> panelmem = [];
    panelmem.add(DynamicEntityGridState.brokerclassifiedvehicle);
    panelmem.add(DynamicEntityGridState.brokerclassifiedrealestate);
    panelmem.add(DynamicEntityGridState.shopproduct);
    panelmem.add(DynamicEntityGridState.classifiedproduct);

    return panelmem;
  }

  static List<DynamicEntityGridState> fillproductpanel() {
    List<DynamicEntityGridState> panelmem = [];
    panelmem.add(DynamicEntityGridState.productcategorylist);

    return panelmem;
  }

  static EntityRoleState getroleToFeatureMap() {
    if (_userRepository.getUser().defaultType == entityT.service)
      return getroleToFeatureMapForServiceProvider();
    else if (_userRepository.getUser().defaultType == entityT.complex)
      return getroleToFeatureMapForComplex();
    else
      return getroleToFeatureMapForSelf();
  }

  static EntityRoleState getroleToFeatureMapForSelf() {
    //return roleToServiceMap[EntityRoles.Manager];
    return new EntityRoleState(
      role: EntityRoles.Manager,
      selfalertInfo: [],
      selforderandappointmentInfo: [],

      securityPanel: [],
      staffPanel: [],
      // staffPanel: [
      //   DynamicEntityGridState.FeePlans,
      // ],
      setupPanel: [],
      feesPaymentPanel: [],
      academicManagerPanel: [],
      academicPanel: [],
      ecomPanel: [],
      //aptPanel: UiSchoolPageStateList.fillAptPanel(),
      tripManagerpanel: [],
      tripuserpanel: [],
      enduserpanel: [],
      newformpanel: [],
      brokerpanel: [],
      userclassifiedpanel: UiEntityPageStateList.fillClassifiedUserPanel(),
      productpanel: [],
      pageState: UiEntityPageStateList.serviceFeaturePageState,
    );
  }

  static EntityRoleState getroleToFeatureMapForComplex() {
    //return roleToServiceMap[EntityRoles.Manager];
    return new EntityRoleState(
      role: EntityRoles.Manager,
      selfalertInfo: [],
      selforderandappointmentInfo: [],
      securityPanel: fillSecurityPaneComplex(),
      staffPanel: fillStaffPanelComplex(),
      // staffPanel: [
      //   DynamicEntityGridState.FeePlans,
      // ],
      setupPanel: fillSetupPanelComplex(),
      feesPaymentPanel: [],
      academicManagerPanel: [],
      academicPanel: [],
      ecomPanel: [],
      //aptPanel: UiSchoolPageStateList.fillAptPanel(),
      tripManagerpanel: [],
      tripuserpanel: [],
      enduserpanel: fillEndUserPanelComplex(),
      newformpanel: [],
      brokerpanel: [],
      userclassifiedpanel: [],
      productpanel: [],
      pageState: UiEntityPageStateList.complexFeaturePageState, aptPanel: [],
    );
  }

  static EntityRoleState getroleToFeatureMapForServiceProvider() {
    //return roleToServiceMap[EntityRoles.Manager];
    return new EntityRoleState(
      role: EntityRoles.Manager,
      selfalertInfo: [],
      selforderandappointmentInfo: [],

      securityPanel: fillSecurityPaneService(),
      staffPanel: fillStaffPanelService(),
      // staffPanel: [
      //   DynamicEntityGridState.FeePlans,
      // ],
      aptPanel: [],
      setupPanel: fillSetupPanelService(),
      feesPaymentPanel: fillFeePaymentPanel(),
      academicManagerPanel: fillAcademicsManagerPanel(),
      academicPanel: fillAcademicsPanel(),
      ecomPanel: fillEcomPanel(),

      //aptPanel: UiSchoolPageStateList.fillAptPanel(),
      tripManagerpanel: fillTripManagerPanel(),
      tripuserpanel: fillTripUserPanel(),
      enduserpanel: fillEndUserPanelService(),
      newformpanel: [],
      brokerpanel: UiEntityPageStateList.fillClassifiedBrokerPanel(),
      userclassifiedpanel: UiEntityPageStateList.fillClassifiedUserPanel(),
      productpanel: UiEntityPageStateList.fillproductpanel(),
      pageState: UiEntityPageStateList.serviceFeaturePageState,
    );
  }

  static List<DynamicEntityPageState> serviceFeaturePageState = [
    DynamicEntityPageState.SetupPanel,
    DynamicEntityPageState.Academic,
    DynamicEntityPageState.FeesPayment,
    DynamicEntityPageState.StaffPanel,
    DynamicEntityPageState.SecurityPanel,
    //DynamicEntityPageState.EcomPanel,
    //DynamicEntityPageState.AptPanel,
    //DynamicEntityPageState.AcademicManager,
    // DynamicEntityPageState.TripManager,
    //DynamicEntityPageState.TripUser,
    //DynamicEntityPageState.EndUser,
    //DynamicEntityPageState.NewForms,
    //DynamicEntityPageState.userclassifiedpanel,
    //DynamicEntityPageState.brokerpanel,
    //DynamicEntityPageState.productpanel
  ];
  static List<DynamicEntityPageState> complexFeaturePageState = [
    DynamicEntityPageState.SetupPanel,
    DynamicEntityPageState.StaffPanel,
    DynamicEntityPageState.SecurityPanel,
    DynamicEntityPageState.EndUser
  ];

  static List<DynamicEntityPageState> selfFeaturePageState = [
    DynamicEntityPageState.SelfInformationAlert,
    DynamicEntityPageState.SelfInformationOrderAndApt,
    DynamicEntityPageState.userclassifiedpanel,
  ];
}

class CurEntity {
  String entitytype;
  String entityid;
  CurEntity(this.entitytype, this.entityid);
}

class UiSchoolHandler {
  static final UserRepository _userRepository = HelpUtil.getUserRepository();

  static CurEntity getCurEntity() {
    // UserRepository _user = Get.find();
    var user = _userRepository.getUser();
    CurEntity c;
    if (user.defaultType == entityT.complex &&
        user.defaultComplexEntity?.complexID != null) {
      c = new CurEntity("COMPLEXES", user.defaultComplexEntity.complexID);
    } else if (user.defaultType == entityT.service &&
        user.defaultServiceEntity?.serviceID != null) {
      c = new CurEntity(
          "SERVICEPROVIDERINFO", user.defaultServiceEntity.serviceID);
    } else {
      c = new CurEntity(null, null);
    }

    return c;
  }

  static CustomGridClass toTopGrid(
      DynamicEntityGridState topPanelState, context) {
    CustomGridClass _customGrid;
    switch (topPanelState) {
      case DynamicEntityGridState.SessionTerm:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'SessionTerm',
            tapAction: () {});
        break;
      case DynamicEntityGridState.FeeItem:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Fee Item',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => FeeItemFormList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.Rooms:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts, title: 'Rooms', tapAction: () {});
        break;
      case DynamicEntityGridState.Grades:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts, title: 'ExamTerm', tapAction: () {});
        break;
      case DynamicEntityGridState.Offerings:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'SessionTerm',
            tapAction: () {});
        break;
      case DynamicEntityGridState.FeeItem:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Fee Item',
            tapAction: () {
              // listbloc.StringListBloc mlistbloc=BlocProvider.of<listbloc.StringListBloc>(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FeeItemFormList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                      // mlistbloc: mlistbloc,
                    ),
                  ));
            });
        break;

      case DynamicEntityGridState.FeeQRScan:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'SessionTerm',
            tapAction: () {});
        break;

      case DynamicEntityGridState.selfstaff:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'SessionTerm',
            tapAction: () {});
        break;

      case DynamicEntityGridState.newBuilding:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newbuilding',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => BuildingModelListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.newUnits:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newunits',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => UnitModelListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                    ),
                  ));
            });
        break;
      //origin =1 , building type - Multiowner
      case DynamicEntityGridState.managerregistryMultiOwner:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Owner Registration',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => RegistryListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                      origintype: 1,
                    ),
                  ));
            });
        break;
      //origin =2 , building type - SingleOwner
      case DynamicEntityGridState.managerregistrySingleOwner:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Resident Registrations',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => RegistryListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                      origintype: 2,
                    ),
                  ));
            });
        break;
      //origin =4 , Show list , no Add functionality allowed
      case DynamicEntityGridState.registrylist:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Resident Directory',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => RegistryListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                      origintype: 4,
                    ),
                  ));
            });
        break;
      //origin =3 , Just show Units from UserProfile , allow adding of resident -- In case of Owner , otherwise Add button is hidden
      case DynamicEntityGridState.newownerresidentregistry:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'My Units',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => RegistryListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                      origintype: 3,
                    ),
                  ));
            });
        break;

// origin =1 , Only allow addition of Adhoc Visitor Request , No edit allowed to any existing servicerequest
      case DynamicEntityGridState.securityservicerequest:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Active Service Request',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => ServiceModelListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                      originlist: 1,
                    ),
                  ));
            });
        break;

// origin =2 , Only allow addition of service request for a staff memeber, no unit address is shown , only show servicerequest created by this staff memeber
      case DynamicEntityGridState.selfstaffservicerequest:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'My Service Request',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => ServiceModelListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                      originlist: 1,
                    ),
                  ));
            });
        break;

// origin =3 , Only allow addition of owner/resident,show unitid , show servicerequest only corresponding to unitid present in userprofile
      case DynamicEntityGridState.newownerresidentservicerequest:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newservicerequest',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => ServiceModelListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                      originlist: 1,
                    ),
                  ));
            });
        break;

// origin =1 , for staff, no Approval thing required
      case DynamicEntityGridState.selfleaverequest:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newleaverequest',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => LeaveRequestListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                      origintype: 1,
                    ),
                  ));
            });
        break;
// origin =2 , for staff, no Approval thing required
      case DynamicEntityGridState.leaverequestapproval:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newleaverequest',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => LeaveRequestListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                      origintype: 2,
                    ),
                  ));
            });
        break;

      case DynamicEntityGridState.newVehicle:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newvehicle',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => VehicleModelListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.newFamilyMember:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newfamilymember',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => FamilyMemberListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.newEntryLogs:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newentrylogs',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => EntryLogsListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.newfeeplan:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newfeeplan',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => FeePlanModelListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                    ),
                  ));
            });
        break;

      case DynamicEntityGridState.newStaff:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Add Staff',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => StaffModelListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                    ),
                  ));
            });
        break;

      case DynamicEntityGridState.newStaffRegistry:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Staff Directory',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => StaffModelListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                    ),
                  ));
            });
        break;

      case DynamicEntityGridState.newfeeitemgrp:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newfeeitemgrp',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => FeeItemGroupsModelListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                    ),
                  ));
            });
        break;

      case DynamicEntityGridState.newofferinggroup:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newofferinggroup',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => OfferingModelGroupListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.newvirtualroom:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newvirtualroom',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => VirtualRoomModelListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.newteacherassignment:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newteacherassignment',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => TeacherAssignmentModelListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.newofferingschedule:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newofferingschedule',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => OfferingWeeklyScheduleListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                    ),
                  ));
            });
        break;
      // case DynamicEntityGridState.newSessionRegistration:
      //   _customGrid = CustomGridClass(
      //       icon: Icons.import_contacts,
      //       title: 'newsessionregistration',
      //       tapAction: () {
      //         Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (buildContext) => SessionRegistrationListList(
      //                 entitytype: getCurEntity().entitytype,
      //                 entityid: getCurEntity().entityid,
      //               ),
      //             ));
      //       });
      //   break;
      case DynamicEntityGridState.newEvent:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'neweventpage',
            tapAction: () async {
              NewSchoolRepository _schoolRepo = Get.find();
              UserRepository _userRepository = Get.find();

              String entityid = getCurEntity().entityid;
              var sessionTerms = await _schoolRepo.lookup.getSessionStringList(
                serviceID: entityid,
              );
              var grades = await _schoolRepo.lookup.getGradesList(
                serviceID: entityid,
              );
              var instructorData =
                  await _schoolRepo.instructor.setInstructorScheduleData(
                serviceID: entityid,
                staffID: _userRepository.getUser().userID,
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => EventPage(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                      loadButtonState: ButtonState.idle,
                      submitButtonState: ButtonState.idle,
                      sessionTerms: sessionTerms,
                      grades: grades,
                      instructorData: instructorData,
                    ),
                  ));
            });
        break;

      case DynamicEntityGridState.newParentAttendance:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newparentattendanceinfopage',
            tapAction: () async {
              NewSchoolRepository _schoolRepo = Get.find();

              String entityid = getCurEntity().entityid;

              Future<List<VrAssignmentModel>> vrAssignmentGetter({
                String idNumber,
                String sessionTerm,
                String virtualRoom,
              }) {
                return _schoolRepo.assignment.getVrAssignmentsForIdCard(
                  entityid: entityid,
                  sessionterm: sessionTerm,
                  virtualRoomName: virtualRoom,
                );
              }

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => ParentInfoPage(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                      sessionTerms: HelpUtil.getUserModel()
                          .defaultServiceEntity
                          .getSessionTerms(),
                      virtualRooms: HelpUtil.getUserModel()
                          .defaultServiceEntity
                          .getVirtualRooms(),
                      idNumbers: HelpUtil.getUserModel()
                          .defaultServiceEntity
                          .getIdCardNumbers(),
                      assignmentListGetter: vrAssignmentGetter,
                      mode: ParentViewMode.Attendance,
                      dataList: null,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.newParentProgress:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newparentprogressinfopage',
            tapAction: () async {
              NewSchoolRepository _schoolRepo = Get.find();

              String entityid = getCurEntity().entityid;

              Future<List<VrAssignmentModel>> vrAssignmentGetter({
                String idNumber,
                String sessionTerm,
                String virtualRoom,
              }) {
                return _schoolRepo.assignment.getVrAssignmentsForIdCard(
                  entityid: entityid,
                  sessionterm: sessionTerm,
                  virtualRoomName: virtualRoom,
                );
              }

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => ParentInfoPage(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                      sessionTerms: HelpUtil.getUserModel()
                          .defaultServiceEntity
                          .getSessionTerms(),
                      virtualRooms: HelpUtil.getUserModel()
                          .defaultServiceEntity
                          .getVirtualRooms(),
                      idNumbers: HelpUtil.getUserModel()
                          .defaultServiceEntity
                          .getIdCardNumbers(),
                      assignmentListGetter: vrAssignmentGetter,
                      mode: ParentViewMode.Progress,
                      dataList: null,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.newParentEvent:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newparenteventinfopage',
            tapAction: () async {
              NewSchoolRepository _schoolRepo = Get.find();

              String entityid = getCurEntity().entityid;

              Future<List<VrAssignmentModel>> vrAssignmentGetter({
                String idNumber,
                String sessionTerm,
                String virtualRoom,
              }) {
                return _schoolRepo.assignment.getVrAssignmentsForIdCard(
                  entityid: entityid,
                  sessionterm: sessionTerm,
                  virtualRoomName: virtualRoom,
                );
              }

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => ParentInfoPage(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                      sessionTerms: HelpUtil.getUserModel()
                          .defaultServiceEntity
                          .getSessionTerms(),
                      virtualRooms: HelpUtil.getUserModel()
                          .defaultServiceEntity
                          .getVirtualRooms(),
                      idNumbers: HelpUtil.getUserModel()
                          .defaultServiceEntity
                          .getIdCardNumbers(),
                      assignmentListGetter: vrAssignmentGetter,
                      mode: ParentViewMode.Event,
                      dataList: null,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.newParentAssignmentScore:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newparentassignmentscoreinfopage',
            tapAction: () async {
              NewSchoolRepository _schoolRepo = Get.find();
              UserRepository _userRepository = Get.find();

              String entityid = getCurEntity().entityid;

              Future<List<VrAssignmentModel>> vrAssignmentGetter({
                String idNumber,
                String sessionTerm,
                String virtualRoom,
              }) {
                return _schoolRepo.assignment.getVrAssignmentsForIdCard(
                  entityid: entityid,
                  sessionterm: sessionTerm,
                  virtualRoomName: virtualRoom,
                );
              }

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => ParentInfoPage(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                      sessionTerms: HelpUtil.getUserModel()
                          .defaultServiceEntity
                          .getSessionTerms(),
                      virtualRooms: HelpUtil.getUserModel()
                          .defaultServiceEntity
                          .getVirtualRooms(),
                      idNumbers: HelpUtil.getUserModel()
                          .defaultServiceEntity
                          .getIdCardNumbers(),
                      assignmentListGetter: vrAssignmentGetter,
                      mode: ParentViewMode.AssignmentScore,
                      dataList: null,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.newParentAssignmentsList:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newparentassignmentslistinfopage',
            tapAction: () async {
              NewSchoolRepository _schoolRepo = Get.find();

              String entityid = getCurEntity().entityid;

              Future<List<VrAssignmentModel>> vrAssignmentGetter({
                String idNumber,
                String sessionTerm,
                String virtualRoom,
              }) {
                return _schoolRepo.assignment.getVrAssignmentsForIdCard(
                  entityid: entityid,
                  sessionterm: sessionTerm,
                  virtualRoomName: virtualRoom,
                );
              }

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => ParentInfoPage(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                      sessionTerms: HelpUtil.getUserModel()
                          .defaultServiceEntity
                          .getSessionTerms(),
                      virtualRooms: HelpUtil.getUserModel()
                          .defaultServiceEntity
                          .getVirtualRooms(),
                      idNumbers: HelpUtil.getUserModel()
                          .defaultServiceEntity
                          .getIdCardNumbers(),
                      assignmentListGetter: vrAssignmentGetter,
                      mode: ParentViewMode.AssignmentsList,
                      dataList: null,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.newProgress:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newprogresspage',
            tapAction: () async {
              NewSchoolRepository _schoolRepo = Get.find();
              UserRepository _userRepository = Get.find();

              String entityid = getCurEntity().entityid;
              var offeringList = await _schoolRepo.lookup.getOfferingList(
                serviceID: entityid,
              );
              var examtermlist = await _schoolRepo.lookup.getExamTermsList(
                serviceID: entityid,
              );
              var sessionTerms = await _schoolRepo.lookup.getSessionStringList(
                serviceID: entityid,
              );
              var grades = await _schoolRepo.lookup.getGradesList(
                serviceID: entityid,
              );
              var virtualRoomList =
                  await _schoolRepo.virtualRoom.getVirtualRooms(
                serviceID: entityid,
              );
              var instructorData =
                  await _schoolRepo.instructor.setInstructorScheduleData(
                serviceID: entityid,
                staffID: _userRepository.getUser().userID,
              );

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => ProgressPage(
                      entitytype: getCurEntity().entitytype,
                      entityid: entityid,
                      offeringList: offeringList,
                      examtermlist: examtermlist,
                      sessionTerms: sessionTerms,
                      grades: grades,
                      virtualRoomList: virtualRoomList,
                      instructorData: instructorData,
                      loadButtonState: ButtonState.idle,
                      submitButtonState: ButtonState.idle,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.newAttendance:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newattendancepage',
            tapAction: () async {
              NewSchoolRepository _schoolRepo = Get.find();
              UserRepository _userRepository = Get.find();

              String entityid = getCurEntity().entityid;
              var sessionTerms = await _schoolRepo.lookup.getSessionStringList(
                serviceID: entityid,
              );
              var grades = await _schoolRepo.lookup.getGradesList(
                serviceID: entityid,
              );
              var instructorData =
                  await _schoolRepo.instructor.setInstructorScheduleData(
                serviceID: entityid,
                staffID: _userRepository.getUser().userID,
              );
              var attendanceModel;
              // await _schoolRepo.instructor.getAttendance(
              //   serviceID: entityid,
              //   name: event.name,
              //   sessionTerm: sessionTerm,
              //   dateTime: event.date,
              //   kind: event.kind,
              //   attendanceType: event.attendanceType,
              // );

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => AttendancePage(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                      loadButtonState: ButtonState.idle,
                      submitButtonState: ButtonState.idle,
                      sessionTerms: sessionTerms,
                      grades: grades,
                      instructorData: instructorData,
                      attendance: attendanceModel,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.newAssignment:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newcreateassignment',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => CreateAssignmentList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.newStudents:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            // title: 'newstudentbasicform',
            title: 'userRegistration',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => StudentBasicFormModelListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.newPaymentPeriod:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newpaymentperiod',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => PaymentModelListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                    ),
                  ));
            });
        break;

      case DynamicEntityGridState.FeeItem:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Fee Item',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => FeeItemFormList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.newClassPeriod:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newclassperiod',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => ClassPeriodModelListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                    ),
                  ));
            });
        break;

      case DynamicEntityGridState.newVRAssignment:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'newVRAssignment',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => AttachAssignmentListList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.FeeItem:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Fee Item',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => FeeItemFormList(
                      entitytype: getCurEntity().entitytype,
                      entityid: getCurEntity().entityid,
                    ),
                  ));
            });
        break;

      case DynamicEntityGridState.temppetdetails:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Pet/FarmAnimals Details',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => PetsDetailPage(
                      docId: "MJtvMr9arqpepKVncqp5",
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.tempjobdetails:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Job Details',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => JobDetailPage(
                      docId: "MkWAEblEkuuEnIrNpGlE",
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.temprealestatedetails:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'RealEstate Details',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => PropertyDetailPage(
                      docId: "8iH7vo7wtzroFcHRN6Av",
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.tempvehicledetails:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Vehicle Details',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => VehicleDetailPage(
                      docId: "6iknU0qt28LnJQYkHOzn",
                    ),
                  ));
            });
        break;

      case DynamicEntityGridState.classifiedpet:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Pet/FarmAnimals',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => GeneralContactDetailPage(
                      type: ContactOpenFrom.pet,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.classifiedjob:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Job',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => GeneralContactDetailPage(
                      type: ContactOpenFrom.job,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.classifiedvehicle:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Vehicle',
            tapAction: () {
              Navigator.push(
                  context,
                  NextPageRoute(GeneralContactDetailPage(
                    type: ContactOpenFrom.vehicle,
                  )));
            });
        break;
      case DynamicEntityGridState.brokerclassifiedvehicle:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Vehicle',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => GeneralContactDetailPage(
                      type: ContactOpenFrom.vehicle,
                    ),
                  ));
            });
        break;

      case DynamicEntityGridState.brokerclassifiedrealestate:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Real Estate',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => GeneralContactDetailPage(
                      type: ContactOpenFrom.addProperty,
                    ),
                  ));
            });
        break;
      case DynamicEntityGridState.classifiedrealestate:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Real Estate',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => GeneralContactDetailPage(
                      type: ContactOpenFrom.addProperty,
                    ),
                  ));
            });
        break;

      case DynamicEntityGridState.productcategorylist:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Real Estate',
            tapAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (buildContext) => DynamicCategoryPage(
                      schemaname: "CATEGORY",
                      entityid: null,
                      entitytype: null,
                    ),
                  ));
            });
        break;

      case DynamicEntityGridState.shopproduct:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Shop Product',
            tapAction: () {
              Navigator.push(
                  context,
                  NextPageRoute(GeneralContactDetailPage(
                    type: ContactOpenFrom.product,
                  )));
            });
        break;
      case DynamicEntityGridState.classifiedproduct:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Classified Product',
            tapAction: () {
              Navigator.push(
                  context,
                  NextPageRoute(GeneralContactDetailPage(
                    type: ContactOpenFrom.product,
                    isService: false,
                    serviceProviderId: "ABC",
                    serviceId: "BCD",
                  )));
            });
        break;
      case DynamicEntityGridState.neworder:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Manage Orders',
            tapAction: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => OrdersView(),
              ));
            });
        break;
      case DynamicEntityGridState.newvenodr:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Your Vendors',
            tapAction: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => VendorView(),
                ),
              );
            });
        break;
      case DynamicEntityGridState.newdelivery:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Manage Delievery',
            tapAction: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => DeliveryView(),
                ),
              );
            });
        break;
      case DynamicEntityGridState.newdeliverytrip:
        _customGrid = CustomGridClass(
            icon: Icons.import_contacts,
            title: 'Manage Delievery Trips',
            tapAction: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => TripsView(),
                ),
              );
            });
        break;

        // TODO: Handle this case.
        break;
      case DynamicEntityGridState.SessionTerm:
        // TODO: Handle this case.
        break;
      case DynamicEntityGridState.newRegistry:
        // TODO: Handle this case.
        break;
      case DynamicEntityGridState.newServiceRequest:
        // TODO: Handle this case.
        break;
      case DynamicEntityGridState.ComplexQRScan:
        // TODO: Handle this case.
        break;
      case DynamicEntityGridState.ExamTerm:
        // TODO: Handle this case.
        break;
      case DynamicEntityGridState.ClassPeriod:
        // TODO: Handle this case.
        break;
    }

    return _customGrid;
  }
}

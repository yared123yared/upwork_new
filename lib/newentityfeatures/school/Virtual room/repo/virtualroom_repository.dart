import 'package:complex/common/model/button_state.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';
import 'package:complex/newentityfeatures/Models/school_owner_model.dart';
import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/commonrepo/helperrepository.dart';
import 'package:complex/newentityfeatures/gateway/lookups_gateway.dart';
import 'package:complex/newentityfeatures/gateway/offering_vr_schedule_gateway.dart';
import 'package:complex/newentityfeatures/gateway/session_term_gateway.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class VirtualRoomModelRepositoryReturnData {
  List<VirtualRoomModelNewFormat> itemlist;
  VirtualRoomModelNewFormat item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  VirtualRoomModelRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class VirtualRoomModelRepository {
  NewSchoolRepository _schoolRepo = Get.find();

  Future<VirtualRoomModelRepositoryReturnData> getAllVirtualRoomModels(
      String entitytype, String entityid) async {
    VirtualRoomModelRepositoryReturnData myreturn =
        VirtualRoomModelRepositoryReturnData();
    //Please put your code here

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<GenericLookUpDataUsedForRegistration> getListFormPreLoadData(
      String entitytype, String entityid) async {
    GenericLookUpDataUsedForRegistration grerror =
        new GenericLookUpDataUsedForRegistration();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<String> gradelist =
          await LookupGateway.getGradeList(serviceID: entityid);
      List<String> sessiontermlist =
          await SessionTermGateway.getSessionStringList(
        serviceID: entityid,
      );

      //Please put your code here
      GenericLookUpDataUsedForRegistration gr =
          new GenericLookUpDataUsedForRegistration();
      gr.errortype = -1;
      gr.grades = gradelist;
      gr.sessionterm = sessiontermlist;
      gr.offeringModelGroupfunc = HelperRepository.offeringModelGroupfunc;
      return gr;
    } catch (ex) {
      grerror.errortype = -2;
      print(ex.toString());
      grerror.error = "UNknown exception has occured";
    }
    return grerror;
  }

  Future<VirtualRoomDataEntry> getItemFormNewEntryData(
      String entitytype, String entityid) async {
    VirtualRoomDataEntry grerror = VirtualRoomDataEntry();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<String> grades = await LookupGateway.getGradeList(
        serviceID: entityid,
      );
      List<String> rooms = await LookupGateway.getRoomsInfo( entityid)
          .then((value) => value.map((e) => e.roomName).toList());

      List<SchoolOwner> schoolOwners = await OfferingsVrManagementGateway.getListOfStaff(
        entitytype: entitytype,
        entityid: entityid,
        staffcategory: 'instructor',
      );

      VirtualRoomDataEntry gr = VirtualRoomDataEntry();
      gr.errortype = -1;
      gr.grades = grades;
      gr.rooms = rooms;
      gr.schoolOwners = schoolOwners;
      gr.buttonState = ButtonState.idle;

      return gr;
    } catch (ex) {
      print(ex);
    }
    return grerror;
  }

  Future<VirtualRoomModelRepositoryReturnData>
      getVirtualRoomModelWithOfferingSearch(String entitytype, String entityid,
          String sessionterm, String offeringgroup) async {
    VirtualRoomModelRepositoryReturnData grerror =
        new VirtualRoomModelRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      VirtualRoomModelRepositoryReturnData gr =
          new VirtualRoomModelRepositoryReturnData();
      gr = await getVirtualRoomModelWithOfferingSearch(
          entitytype, entityid, sessionterm, offeringgroup);
      gr.errortype = -1;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<VirtualRoomModelRepositoryReturnData> createVirtualRoomModel(
      VirtualRoomModelNewFormat item,
      String entitytype,
      String entityid) async {
    VirtualRoomModelRepositoryReturnData myreturn =
        VirtualRoomModelRepositoryReturnData();
    await OfferingsVrManagementGateway.addVirtualRoomActionRequest(
        virtualRoomsModelMod: item, serviceID: entityid);
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<VirtualRoomModelRepositoryReturnData> updateVirtualRoomModel(
      VirtualRoomModelNewFormat item,
      String entitytype,
      String entityid) async {
    VirtualRoomModelRepositoryReturnData myreturn =
        VirtualRoomModelRepositoryReturnData();
    await OfferingsVrManagementGateway.updateVirtualRoom(
        newdata: item, oldData: item, serviceID: entityid);
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<VirtualRoomModelRepositoryReturnData> updateVirtualRoomModelWithDiff(
      VirtualRoomModelNewFormat newitem,
      VirtualRoomModelNewFormat olditem,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<VirtualRoomModelRepositoryReturnData> deleteVirtualRoomModelWithData(
      VirtualRoomModelNewFormat item,
      String entitytype,
      String entityid) async {
    VirtualRoomModelRepositoryReturnData myreturn =
        VirtualRoomModelRepositoryReturnData();
    await OfferingsVrManagementGateway.deleteVirtualRoom(
      virtualroomname: item.virtualRoomName,
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<VirtualRoomModelRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    VirtualRoomModelRepositoryReturnData myreturn =
        VirtualRoomModelRepositoryReturnData();

    myreturn.itemlist = await OfferingsVrManagementGateway
        .getVirtualRoomModelNewFormatList(
       entityid,
       null,
    );

    myreturn.errortype = -1;
    return myreturn;
  }
}

class VirtualRoomDataEntry {
  List<String> grades;
  ButtonState buttonState;
  List<String> rooms;
  List<SchoolOwner> schoolOwners;

  int errortype;
  String error;
}

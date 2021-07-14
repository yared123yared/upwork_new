import 'package:complex/common/model/button_state.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';
import 'package:complex/newentityfeatures/Models/progress_model.dart';
import 'package:complex/newentityfeatures/Models/virtual_room_model.dart';
//import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
import 'package:complex/newentityfeatures/gateway/lookups_gateway.dart';
import 'package:complex/newentityfeatures/gateway/offering_vr_schedule_gateway.dart';
import 'package:complex/newentityfeatures/gateway/progress_gateway.dart';
import 'package:complex/newentityfeatures/gateway/session_term_gateway.dart';
import '../bloc/bloc.dart';
//import 'package:get/get_core/src/get_main.dart';
//import 'package:get/get.dart';
import 'package:complex/newentityfeatures/Models/attendance_model.dart';

class ProgressModelRepositoryReturnData {
  List<AttendanceModel> itemlist;
  AttendanceModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  ProgressModelRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class ProgressModelRepository {
  //NewSchoolRepository _schoolRepo = Get.find();
  // UserSessionRegRepository _userRepository;

  Future<ProgressDataModel> loadData(LoadDataEvent event) async {
    ProgressDataModel grerror = ProgressDataModel();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      //Please put your code here
      ProgressDataModel gr = ProgressDataModel();
      if (event.virtualRoom == null &&
          event.sessionTerm == null &&
          event.kind == null) {
        gr = ProgressDataModel(
          offeringList: await LookupGateway
              .getOfferingsList(event.entityid),
          examtermlist: await LookupGateway
              .getExamTermInfo( event.entityid),
          sessionTerms: await SessionTermGateway
              .getSessionStringList(serviceID: event.entityid),
          grades:
              await LookupGateway.getGradeList(serviceID: event.entityid),
          virtualRoomList: await SessionTermGateway.getVirtualRoomListPerSessionTerm(event.entityid),
          loadButtonState: ButtonState.idle,
          instructorData:
              await OfferingsVrManagementGateway.getInstructorScheduleData(
            serviceID: event.entityid,
                staffid: null,
            // staffID: _userRepository.getUser().userID,
          ),
          submitButtonState: ButtonState.idle,
          progressModel: null,
        );
      } else {
        DateTime now = new DateTime.now();
        DateTime date = new DateTime(now.year, now.month, now.day);
        gr = ProgressDataModel(
          offeringList: await LookupGateway
              .getOfferingsList(event.entityid),
          examtermlist: await LookupGateway
              .getExamTermInfo( event.entityid),
          sessionTerms: await SessionTermGateway
              .getSessionStringList(serviceID: event.entityid),
          virtualRoomList: await  SessionTermGateway.getVirtualRoomListPerSessionTerm(event.entityid),
          grades:
              await LookupGateway.getGradeList(serviceID: event.entityid),
          loadButtonState: ButtonState.idle,
          submitButtonState: ButtonState.idle,
          instructorData:
              await OfferingsVrManagementGateway.getInstructorScheduleData(
            serviceID: event.entityid,
                staffid: null,
            // staffID: _userRepository.getUser().userID,
          ),
          progressModel: event.isofferingindependent
              ? await ProgressGateway.getProgressOFR(
                  serviceID: event.entityid,
                  offeringname: event.offeringname,
                  sessionTerm: event.sessionTerm,
                  kind: event.kind,
            dateTime: date
                )

              : await ProgressGateway.getProgressVR(
                  serviceID: event.entityid,
            virtualroomname: event.virtualRoom,
                  sessionTerm: event.sessionTerm,
                  kind: event.kind,
              dateTime: date
                ),
        );
      }

      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<ProgressDataModel> submitData(SubmitDataEvent event) async {
    ProgressDataModel grerror = ProgressDataModel();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      //Please put your code here
      event.progressModel.atttype == "vr"
          ? await ProgressGateway.submitProgressVirtualRoom(
              progressModel: event.progressModel,
              sessionTermName: event.sessionTermName,
              virtualroomname: event.progressModel.virtualrooname,
              serviceID: event.entityid,
            )
          : await ProgressGateway.submitProgressOfr(
              progressModel: event.progressModel,
              sessionTermName: event.sessionTermName,
              offeringname: event.progressModel.offeringname,
              serviceID: event.entityid,
            );

      ProgressDataModel gr = ProgressDataModel(

        offeringList: await LookupGateway
            .getOfferingsList(event.entityid),
        examtermlist: await LookupGateway
            .getExamTermInfo( event.entityid),
        sessionTerms: await SessionTermGateway
            .getSessionStringList(serviceID: event.entityid),
        virtualRoomList: await  SessionTermGateway.getVirtualRoomListPerSessionTerm(event.entityid),
        grades:
        await LookupGateway.getGradeList(serviceID: event.entityid),

        instructorData:
        await OfferingsVrManagementGateway.getInstructorScheduleData(
          serviceID: event.entityid,
          staffid: null,
          // staffID: _userRepository.getUser().userID,
        ),

        loadButtonState: ButtonState.idle,
        submitButtonState: ButtonState.success,
        progressModel: event.progressModel,
        errortype: -1,
      );
      return gr;
    } catch (ex) {}
    return grerror;
  }
}

class ProgressDataModel {
  final ProgressModel progressModel;
  final List<String> grades;
  final List<String> sessionTerms;
  final List<String> offeringList;
  final Map<String, List<VirtualRoomModel>> virtualRoomList;
  final ButtonState loadButtonState;
  final ButtonState submitButtonState;
  final InstructorOfferingDataModel instructorData;
  final List<ExamTermInfo> examtermlist;

  ProgressDataModel({
    this.progressModel,
    this.grades,
    this.examtermlist,
    this.sessionTerms,
    this.virtualRoomList,
    this.loadButtonState,
    this.submitButtonState,
    this.offeringList,
    this.instructorData,
    this.errortype,
    this.error,
  });

  int errortype;
  String error;
}

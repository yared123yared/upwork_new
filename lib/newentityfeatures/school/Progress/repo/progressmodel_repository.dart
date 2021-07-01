import 'package:complex/common/model/button_state.dart';
import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';
import 'package:complex/newentityfeatures/Models/progress_model.dart';
import 'package:complex/newentityfeatures/Models/virtual_room_model.dart';
import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
import '../bloc/bloc.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
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
  NewSchoolRepository _schoolRepo = Get.find();
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
          offeringList: await _schoolRepo.lookup
              .getOfferingList(serviceID: event.entityid),
          examtermlist: await _schoolRepo.lookup
              .getExamTermsList(serviceID: event.entityid),
          sessionTerms: await _schoolRepo.lookup
              .getSessionStringList(serviceID: event.entityid),
          grades:
              await _schoolRepo.lookup.getGradesList(serviceID: event.entityid),
          virtualRoomList: await _schoolRepo.virtualRoom
              .getVirtualRooms(serviceID: event.entityid),
          loadButtonState: ButtonState.idle,
          instructorData:
              await _schoolRepo.instructor.setInstructorScheduleData(
            serviceID: event.entityid,
            staffID: null,
            // staffID: _userRepository.getUser().userID,
          ),
          submitButtonState: ButtonState.idle,
          progressModel: null,
        );
      } else {
        gr = ProgressDataModel(
          offeringList: await _schoolRepo.lookup
              .getOfferingList(serviceID: event.entityid),
          examtermlist: await _schoolRepo.lookup
              .getExamTermsList(serviceID: event.entityid),
          sessionTerms: await _schoolRepo.lookup
              .getSessionStringList(serviceID: event.entityid),
          virtualRoomList: await _schoolRepo.virtualRoom
              .getVirtualRooms(serviceID: event.entityid),
          grades:
              await _schoolRepo.lookup.getGradesList(serviceID: event.entityid),
          loadButtonState: ButtonState.idle,
          submitButtonState: ButtonState.idle,
          instructorData:
              await _schoolRepo.instructor.setInstructorScheduleData(
            serviceID: event.entityid,
            staffID: null,
            // staffID: _userRepository.getUser().userID,
          ),
          progressModel: event.isofferingindependent
              ? await _schoolRepo.progress.getProgressIndependentOfr(
                  serviceID: event.entityid,
                  offeringname: event.offeringname,
                  sessionTerm: event.sessionTerm,
                  kind: event.kind,
                )
              : await _schoolRepo.progress.getProgressVR(
                  serviceID: event.entityid,
                  virtualRoomName: event.virtualRoom,
                  sessionTerm: event.sessionTerm,
                  kind: event.kind,
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
          ? await _schoolRepo.progress.submitProgressVirtualRoom(
              progressModel: event.progressModel,
              sessionTermName: event.sessionTermName,
              virtualroomname: event.progressModel.virtualrooname,
              serviceID: event.entityid,
            )
          : await _schoolRepo.progress.submitProgressIndependentOffering(
              progressModel: event.progressModel,
              sessionTermName: event.sessionTermName,
              offeringname: event.progressModel.offeringname,
              serviceID: event.entityid,
            );

      ProgressDataModel gr = ProgressDataModel(
        offeringList:
            await _schoolRepo.lookup.getOfferingList(serviceID: event.entityid),
        examtermlist: await _schoolRepo.lookup
            .getExamTermsList(serviceID: event.entityid),
        grades:
            await _schoolRepo.lookup.getGradesList(serviceID: event.entityid),
        sessionTerms: await _schoolRepo.lookup
            .getSessionStringList(serviceID: event.entityid),
        virtualRoomList: await _schoolRepo.virtualRoom
            .getVirtualRooms(serviceID: event.entityid),
        instructorData: await _schoolRepo.instructor.setInstructorScheduleData(
          serviceID: event.entityid,
          staffID: null,
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

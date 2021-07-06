import 'package:complex/domain/core/failure/failure.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:complex/newentityfeatures/Models/fee_item_groups_model.dart';
import 'package:complex/newentityfeatures/f_lookups/common/repo/i_lookup_provider.dart';
import 'package:complex/newentityfeatures/f_lookups/common/repo/stringlookup/lookup_provider.dart';
import 'package:complex/newentityfeatures/gateway/fee_item_groups_gateway.dart';
import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/commonrepo/helperrepository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class FeeItemGroupsModelRepositoryReturnData {
  List<FeeItemGroupsModel> itemlist;
  FeeItemGroupsModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  FeeItemGroupsModelRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class FeeItemGroupsModelRepository {
  NewSchoolRepository _schoolRepo = Get.find();
  ILookupProvider provider = LookupProvider();
  Future<FeeItemGroupsModelRepositoryReturnData> getAllFeeItemGroupsModels(
      String entitytype, String entityid) async {
    FeeItemGroupsModelRepositoryReturnData myreturn =
        FeeItemGroupsModelRepositoryReturnData();
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
          await _schoolRepo.lookup.getGradesList(serviceID: entityid);
      List<String> sessiontermlist =
          await _schoolRepo.lookup.getSessionStringList(
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

  Future<GenericLookUpDataUsedForRegistration> getItemFormNewEntryData(
      String entitytype, String entityid) async {
    GenericLookUpDataUsedForRegistration grerror =
        new GenericLookUpDataUsedForRegistration();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<String> grades = await _schoolRepo.lookup.getGradesList(
        serviceID: entityid,
      );

      Either<Failure, FeeItems> data =
          await provider.getFeeItemsList(serviceID: entityid);
      List<String> feelistData = [];
      data.fold((l) => EasyLoading(), (r) => (feelistData = r.list));

      // List<String> sessiontermlist =
      //     await _schoolRepo.lookup.getSessionStringList(
      //   serviceID: entityid,
      // );
      // List<ExamTermInfo> examtermlist =
      //     await _schoolRepo.lookup.getExamTermsList(
      //   serviceID: entityid,
      // );

      //Please put your code here
      GenericLookUpDataUsedForRegistration gr =
          new GenericLookUpDataUsedForRegistration();
      gr.errortype = -1;
      gr.grades = grades;
      gr.feeitemlist = feelistData;

      // gr.sessionterm = sessiontermlist;
      // gr.examtermlist = examtermlist;
      // gr.assignmentModellistbyofferinggroupfunc =
      //     helperrepository.assignmentModellistbyofferinggroupfunc;
      // gr.teacherofferingassignmentlistbyGrade =
      //     helperrepository.teacherOfferingsAssignmentllistbyofferinggroupfunc;

      return gr;
    } catch (ex) {
      print(ex);
    }
    return grerror;
  }

  Future<FeeItemGroupsModelRepositoryReturnData>
      getFeeItemGroupsModelWithOfferingSearch(String entitytype,
          String entityid, String sessionterm, String offeringgroup) async {
    FeeItemGroupsModelRepositoryReturnData grerror =
        new FeeItemGroupsModelRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<FeeItemGroupsModel> list =
          await FeeItemGroupsGateway.getFeeItemGroupsList(serviceID: entityid);
      FeeItemGroupsModelRepositoryReturnData gr =
          new FeeItemGroupsModelRepositoryReturnData();
      gr.errortype = -1;
      gr.itemlist = list;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<FeeItemGroupsModelRepositoryReturnData> createFeeItemGroupsModel(
      FeeItemGroupsModel item, String entitytype, String entityid) async {
    FeeItemGroupsModelRepositoryReturnData myreturn =
        FeeItemGroupsModelRepositoryReturnData();
    // await FeeItemGroupsGateway.updateFeeItemGPRS(
    await _schoolRepo.addFeeItemGPRS(
      feeItemGPRS: item,
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<FeeItemGroupsModelRepositoryReturnData> updateFeeItemGroupsModel(
      FeeItemGroupsModel item, String entitytype, String entityid) async {
    FeeItemGroupsModelRepositoryReturnData myreturn =
        FeeItemGroupsModelRepositoryReturnData();
    await _schoolRepo
        .updatesFeeItemGPRS(
          feeItemGPRS: item,
          serviceID: entityid,
        )
        .catchError((e) => print(e));

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<FeeItemGroupsModelRepositoryReturnData>
      updateFeeItemGroupsModelWithDiff(
          FeeItemGroupsModel newitem,
          FeeItemGroupsModel olditem,
          String entitytype,
          String entityid) async {
    return null;
  }

  Future<FeeItemGroupsModelRepositoryReturnData>
      deleteFeeItemGroupsModelWithData(
          FeeItemGroupsModel item, String entitytype, String entityid) async {
    FeeItemGroupsModelRepositoryReturnData myreturn =
        FeeItemGroupsModelRepositoryReturnData();

    await FeeItemGroupsGateway.removeFeeItemGPRS(
      feeItemGPRS: item,
      serviceID: entityid,
      docId: item.scheduleName,
    ).catchError((e) => print(e));

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<FeeItemGroupsModelRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    FeeItemGroupsModelRepositoryReturnData myreturn =
        FeeItemGroupsModelRepositoryReturnData();
    myreturn.errortype = -1;

    List<FeeItemGroupsModel> list =
        await FeeItemGroupsGateway.getFeeItemGroupsList(serviceID: entityid);

    myreturn.itemlist = list;

    myreturn.errortype = -1;
    return myreturn;
  }
}

import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/Models/fee_item_groups_model.dart';
import 'package:complex/newentityfeatures/commonrepo/helperrepository.dart';
import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
import 'package:complex/newentityfeatures/gateway/lookups_gateway.dart';
import 'package:complex/newentityfeatures/gateway/session_term_gateway.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ClassPeriodModelRepositoryReturnData {
  List<ClassPeriodInfo> itemlist;
  ClassPeriodInfo item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  ClassPeriodModelRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class ClassPeriodModelRepository {


  Future<ClassPeriodModelRepositoryReturnData> getAllClassPeriodModels(
      String entitytype, String entityid) async {
    ClassPeriodModelRepositoryReturnData myreturn =
        ClassPeriodModelRepositoryReturnData();
    //Please put your code here

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

  Future<ClassPeriodDataEntry> getItemFormNewEntryData(
      String entitytype, String entityid) async {
    ClassPeriodDataEntry grerror = ClassPeriodDataEntry();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      String type;
      List<ClassPeriodInfo> items =
      await LookupGateway.getClassPeriodInfo( entityid);

      List<String> types = [];
      items.forEach((item) {
        if (!types.contains(item.type)) {
          types.add(item.type);
        }
      });



      ClassPeriodDataEntry gr = ClassPeriodDataEntry(
        type: type,
        types: types,
        paymentPeriods: null,
        feeItemsGroups: null,
        errortype: -1,
      );
      return gr;
    } catch (ex) {
      print(ex);
    }
    return grerror;
  }

  Future<ClassPeriodModelRepositoryReturnData>
      getClassPeriodModelWithOfferingSearch(String entitytype, String entityid,
          String sessionterm, String offeringgroup) async {
    ClassPeriodModelRepositoryReturnData grerror =
        new ClassPeriodModelRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<ClassPeriodInfo> list = await LookupGateway.getClassPeriodInfo(
        entityid
      );
      ClassPeriodModelRepositoryReturnData gr =
          new ClassPeriodModelRepositoryReturnData();
      gr.errortype = -1;
      gr.itemlist = list;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<ClassPeriodModelRepositoryReturnData> createClassPeriodModel(
      ClassPeriodInfo item,
      String type,
      String entitytype,
      String entityid) async {
    ClassPeriodModelRepositoryReturnData myreturn =
        ClassPeriodModelRepositoryReturnData();
    await LookupGateway.addClassPeriodInfo(
      serviceID: entityid,
      classPeriodInfo: item,
    );
    // await _schoolRepo.addClassPeriod(
    //   serviceID: entityid,
    //   schedule: item,
    //   type: type,
    // );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<ClassPeriodModelRepositoryReturnData> updateClassPeriodModel(
      ClassPeriodInfo item, String entitytype, String entityid) async {
    ClassPeriodModelRepositoryReturnData myreturn =
        ClassPeriodModelRepositoryReturnData();
    await LookupGateway.updateClassPeriodInfo(
      serviceID: entityid,
      classPeriodInfo: item,
    );

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<ClassPeriodModelRepositoryReturnData> updateClassPeriodModelWithDiff(
      ClassPeriodInfo newitem,
      ClassPeriodInfo olditem,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<ClassPeriodModelRepositoryReturnData> deleteClassPeriodModelWithData(
      ClassPeriodInfo item, String entitytype, String entityid) async {
    ClassPeriodModelRepositoryReturnData myreturn =
        ClassPeriodModelRepositoryReturnData();
    await LookupGateway.deleteClassPeriodInfo(
      serviceID: entityid,
      classPeriodInfo: item,
    );

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<ClassPeriodModelRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    ClassPeriodModelRepositoryReturnData myreturn =
        ClassPeriodModelRepositoryReturnData();
    // if (_schoolRepo.getClassPeriodInfoList(serviceID: entityid) == null ||
    //     _schoolRepo.getClassPeriodInfoList(serviceID: entityid).length == 0) {

    // }

    List<ClassPeriodInfo> list = await LookupGateway.getClassPeriodInfo(
        entityid
    );

    myreturn.errortype = -1;
    myreturn.itemlist = list;
    return myreturn;
  }
}

class ClassPeriodDataEntry {
  String type;
  List<String> types;
  int errortype;
  String error;
  List<PaymentPeriodInfo> paymentPeriods;
  List<FeeItemGroupsModel> feeItemsGroups;

  ClassPeriodDataEntry({
    this.type,
    this.types,
    this.errortype,
    this.error,
    this.paymentPeriods,
    this.feeItemsGroups,
  });
}

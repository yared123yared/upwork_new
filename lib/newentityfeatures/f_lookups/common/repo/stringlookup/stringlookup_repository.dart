import 'dart:convert';

import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:complex/newentityfeatures/commonrepo/lookup_repository.dart';
import 'package:complex/newentityfeatures/f_lookups/cf_lookuptypes/roominfo/presentation/roominfo_listview.dart';

//{MODELPATHIMPORT}

class StringRepositoryReturnData {
  List<String> itemlist;
  List<RoomInfo>roomlist;
  List<ExamTermInfo> examTermList;
  List<SessionTermModel> sessionTermModel;
  RoomInfo roomInfo;
  String item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
	StringRepositoryReturnData()
	{
		errortype=2;
		error="Not Implemented";
	}

}

class StringRepository {
  LookupRepository _lookupRepository;
  Future<StringRepositoryReturnData> getAllStrings(
      String entitytype, String entityid,String fieldname) async {
	print(entitytype);
	print(entityid);
	StringRepositoryReturnData myreturn = StringRepositoryReturnData();
	//Please put your code here
  if(fieldname=='feeitemlist'){
    try {
      myreturn.itemlist =
      await _lookupRepository.getFeeItemsList(serviceID: entityid);
      myreturn.errortype = -1;
      return myreturn;
    }
    catch(e){
      print(e);
      myreturn.errortype=1;
      return myreturn;
    }
  }

  if(fieldname=='gradelist'){
    try {
      myreturn.itemlist =
      await _lookupRepository.getGradesList(serviceID: entityid);
      myreturn.errortype = -1;
      return myreturn;
    }
    catch(e){
      print(e);
      myreturn.errortype=1;
      return myreturn;
    }
  }

  if(fieldname=='offeringlist'){
    try {
      myreturn.itemlist =
      await _lookupRepository.getOfferingList(serviceID: entityid);
      myreturn.errortype = -1;
      return myreturn;
    }
    catch(e){
      print(e);
      myreturn.errortype=1;
      return myreturn;
    }
  }
  if(fieldname=='roomlist'){
    try {
      myreturn.roomlist =
      await _lookupRepository.getRoomInfoList(serviceID: entityid);
      myreturn.errortype = -1;
      return myreturn;
    }
    catch(e){
      print(e);
      myreturn.errortype=1;
      return myreturn;
    }
  }

  if(fieldname=='examterminfo'){
    try {
      myreturn.examTermList =
      await _lookupRepository.getExamTermsList(serviceID: entityid);
      myreturn.errortype = -1;
      return myreturn;
    }
    catch(e){
      print(e);
      myreturn.errortype=1;
      return myreturn;
    }
  }
  if(fieldname=='sessionterminfo'){
    try {
      myreturn.sessionTermModel =
      await _lookupRepository.getSessionTermsList(serviceID: entityid);
      myreturn.errortype = -1;
      return myreturn;
    }
    catch(e){
      print(e);
      myreturn.errortype=1;
      return myreturn;
    }
  }



  
  
  }


  Future<StringRepositoryReturnData> createString(
      String item, String entitytype, String entityid,String fieldname,RoomInfo roomInfo,ExamTermInfo examTermInfo, SessionTermModel sessionTermModel) async {
	StringRepositoryReturnData myreturn = StringRepositoryReturnData();
	//Please put your code here

  if(fieldname=='feeitemlist'){
    try {

      await _lookupRepository.addFeeItem(serviceID: entityid,feeItem: item);
      myreturn.errortype = -1;
      return myreturn;
    }
    catch(e){
      print(e);
      myreturn.errortype=1;
      return myreturn;
    }
  }

  if(fieldname=='gradeList'){
    try {

      await _lookupRepository.addGrade(serviceID: entityid,grade: item);
      myreturn.errortype = -1;
      return myreturn;
    }
    catch(e){
      print(e);
      myreturn.errortype=1;
      return myreturn;
    }
  }
  if(fieldname=='offeringList'){
    try {

      await _lookupRepository.addOfferingSubject(serviceID: entityid,subject: item);
      myreturn.errortype = -1;
      return myreturn;
    }
    catch(e){
      print(e);
      myreturn.errortype=1;
      return myreturn;
    }
  }
  if(fieldname=='roomList'){
    try {

      await _lookupRepository.addRoomInfo(serviceID: entityid,roomInfo: roomInfo);
      myreturn.errortype = -1;
      return myreturn;
    }
    catch(e){
      print(e);
      myreturn.errortype=1;
      return myreturn;
    }
  }

  if(fieldname=='examTermList'){
    try {

      await _lookupRepository.addExamTermInfo(serviceID: entityid,examTermInfo: examTermInfo);
      myreturn.errortype = -1;
      return myreturn;
    }
    catch(e){
      print(e);
      myreturn.errortype=1;
      return myreturn;
    }
  }

  if(fieldname=='sessionTermList'){
    try {

      await _lookupRepository.addSessionTerm(serviceID: entityid,sessionTerm: sessionTermModel);
      myreturn.errortype = -1;
      return myreturn;
    }
    catch(e){
      print(e);
      myreturn.errortype=1;
      return myreturn;
    }
  }

  }
  Future<StringRepositoryReturnData> deleteStringWithData(
      String item, String entitytype, String entityid,String fieldname,RoomInfo roomInfo,ExamTermInfo examTermInfo, SessionTermModel sessionTermModel) async {
    StringRepositoryReturnData myreturn = StringRepositoryReturnData();
    if(fieldname=='feeitemlist'){
      try {

        await _lookupRepository.deleteFeeItem(serviceID: entityid,feeItem: item);
        myreturn.errortype = -1;
        return myreturn;
      }
      catch(e){
        print(e);
        myreturn.errortype=1;
        return myreturn;
      }
    }
    if(fieldname=='offeringlist'){
      try {

        await _lookupRepository.deleteOffering(serviceID: entityid,subject: item);
        myreturn.errortype = -1;
        return myreturn;
      }
      catch(e){
        print(e);
        myreturn.errortype=1;
        return myreturn;
      }
    }
    if(fieldname=='roomList'){
      try {

        await _lookupRepository.deleteRoomInfo(serviceID: entityid,roomInfo: roomInfo);
        myreturn.errortype = -1;
        return myreturn;
      }
      catch(e){
        print(e);
        myreturn.errortype=1;
        return myreturn;
      }
    }
    if(fieldname=='examTerm'){
      try {

        await _lookupRepository.deleteExamTermInfo(serviceID: entityid,sessionTerm: examTermInfo);
        myreturn.errortype = -1;
        return myreturn;
      }
      catch(e){
        print(e);
        myreturn.errortype=1;
        return myreturn;
      }
    }
    if(fieldname=='sessionTerm'){
      try {

        await _lookupRepository.deleteSessionTerm(serviceID: entityid,sessionTerm: sessionTermModel);
        myreturn.errortype = -1;
        return myreturn;
      }
      catch(e){
        print(e);
        myreturn.errortype=1;
        return myreturn;
      }
    }
  }
}

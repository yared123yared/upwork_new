import 'dart:convert';

//{MODELPATHIMPORT}

class StringRepositoryReturnData {
  List<String> itemlist;
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
  Future<StringRepositoryReturnData> getAllStrings(
      String entitytype, String entityid,String fieldname) async {
	
	StringRepositoryReturnData myreturn = StringRepositoryReturnData();
	//Please put your code here

	return myreturn;
  
  
  }


  Future<StringRepositoryReturnData> createString(
      String item, String entitytype, String entityid,String fieldname) async {
	StringRepositoryReturnData myreturn = StringRepositoryReturnData();
	//Please put your code here
    
	return myreturn;
  }
  Future<StringRepositoryReturnData> deleteStringWithData(
      String item, String entitytype, String entityid,String fieldname) async {
    return null;
  }
}

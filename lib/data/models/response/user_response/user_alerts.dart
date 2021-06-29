class UserAlerts {
  String type;
  String entityType;
  String entityId;
  String entityName;
  String msgText;
  DateTime aTime;
  bool isError;
  String docId;

  UserAlerts.fromData(Map<String, dynamic> data, String id) {
    if (data != null && data['adata'] != null) {
      Map adata = data['adata'];
      type = adata.containsKey("type") ? adata["type"] : null;
      entityType = adata.containsKey("enttyp") ? adata["enttyp"] : null;
      entityId = adata.containsKey("eid") ? adata["eid"] : null;
      entityName = adata.containsKey("ename") ? adata["ename"] : null;
      msgText = adata.containsKey("msgtext") ? adata["msgtext"] : null;
      aTime = adata.containsKey("atime")
          ? DateTime.fromMillisecondsSinceEpoch(adata["atime"] * 1000)
          : new DateTime(1, 1, 1);
      docId = id;
    } else {
      isError = true;
    }
  }

  static List<UserAlerts> listFromJson(
      List<dynamic> json, List<String> docIDs) {
    List<UserAlerts> _list = [];
    if (json != null) {
      json.asMap().forEach((index, data) {
        _list.add(UserAlerts.fromData(data(), docIDs[index]));
      });
    }
    return _list;
  }
}

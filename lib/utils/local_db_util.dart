import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class LocalDbUtil {
  static LocalDbUtil _localDbUtil;
  static Database _db;

  static LocalDbUtil getInstance() {
    if (_localDbUtil == null) {
      _localDbUtil = LocalDbUtil._();
    }

    return _localDbUtil;
  }

  LocalDbUtil._();

  Future<Database> initDb() async {
    try{
      final appDocDir = await getApplicationDocumentsDirectory();
      _db = await databaseFactoryIo
          .openDatabase(join(appDocDir.path, 'chat_db.db'),version: 1);
    }catch(e){
      print("intMapStoreFactory exception $e");
    }
    return _db;
  }

  static Database get db => _db;

  Future getChatFromChannel(String channelName) async {
    var store = intMapStoreFactory.store(channelName);
    return store.find(_db);
  }

  addDataToChannel(String channelName,dynamic data) async {
    var store = intMapStoreFactory.store(channelName);
    store.add(_db, data);
  }
}

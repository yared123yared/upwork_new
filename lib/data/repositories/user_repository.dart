import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/data/models/response/user_response/user_alerts.dart';
import 'package:complex/data/models/response/user_response/user_entity.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:complex/data/repositories/service_repository.dart';
import 'package:injector/injector.dart';

import 'complex_repository.dart';

UserModel _user;

class UserRepository {
  ServiceRepository serviceRepository;

  UserRepository({this.serviceRepository});

  ComplexRepository getComplexRepository() {
    ComplexRepository complexRepository =
        Injector.appInstance.get<ComplexRepository>();
  }

  Map<String, String> getComplexEntityNamesFromUser() {
    return _user.complexNames;
  }

  Map<String, String> getServiceProviderEntityNamesFromUser() {
    return _user.serviceProviderNames;
  }

  Stream<DocumentSnapshot> listenUserProfile() {
    try {
      return FirebaseFirestore.instance
          .doc("USERS/${_user.userID}")
          .snapshots();
    } catch (e) {
      print("USer profile change  get error: $e");
      throw e;
    }
  }

  UserModel getUser() => _user;

  Future<void> setUser(String userID, {dynamic userData}) async {
    List<UserAlerts> museralert;
    UserEntity _userentity;
    if (userData != null) {
      _user = UserModel.fromData(userData, userID);
      UserSession.userId = _user.userID;
    }
    await Future.wait<void>([
      FirebaseFirestore.instance.doc("USERS/$userID").get().then((x) {
        /*x.data().forEach((key, value) {
          print("value of $key  =>  $value}");
        });*/
        _user = UserModel.fromData(x.data(), userID);
        UserSession.userId = _user.userID;
      }),
      FirebaseFirestore.instance
          .collection("USERALERTS")
          .doc(userID)
          .collection('MSG')
          .where('proc', isEqualTo: false)
          .where("proc")
          .get()
          .then((x) => museralert = UserAlerts.listFromJson(
                x.docs.map((d) => d.data).toList(),
                x.docs.map((e) => e.id).toList(),
              )),
      FirebaseFirestore.instance
          .doc("USERINFO/$userID")
          .get()
          .then((x) => _userentity = UserEntity.fromData(x.data())),
    ]);

    UserEntity.setDefaultEntity(_userentity, _user);
    if (_user.defaultType == entityT.service) {
      _user.defaultServiceModel =
          await serviceRepository.getService(_user.defaultServiceEntity);
    }


    else if (_user.defaultType == entityT.complex) {
      GenericResponse gr =  await serviceRepository.getComplexDetail(id:_user.defaultComplexEntity.complexID);
      if(gr.success)
        {
          _user.defaultComplexModel =  gr.data as ComplexModel;
        }
      else
        throw Exception("Unable to load message");
    }


  }
}

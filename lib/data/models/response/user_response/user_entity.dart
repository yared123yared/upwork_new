import 'package:complex/data/models/response/user_response/user_model.dart';

enum entityT { none, complex, service }
enum EntityRoles {
  Staff,
  Manager,
  Instructor,
  InstructionManager,
  FeeManager,
  Resident,
  Owner,
  Security,
}
class UserEntity {
  String defaultEntityDocId;
  String entityType;
  String moduleType;

  ///will search untill it get the right entity then quit
  static void setDefaultEntity(UserEntity ue, UserModel user) {
    bool doneSearch = false;
    user.defaultType = entityT.none;

    user.complexes?.forEach((element) {
      if (element.complexID == ue.defaultEntityDocId) {
        user.defaultComplexEntity = element;
        user.defaultServiceEntity = null;
        user.defaultType = entityT.complex;
        doneSearch = true;
      }
    });

    if (!doneSearch)
      user.services?.forEach((element) {
        if (element.serviceID == ue.defaultEntityDocId) {
          user.defaultServiceEntity = element;
          user.defaultComplexEntity = null;
          user.defaultType = entityT.service;
          doneSearch = true;
        }
      });

    if (!doneSearch) {
      if (user.complexes.length > 0) {
        user.defaultComplexEntity = user.complexes.first;
        user.defaultServiceEntity = null;
        user.defaultType = entityT.complex;
      } else if (user.services.length > 0) {
        user.defaultComplexEntity = null;
        user.defaultServiceEntity = user.services.first;
        user.defaultType = entityT.service;
      }
    }
  }

  UserEntity.fromData(Map<String, dynamic> data) {
    if (data != null) {
      defaultEntityDocId = data.containsKey("defent") ? data["defent"] : null;
      entityType = data.containsKey("enttyp") ? data["enttyp"] : null;
      moduleType = data.containsKey("mtyp") ? data["mtyp"] : null;
    } else {
      defaultEntityDocId = null;
      entityType = null;
    }
  }
}

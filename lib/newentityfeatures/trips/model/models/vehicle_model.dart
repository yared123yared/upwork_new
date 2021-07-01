class ServiceVehicleModel {
  String numberPlate;
  String generatedQrCode;
  bool forAdHocRides;
  List<GeneralInfo> generalInfo;
  IdentificationDoc identificationDoc;
  bool isActive;
  String loadType;
  num maxCapacity;
  String photoLink;
  String registrationNum;
  List<SeatType> seatType;
  String vehicleCategory;
  num vehicleId;
  String vehicleType;
  num version;

  ServiceVehicleModel({
    this.numberPlate,
    this.generatedQrCode,
    this.forAdHocRides,
    this.generalInfo,
    this.identificationDoc,
    this.isActive,
    this.loadType,
    this.maxCapacity,
    this.photoLink,
    this.registrationNum,
    this.seatType,
    this.vehicleCategory,
    this.vehicleId,
    this.vehicleType,
    this.version,
  });

  ServiceVehicleModel copyWith({
    String numberPlate,
    String generatedQrCode,
    bool forAdHocRides,
    List<GeneralInfo> generalInfo,
    List<IdentificationDoc> identificationDoc,
    bool isActive,
    String loadType,
    num maxCapacity,
    String photoLink,
    String registrationNum,
    List<SeatType> seatType,
    String vehicleCategory,
    num vehicleId,
    String vehicleType,
    num version,
  }) {
    return ServiceVehicleModel(
      numberPlate: numberPlate ?? this.numberPlate,
      generatedQrCode: generatedQrCode ?? this.generatedQrCode,
      forAdHocRides: forAdHocRides ?? this.forAdHocRides,
      generalInfo: generalInfo ?? this.generalInfo,
      identificationDoc: identificationDoc ?? this.identificationDoc,
      isActive: isActive ?? this.isActive,
      loadType: loadType ?? this.loadType,
      maxCapacity: maxCapacity ?? this.maxCapacity,
      photoLink: photoLink ?? this.photoLink,
      registrationNum: registrationNum ?? this.registrationNum,
      seatType: seatType ?? this.seatType,
      vehicleCategory: vehicleCategory ?? this.vehicleCategory,
      vehicleId: vehicleId ?? this.vehicleId,
      vehicleType: vehicleType ?? this.vehicleType,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    List<Map> generalInfoData = [];
    List<Map> identificationDocData = [];
    List<Map> seatTypeData = [];
//    this.seatType.forEach((element) {
//      seatTypeData.add(element.toData());
//    });
//    this.identificationDoc.forEach((element) {
//      identificationDocData.add(element.toData());
//    });
    this.generalInfo?.forEach((element) {
      generalInfoData.add(element.toData());
    });

    data['Numberplate'] = this.numberPlate;
    data['generatedqrcode'] = this.generatedQrCode;
    data['identificationdoc'] = identificationDocData;
    data['foradhocrides'] = this.forAdHocRides;
    data['generalinfo'] = generalInfoData;
    data['isactive'] = this.isActive;
    data['loadtype'] = this.loadType;
    data['maxcapacity'] = this.maxCapacity;
//    data['photolink'] = this.photoLink;
    data['registrationnum'] = this.registrationNum;
    data['seattype'] = seatTypeData;
    data['vehicleid'] = this.vehicleId;
    data['vehicletype'] = this.vehicleType;
//    data['version'] = this.version;
    data['vehiclecategory'] = this.vehicleCategory;
    return data;
  }

  ServiceVehicleModel.fromData(Map<String, dynamic> data) {
    numberPlate = data['Numberplate'];
    generatedQrCode = data['generatedqrcode'];
    if (data['identificationdoc'] != null) {
      // IdentificationDoc.fromData(data['identificationdoc']);
    } else {
      generalInfo = [];
    }
    forAdHocRides = data['foradhocrides'];
    if (data['generalinfo'] != null) {
      generalInfo = <GeneralInfo>[];
      data['generalinfo'].forEach((v) {
        generalInfo.add(GeneralInfo.fromData(v));
      });
    } else {
      generalInfo = [];
    }
    isActive = data['isactive'];
    loadType = data['loadtype'];
    maxCapacity = data['maxcapacity'];
    photoLink = data['photolink'];
    registrationNum = data['registrationnum'];
    if (data['seattype'] != null) {
      seatType = <SeatType>[];
      data['seattype'].forEach((v) {
        seatType.add(SeatType.fromData(v));
      });
    } else {
      seatType = [];
    }
    vehicleId = data['vehicleid'];
    vehicleType = data['vehicletype'];
    version = data['version'];
    vehicleCategory = data['vehiclecategory'];
  }
  static List<ServiceVehicleModel> listFromData(List<dynamic> data) {
    List<ServiceVehicleModel> _list = [];
    if (data != null) {
      data.forEach((v) {
        _list.add(ServiceVehicleModel.fromData(v));
      });
    }
    return _list;
  }
}

class SeatType {
  int ordinary;
  int berth;
  int cushioned;

  SeatType({this.ordinary, this.berth, this.cushioned});

  SeatType copyWith({
    int ordinary,
    int berth,
    int cushioned,
  }) {
    return SeatType(
      ordinary: ordinary ?? this.ordinary,
      berth: berth ?? this.berth,
      cushioned: cushioned ?? this.cushioned,
    );
  }

  SeatType.fromData(Map<String, dynamic> json) {
    ordinary = json['ordinary'];
    berth = json['ordinary'];
    cushioned = json['ordinary'];
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['ordinary'] = this.ordinary;
    data['berth'] = this.berth;
    data['cushioned'] = this.cushioned;
    return data;
  }
}

class GeneralInfo {
  String type;
  int value;

  GeneralInfo({
    this.type,
    this.value,
  });

  GeneralInfo copyWith({
    int type,
    int value,
  }) {
    return GeneralInfo(
      type: type ?? this.type,
      value: value ?? this.value,
    );
  }

  GeneralInfo.fromData(Map<String, dynamic> data) {
    type = data["type"];
    value = data["value"];
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['type'] = this.type;
    data['value'] = this.value;
    return data;
  }
}

class IdentificationDoc {
  String docType;
  String driveLink;

  IdentificationDoc({
    this.docType,
    this.driveLink,
  });

  IdentificationDoc copyWith({
    String docType,
    String driveLink,
  }) {
    return IdentificationDoc(
      docType: docType ?? this.docType,
      driveLink: driveLink ?? this.driveLink,
    );
  }

  IdentificationDoc.fromData(Map<String, dynamic> data) {
    docType = data["doctype"];
    driveLink = data["drivelink"];
  }
  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['doctype'] = this.docType;
    data['drivelink'] = this.driveLink;
    return data;
  }
}

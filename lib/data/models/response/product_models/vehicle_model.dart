import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/data/models/response/product_models/property_model.dart';

class VehicleModel {
  String serviceproviderid;
  String userid;
  String docid;
  String servicetype;
  String vehicletype;
  String propertytype;
  String tileimage;
  List<String> imagelist;
  String title;
  String description;
  String listingownertype;
  String make;
  String model;
  int yearbuild;
  int milage;
  String exteriorcolor;
  String interiorcolor;
  int cylinder;
  String fueltype;
  String bodytype;
  String drivetype;
  String transmission;
  String ownershiptransfer;
  int price;
  int seatingcapacity;
  int creationdate;
  bool turboengine;
  bool powersteering;
  bool parkingsensors;
  bool airbags;
  bool cruisecontrol;
  bool keylessentry;
  bool sunroof;
  bool moonroof;
  bool alloywheels;
  bool antilockbrakingsystem;
  bool automaticclimatecontrol;
  bool rearacvents;
  bool remotetrunkopener;
  Contactdetails contactdetails;

  VehicleModel({
    this.serviceproviderid,
    this.userid,
    this.docid,
    this.servicetype,
    this.vehicletype,
    this.propertytype,
    this.tileimage,
    this.imagelist,
    this.title,
    this.description,
    this.listingownertype,
    this.make,
    this.model,
    this.yearbuild,
    this.milage,
    this.exteriorcolor,
    this.interiorcolor,
    this.cylinder,
    this.fueltype,
    this.bodytype,
    this.drivetype,
    this.transmission,
    this.ownershiptransfer,
    this.price,
    this.seatingcapacity,
    this.creationdate,
    this.turboengine,
    this.powersteering,
    this.parkingsensors,
    this.airbags,
    this.cruisecontrol,
    this.keylessentry,
    this.sunroof,
    this.moonroof,
    this.alloywheels,
    this.antilockbrakingsystem,
    this.automaticclimatecontrol,
    this.rearacvents,
    this.remotetrunkopener,
    this.contactdetails,
  });

  VehicleModel.fromJson(Map<String, dynamic> json) {
    serviceproviderid = json['serviceproviderid'];
    userid = json['userid'];
    docid = json['docid'];
    servicetype = json['servicetype'];
    vehicletype = json['vehicletype'];
    propertytype = json['propertytype'];
    tileimage = json['tileimage'];
    imagelist =
        json['imagelist'] == null ? [] : json['imagelist'].cast<String>();
    title = json['title'];
    description = json['description'];
    listingownertype = json['listingownertype'];
    make = json['make'];
    model = json['model'];
    yearbuild = json['yearbuild'];
    milage = json['milage'];
    exteriorcolor = json['exteriorcolor'];
    interiorcolor = json['interiorcolor'];
    cylinder = json['cylinder'];
    fueltype = json['fueltype'];
    bodytype = json['bodytype'];
    drivetype = json['drivetype'];
    transmission = json['transmission'];
    ownershiptransfer = json['ownershiptransfer'];
    price = json['price'];
    seatingcapacity = json['seatingcapacity'];
    creationdate = json['creationdate'] is Timestamp
        ? (json['creationdate'].seconds)
        : json['creationdate'];
    turboengine = json['turboengine'];
    powersteering = json['powersteering'];
    parkingsensors = json['parkingsensors'];
    airbags = json['airbags'];
    cruisecontrol = json['cruisecontrol'];
    keylessentry = json['keylessentry'];
    sunroof = json['sunroof'];
    moonroof = json['moonroof'];
    alloywheels = json['alloywheels'];
    antilockbrakingsystem = json['antilockbrakingsystem'];
    automaticclimatecontrol = json['automaticclimatecontrol'];
    rearacvents = json['rearacvents'];
    remotetrunkopener = json['remotetrunkopener'];
    contactdetails = json['contactdetails'] != null
        ? new Contactdetails.fromJson(json['contactdetails'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['serviceproviderid'] = this.serviceproviderid;
    data['userid'] = this.userid;
    data['docid'] = this.docid;
    data['servicetype'] = this.servicetype;
    data['vehicletype'] = this.vehicletype;
    data['propertytype'] = this.propertytype;
    data['tileimage'] = this.tileimage;
    data['imagelist'] = this.imagelist;
    data['title'] = this.title;
    data['description'] = this.description;
    data['listingownertype'] = this.listingownertype;
    data['make'] = this.make;
    data['model'] = this.model;
    data['yearbuild'] = this.yearbuild;
    data['milage'] = this.milage;
    data['exteriorcolor'] = this.exteriorcolor;
    data['interiorcolor'] = this.interiorcolor;
    data['cylinder'] = this.cylinder;
    data['fueltype'] = this.fueltype;
    data['bodytype'] = this.bodytype;
    data['drivetype'] = this.drivetype;
    data['transmission'] = this.transmission;
    data['ownershiptransfer'] = this.ownershiptransfer;
    data['price'] = this.price;
    data['seatingcapacity'] = this.seatingcapacity;
    data['creationdate'] = this.creationdate;
    data['turboengine'] = this.turboengine;
    data['powersteering'] = this.powersteering;
    data['parkingsensors'] = this.parkingsensors;
    data['airbags'] = this.airbags;
    data['cruisecontrol'] = this.cruisecontrol;
    data['keylessentry'] = this.keylessentry;
    data['sunroof'] = this.sunroof;
    data['moonroof'] = this.moonroof;
    data['alloywheels'] = this.alloywheels;
    data['antilockbrakingsystem'] = this.antilockbrakingsystem;
    data['automaticclimatecontrol'] = this.automaticclimatecontrol;
    data['rearacvents'] = this.rearacvents;
    data['remotetrunkopener'] = this.remotetrunkopener;
    if (this.contactdetails != null) {
      data['contactdetails'] = this.contactdetails.toJson();
    }
    return data;
  }
}

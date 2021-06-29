import 'package:complex/data/models/response/product_models/property_model.dart';

class PetModel {
  String docid;
  String serviceproviderid;
  String userid;
  String petclass;
  String animaltype;
  int age;
  String petname;
  String gender;
  String tileimage;
  List<String> imagelist;
  String title;
  String description;
  String listingownertype;
  String breed;
  bool vaccinated;
  bool ismilking;
  int milkqty;
  int price;
  int creationdate;
  Contactdetails contactdetails;

  PetModel({
    this.docid,
    this.serviceproviderid,
    this.userid,
    this.petclass,
    this.animaltype,
    this.age,
    this.petname,
    this.gender,
    this.tileimage,
    this.imagelist,
    this.title,
    this.description,
    this.listingownertype,
    this.breed,
    this.vaccinated,
    this.ismilking,
    this.milkqty,
    this.price,
    this.creationdate,
    this.contactdetails,
  });

  PetModel.fromJson(Map<String, dynamic> json) {
    docid = json['docid'];
    serviceproviderid = json['serviceproviderid'];
    userid = json['userid'];
    petclass = json['petclass'];
    animaltype = json['animaltype'];
    age = json['age'];
    petname = json['petname'];
    gender = json['gender'];
    tileimage = json['tileimage'];
    imagelist =
        json['imagelist'] == null ? [] : json['imagelist'].cast<String>();
    title = json['title'];
    description = json['description'];
    listingownertype = json['listingownertype'];
    breed = json['breed'];
    vaccinated = json['vaccinated'];
    ismilking = json['ismilking'];
    milkqty = json['milkqty'];
    price = json['price'];
    creationdate = json['creationdate'];
    contactdetails = json['contactdetails'] != null
        ? Contactdetails.fromJson(json['contactdetails'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['docid'] = this.docid;
    data['serviceproviderid'] = this.serviceproviderid;
    data['userid'] = this.userid;
    data['petclass'] = this.petclass;
    data['animaltype'] = this.animaltype;
    data['age'] = this.age;
    data['petname'] = this.petname;
    data['gender'] = this.gender;
    data['tileimage'] = this.tileimage;
    data['imagelist'] = this.imagelist;
    data['title'] = this.title;
    data['description'] = this.description;
    data['listingownertype'] = this.listingownertype;
    data['breed'] = this.breed;
    data['vaccinated'] = this.vaccinated;
    data['ismilking'] = this.ismilking;
    data['milkqty'] = this.milkqty;
    data['price'] = this.price;
    data['creationdate'] = this.creationdate;
    if (this.contactdetails != null) {
      data['contactdetails'] = this.contactdetails.toJson();
    }
    return data;
  }
}

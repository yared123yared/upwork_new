import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/domain/explore/ecom/contact_details/contact_details.dart';

class PropertyModel {
  String docid;
  String serviceproviderid;
  String userid;
  String servicetype;
  String usagetype;
  String propertytype;
  String tileimage;
  List<String> imagelist;
  String constructionstatus;
  String saletype;
  int discountstartdate;
  int discountenddate;
  String occupancytype;
  String tenantgenderfamilypreference;
  String ownershiptype;
  int sqfeetarea;
  int numrooms;
  int numbath;
  String furnishedstatus;
  bool haspowerbackup;
  bool hasclubhouse;
  bool hassecurity;
  bool has24hrwater;
  bool hasgaspipeline;
  bool hasparking;
  bool hasgreenarea;
  bool hasinternet;
  bool hasairconditioner;
  bool hascooler;
  bool hasfridge;
  bool hastv;
  bool haslift;
  int creationdate;
  String title;
  String description;
  String listingownertype;
  int price;
  ContactDetails contactdetails;

  PropertyModel({
    this.docid,
    this.serviceproviderid,
    this.userid,
    this.servicetype,
    this.usagetype,
    this.propertytype,
    this.tileimage,
    this.imagelist,
    this.constructionstatus,
    this.saletype,
    this.discountstartdate,
    this.discountenddate,
    this.occupancytype,
    this.tenantgenderfamilypreference,
    this.ownershiptype,
    this.sqfeetarea,
    this.numrooms,
    this.numbath,
    this.furnishedstatus,
    this.haspowerbackup,
    this.hasclubhouse,
    this.hassecurity,
    this.has24hrwater,
    this.hasgaspipeline,
    this.hasparking,
    this.hasgreenarea,
    this.hasinternet,
    this.hasairconditioner,
    this.hascooler,
    this.hasfridge,
    this.hastv,
    this.haslift,
    this.creationdate,
    this.title,
    this.description,
    this.listingownertype,
    this.price,
    this.contactdetails,
  });

  PropertyModel.fromJson(Map<String, dynamic> json) {
    docid = json['docid'];
    serviceproviderid = json['serviceproviderid'];
    userid = json['userid'];
    servicetype = json['servicetype'];
    usagetype = json['usagetype'];
    propertytype = json['propertytype'];
    tileimage = json['tileimage'];
    imagelist =
        json['imagelist'] == null ? [] : json['imagelist'].cast<String>();
    constructionstatus = json['constructionstatus'];
    saletype = json['saletype'];
    discountstartdate = creationdate = json['discountstartdate'] is Timestamp
        ? (json['discountstartdate'].seconds)
        : json['discountstartdate'];
    discountenddate = creationdate = json['discountenddate'] is Timestamp
        ? (json['discountenddate'].seconds)
        : json['discountenddate'];
    occupancytype = json['occupancytype'];
    tenantgenderfamilypreference = json['tenantgenderfamilypreference'];
    ownershiptype = json['ownershiptype'];
    sqfeetarea = json['sqfeetarea'];
    numrooms = json['numrooms'];
    numbath = json['numbath'];
    furnishedstatus = json['furnishedstatus'];
    haspowerbackup = json['haspowerbackup'];
    hasclubhouse = json['hasclubhouse'];
    hassecurity = json['hassecurity'];
    has24hrwater = json['has24hrwater'];
    hasgaspipeline = json['hasgaspipeline'];
    hasparking = json['hasparking'];
    hasgreenarea = json['hasgreenarea'];
    hasinternet = json['hasinternet'];
    hasairconditioner = json['hasairconditioner'];
    hascooler = json['hascooler'];
    hasfridge = json['hasfridge'];
    hastv = json['hastv'];
    haslift = json['haslift'];
    creationdate = creationdate = json['creationdate'] is Timestamp
        ? (json['creationdate'].seconds)
        : json['creationdate'];
    title = json['title'];
    description = json['description'];
    listingownertype = json['listingownertype'];
    price = json['price'];
    contactdetails = json['contactdetails'] != null
        ? ContactDetails.fromJson(json['contactdetails'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['docid'] = this.docid;
    data['serviceproviderid'] = this.serviceproviderid;
    data['userid'] = this.userid;
    data['servicetype'] = this.servicetype;
    data['usagetype'] = this.usagetype;
    data['propertytype'] = this.propertytype;
    data['tileimage'] = this.tileimage;
    data['imagelist'] = this.imagelist;
    data['constructionstatus'] = this.constructionstatus;
    data['saletype'] = this.saletype;
    data['discountstartdate'] = this.discountstartdate;
    data['discountenddate'] = this.discountenddate;
    data['occupancytype'] = this.occupancytype;
    data['tenantgenderfamilypreference'] = this.tenantgenderfamilypreference;
    data['ownershiptype'] = this.ownershiptype;
    data['sqfeetarea'] = this.sqfeetarea;
    data['numrooms'] = this.numrooms;
    data['numbath'] = this.numbath;
    data['furnishedstatus'] = this.furnishedstatus;
    data['haspowerbackup'] = this.haspowerbackup;
    data['hasclubhouse'] = this.hasclubhouse;
    data['hassecurity'] = this.hassecurity;
    data['has24hrwater'] = this.has24hrwater;
    data['hasgaspipeline'] = this.hasgaspipeline;
    data['hasparking'] = this.hasparking;
    data['hasgreenarea'] = this.hasgreenarea;
    data['hasinternet'] = this.hasinternet;
    data['hasairconditioner'] = this.hasairconditioner;
    data['hascooler'] = this.hascooler;
    data['hasfridge'] = this.hasfridge;
    data['hastv'] = this.hastv;
    data['haslift'] = this.haslift;
    data['creationdate'] = this.creationdate;
    data['title'] = this.title;
    data['description'] = this.description;
    data['listingownertype'] = this.listingownertype;
    data['price'] = this.price;
    if (this.contactdetails != null) {
      data['contactdetails'] = this.contactdetails.toJson();
    }
    return data;
  }
}

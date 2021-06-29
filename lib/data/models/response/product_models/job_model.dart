import 'package:complex/data/models/response/product_models/property_model.dart';

class JobModel {
  String docid;
  String serviceproviderid;
  String userid;
  String title;
  String description;
  String listingownertype;
  String companyname;
  String companylogo;
  bool isparttime;
  int minsalaryrange;
  int maxsalaryrange;
  String educationqualification;
  bool arefreshersallowed;
  int minyearexperience;
  String worktype;
  Contactdetails contactdetails;

  JobModel({
    this.docid,
    this.serviceproviderid,
    this.userid,
    this.title,
    this.description,
    this.listingownertype,
    this.companyname,
    this.companylogo,
    this.isparttime,
    this.minsalaryrange,
    this.maxsalaryrange,
    this.educationqualification,
    this.arefreshersallowed,
    this.minyearexperience,
    this.worktype,
    this.contactdetails,
  });

  JobModel.fromJson(Map<String, dynamic> json) {
    docid = json['docid'];
    serviceproviderid = json['serviceproviderid'];
    userid = json['userid'];
    title = json['title'];
    description = json['description'];
    listingownertype = json['listingownertype'];
    companyname = json['companyname'];
    companylogo = json['companylogo'];
    isparttime = json['isparttime'];
    minsalaryrange = json['minsalaryrange'];
    maxsalaryrange = json['maxsalaryrange'];
    educationqualification = json['educationqualification'];
    arefreshersallowed = json['arefreshersallowed'];
    minyearexperience = json['minyearexperience'];
    worktype = json['worktype'];
    contactdetails = json['contactdetails'] != null
        ? Contactdetails.fromJson(json['contactdetails'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['docid'] = this.docid;
    data['serviceproviderid'] = this.serviceproviderid;
    data['userid'] = this.userid;
    data['title'] = this.title;
    data['description'] = this.description;
    data['listingownertype'] = this.listingownertype;
    data['companyname'] = this.companyname;
    data['companylogo'] = this.companylogo;
    data['isparttime'] = this.isparttime;
    data['minsalaryrange'] = this.minsalaryrange;
    data['maxsalaryrange'] = this.maxsalaryrange;
    data['educationqualification'] = this.educationqualification;
    data['arefreshersallowed'] = this.arefreshersallowed;
    data['minyearexperience'] = this.minyearexperience;
    data['worktype'] = this.worktype;
    if (contactdetails != null) {
      data['contactdetails'] = this.contactdetails.toJson();
    }
    return data;
  }
}

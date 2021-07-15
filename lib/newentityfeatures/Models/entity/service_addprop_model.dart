import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ServiceModelAddProps extends Equatable {
  List<String> g_staffcategory;
  bool g_hassecurity;
  bool g_hasmaintainence;
  bool g_requireattendence;
  bool g_attendencetype;
  bool g_reqstafflocationstorage;
  String g_locationstoragestaffcategory;
  bool g_leavemanagementreq;
  bool g_paymentmanagementforonline;
  String g_onlinepaymentprovider;
  bool g_vendorregistration;
  bool g_venodrinvoicesubmission;
  bool g_allowvendorshopping;
  bool g_considervatpricing;
  bool a_hasappointment;
  String a_staffcategory;
  String a_apttype;
  bool a_hasqueue;
  bool a_hashomevist;
  bool a_hasregularapt;
  bool o_hasorder;
  bool o_orderbyresource;
  List<String> o_fillresourceprops;
  bool o_giveoptionforpaymentaccumulation;
  bool o_hasdelivery;
  int o_deliveryrange;
  int o_minimumorderdel;
  bool o_haspickup;
  int o_minimumorderpick;
  int o_pickuprange;
  bool o_onlyregistered;
  bool allowratetypes;
  String o_deliverypickupstaffcategory;
  bool r_hasregistration;
  bool r_hasclasses;
  String r_virtualroomheader;
  String r_gradeheader;
  bool r_hassessionterm;
  bool r_reqsocialdata;
  bool r_reqgaurdiandata;
  bool r_requirefeemanagement;
  String r_feetype;
  bool r_useqrcodeforfeetracking;
  String r_feeplanload;
  bool r_haslibrary;
  bool t_hastransport;
  String t_routetype;
  bool t_reqticketing;
  bool t_reqremotemanagement;

  ServiceModelAddProps({
    this.g_staffcategory,
    this.g_hassecurity,
    this.g_hasmaintainence,
    this.g_requireattendence,
    this.g_attendencetype,
    this.g_reqstafflocationstorage,
    this.g_locationstoragestaffcategory,
    this.g_leavemanagementreq,
    this.g_paymentmanagementforonline,
    this.g_onlinepaymentprovider,
    this.g_vendorregistration,
    this.g_venodrinvoicesubmission,
    this.g_allowvendorshopping,
    this.g_considervatpricing,
    this.a_hasappointment,
    this.a_staffcategory,
    this.a_apttype,
    this.a_hasqueue,
    this.a_hashomevist,
    this.a_hasregularapt,
    this.o_hasorder,
    this.o_orderbyresource,
    this.o_fillresourceprops,
    this.o_giveoptionforpaymentaccumulation,
    this.o_hasdelivery,
    this.o_deliveryrange,
    this.o_minimumorderdel,
    this.o_haspickup,
    this.o_minimumorderpick,
    this.o_pickuprange,
    this.o_onlyregistered,
    this.allowratetypes,
    this.o_deliverypickupstaffcategory,
    this.r_hasregistration,
    this.r_hasclasses,
    this.r_virtualroomheader,
    this.r_gradeheader,
    this.r_hassessionterm,
    this.r_reqsocialdata,
    this.r_reqgaurdiandata,
    this.r_requirefeemanagement,
    this.r_feetype,
    this.r_useqrcodeforfeetracking,
    this.r_feeplanload,
    this.r_haslibrary,
    this.t_hastransport,
    this.t_routetype,
    this.t_reqticketing,
    this.t_reqremotemanagement,
  });

  @override
  List<Object> get props => [
        g_staffcategory,
        g_hassecurity,
        g_hasmaintainence,
        g_requireattendence,
        g_attendencetype,
        g_reqstafflocationstorage,
        g_locationstoragestaffcategory,
        g_leavemanagementreq,
        g_paymentmanagementforonline,
        g_onlinepaymentprovider,
        g_vendorregistration,
        g_venodrinvoicesubmission,
        g_allowvendorshopping,
        g_considervatpricing,
        a_hasappointment,
        a_staffcategory,
        a_apttype,
        a_hasqueue,
        a_hashomevist,
        a_hasregularapt,
        o_hasorder,
        o_orderbyresource,
        o_fillresourceprops,
        o_giveoptionforpaymentaccumulation,
        o_hasdelivery,
        o_deliveryrange,
        o_minimumorderdel,
        o_haspickup,
        o_minimumorderpick,
        o_pickuprange,
        o_onlyregistered,
        allowratetypes,
        o_deliverypickupstaffcategory,
        r_hasregistration,
        r_hasclasses,
        r_virtualroomheader,
        r_gradeheader,
        r_hassessionterm,
        r_reqsocialdata,
        r_reqgaurdiandata,
        r_requirefeemanagement,
        r_feetype,
        r_useqrcodeforfeetracking,
        r_feeplanload,
        r_haslibrary,
        t_hastransport,
        t_routetype,
        t_reqticketing,
        t_reqremotemanagement,
      ];

  ServiceModelAddProps copyWith({
    List<String> g_staffcategory,
    bool g_hassecurity,
    bool g_hasmaintainence,
    bool g_requireattendence,
    bool g_attendencetype,
    bool g_reqstafflocationstorage,
    String g_locationstoragestaffcategory,
    bool g_leavemanagementreq,
    bool g_paymentmanagementforonline,
    String g_onlinepaymentprovider,
    bool g_vendorregistration,
    bool g_venodrinvoicesubmission,
    bool g_allowvendorshopping,
    bool g_considervatpricing,
    bool a_hasappointment,
    String a_staffcategory,
    String a_apttype,
    bool a_hasqueue,
    bool a_hashomevist,
    bool a_hasregularapt,
    bool o_hasorder,
    bool o_orderbyresource,
    List<String> o_fillresourceprops,
    bool o_giveoptionforpaymentaccumulation,
    bool o_hasdelivery,
    int o_deliveryrange,
    int o_minimumorderdel,
    bool o_haspickup,
    int o_minimumorderpick,
    int o_pickuprange,
    bool o_onlyregistered,
    bool allowratetypes,
    String o_deliverypickupstaffcategory,
    bool r_hasregistration,
    bool r_hasclasses,
    String r_virtualroomheader,
    String r_gradeheader,
    bool r_hassessionterm,
    bool r_reqsocialdata,
    bool r_reqgaurdiandata,
    bool r_requirefeemanagement,
    String r_feetype,
    bool r_useqrcodeforfeetracking,
    String r_feeplanload,
    bool r_haslibrary,
    bool t_hastransport,
    String t_routetype,
    bool t_reqticketing,
    bool t_reqremotemanagement,
  }) {
    return ServiceModelAddProps(
      g_staffcategory: g_staffcategory ?? this.g_staffcategory,
      g_hassecurity: g_hassecurity ?? this.g_hassecurity,
      g_hasmaintainence: g_hasmaintainence ?? this.g_hasmaintainence,
      g_requireattendence: g_requireattendence ?? this.g_requireattendence,
      g_attendencetype: g_attendencetype ?? this.g_attendencetype,
      g_reqstafflocationstorage:
          g_reqstafflocationstorage ?? this.g_reqstafflocationstorage,
      g_locationstoragestaffcategory:
          g_locationstoragestaffcategory ?? this.g_locationstoragestaffcategory,
      g_leavemanagementreq: g_leavemanagementreq ?? this.g_leavemanagementreq,
      g_paymentmanagementforonline:
          g_paymentmanagementforonline ?? this.g_paymentmanagementforonline,
      g_onlinepaymentprovider:
          g_onlinepaymentprovider ?? this.g_onlinepaymentprovider,
      g_vendorregistration: g_vendorregistration ?? this.g_vendorregistration,
      g_venodrinvoicesubmission:
          g_venodrinvoicesubmission ?? this.g_venodrinvoicesubmission,
      g_allowvendorshopping:
          g_allowvendorshopping ?? this.g_allowvendorshopping,
      g_considervatpricing: g_considervatpricing ?? this.g_considervatpricing,
      a_hasappointment: a_hasappointment ?? this.a_hasappointment,
      a_staffcategory: a_staffcategory ?? this.a_staffcategory,
      a_apttype: a_apttype ?? this.a_apttype,
      a_hasqueue: a_hasqueue ?? this.a_hasqueue,
      a_hashomevist: a_hashomevist ?? this.a_hashomevist,
      a_hasregularapt: a_hasregularapt ?? this.a_hasregularapt,
      o_hasorder: o_hasorder ?? this.o_hasorder,
      o_orderbyresource: o_orderbyresource ?? this.o_orderbyresource,
      o_fillresourceprops: o_fillresourceprops ?? this.o_fillresourceprops,
      o_giveoptionforpaymentaccumulation: o_giveoptionforpaymentaccumulation ??
          this.o_giveoptionforpaymentaccumulation,
      o_hasdelivery: o_hasdelivery ?? this.o_hasdelivery,
      o_deliveryrange: o_deliveryrange ?? this.o_deliveryrange,
      o_minimumorderdel: o_minimumorderdel ?? this.o_minimumorderdel,
      o_haspickup: o_haspickup ?? this.o_haspickup,
      o_minimumorderpick: o_minimumorderpick ?? this.o_minimumorderpick,
      o_pickuprange: o_pickuprange ?? this.o_pickuprange,
      o_onlyregistered: o_onlyregistered ?? this.o_onlyregistered,
      allowratetypes: allowratetypes ?? this.allowratetypes,
      o_deliverypickupstaffcategory:
          o_deliverypickupstaffcategory ?? this.o_deliverypickupstaffcategory,
      r_hasregistration: r_hasregistration ?? this.r_hasregistration,
      r_hasclasses: r_hasclasses ?? this.r_hasclasses,
      r_virtualroomheader: r_virtualroomheader ?? this.r_virtualroomheader,
      r_gradeheader: r_gradeheader ?? this.r_gradeheader,
      r_hassessionterm: r_hassessionterm ?? this.r_hassessionterm,
      r_reqsocialdata: r_reqsocialdata ?? this.r_reqsocialdata,
      r_reqgaurdiandata: r_reqgaurdiandata ?? this.r_reqgaurdiandata,
      r_requirefeemanagement:
          r_requirefeemanagement ?? this.r_requirefeemanagement,
      r_feetype: r_feetype ?? this.r_feetype,
      r_useqrcodeforfeetracking:
          r_useqrcodeforfeetracking ?? this.r_useqrcodeforfeetracking,
      r_feeplanload: r_feeplanload ?? this.r_feeplanload,
      r_haslibrary: r_haslibrary ?? this.r_haslibrary,
      t_hastransport: t_hastransport ?? this.t_hastransport,
      t_routetype: t_routetype ?? this.t_routetype,
      t_reqticketing: t_reqticketing ?? this.t_reqticketing,
      t_reqremotemanagement:
          t_reqremotemanagement ?? this.t_reqremotemanagement,
    );
  }

  ServiceModelAddProps.fromJson(Map<String, dynamic> json) {
    g_staffcategory = json["g_staffcategory"];
    g_hassecurity = json["g_hassecurity"];
    g_hasmaintainence = json["g_hasmaintainence"];
    g_requireattendence = json["g_requireattendence"];
    g_attendencetype = json["g_attendencetype"];
    g_reqstafflocationstorage = json["g_reqstafflocationstorage"];
    g_locationstoragestaffcategory = json["g_locationstoragestaffcategory"];
    g_leavemanagementreq = json["g_leavemanagementreq"];
    g_paymentmanagementforonline = json["g_paymentmanagementforonline"];
    g_onlinepaymentprovider = json["g_onlinepaymentprovider"];
    g_vendorregistration = json["g_vendorregistration"];
    g_venodrinvoicesubmission = json["g_venodrinvoicesubmission"];
    g_allowvendorshopping = json["g_allowvendorshopping"];
    g_considervatpricing = json["g_considervatpricing"];
    a_hasappointment = json["a_hasappointment"];
    a_staffcategory = json["a_staffcategory"];
    a_apttype = json["a_apttype"];
    a_hasqueue = json["a_hasqueue"];
    a_hashomevist = json["a_hashomevist"];
    a_hasregularapt = json["a_hasregularapt"];
    o_hasorder = json["o_hasorder"];
    o_orderbyresource = json["o_orderbyresource"];
    o_fillresourceprops = json["o_fillresourceprops"];
    o_giveoptionforpaymentaccumulation =
        json["o_giveoptionforpaymentaccumulation"];
    o_hasdelivery = json["o_hasdelivery"];
    o_deliveryrange = json["o_deliveryrange"];
    o_minimumorderdel = json["o_minimumorderdel"];
    o_haspickup = json["o_haspickup"];
    o_minimumorderpick = json["o_minimumorderpick"];
    o_pickuprange = json["o_pickuprange"];
    o_onlyregistered = json["o_onlyregistered"];
    allowratetypes = json["allowratetypes"];
    o_deliverypickupstaffcategory = json["o_deliverypickupstaffcategory"];
    r_hasregistration = json["r_hasregistration"];
    r_hasclasses = json["r_hasclasses"];
    r_virtualroomheader = json["r_virtualroomheader"];
    r_gradeheader = json["r_gradeheader"];
    r_hassessionterm = json["r_hassessionterm"];
    r_reqsocialdata = json["r_reqsocialdata"];
    r_reqgaurdiandata = json["r_reqgaurdiandata"];
    r_requirefeemanagement = json["r_requirefeemanagement"];
    r_feetype = json["r_feetype"];
    r_useqrcodeforfeetracking = json["r_useqrcodeforfeetracking"];
    r_feeplanload = json["r_feeplanload"];
    r_haslibrary = json["r_haslibrary"];
    t_hastransport = json["t_hastransport"];
    t_routetype = json["t_routetype"];
    t_reqticketing = json["t_reqticketing"];
    t_reqremotemanagement = json["t_reqremotemanagement"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = Map<String, dynamic>();
    json["g_staffcategory"] = g_staffcategory;
    json["g_hassecurity"] = g_hassecurity;
    json["g_hasmaintainence"] = g_hasmaintainence;
    json["g_requireattendence"] = g_requireattendence;
    json["g_attendencetype"] = g_attendencetype;
    json["g_reqstafflocationstorage"] = g_reqstafflocationstorage;
    json["g_locationstoragestaffcategory"] = g_locationstoragestaffcategory;
    json["g_leavemanagementreq"] = g_leavemanagementreq;
    json["g_paymentmanagementforonline"] = g_paymentmanagementforonline;
    json["g_onlinepaymentprovider"] = g_onlinepaymentprovider;
    json["g_vendorregistration"] = g_vendorregistration;
    json["g_venodrinvoicesubmission"] = g_venodrinvoicesubmission;
    json["g_allowvendorshopping"] = g_allowvendorshopping;
    json["g_considervatpricing"] = g_considervatpricing;
    json["a_hasappointment"] = a_hasappointment;
    json["a_staffcategory"] = a_staffcategory;
    json["a_apttype"] = a_apttype;
    json["a_hasqueue"] = a_hasqueue;
    json["a_hashomevist"] = a_hashomevist;
    json["a_hasregularapt"] = a_hasregularapt;
    json["o_hasorder"] = o_hasorder;
    json["o_orderbyresource"] = o_orderbyresource;
    json["o_fillresourceprops"] = o_fillresourceprops;
    json["o_giveoptionforpaymentaccumulation"] =
        o_giveoptionforpaymentaccumulation;
    json["o_hasdelivery"] = o_hasdelivery;
    json["o_deliveryrange"] = o_deliveryrange;
    json["o_minimumorderdel"] = o_minimumorderdel;
    json["o_haspickup"] = o_haspickup;
    json["o_minimumorderpick"] = o_minimumorderpick;
    json["o_pickuprange"] = o_pickuprange;
    json["o_onlyregistered"] = o_onlyregistered;
    json["allowratetypes"] = allowratetypes;
    json["o_deliverypickupstaffcategory"] = o_deliverypickupstaffcategory;
    json["r_hasregistration"] = r_hasregistration;
    json["r_hasclasses"] = r_hasclasses;
    json["r_virtualroomheader"] = r_virtualroomheader;
    json["r_gradeheader"] = r_gradeheader;
    json["r_hassessionterm"] = r_hassessionterm;
    json["r_reqsocialdata"] = r_reqsocialdata;
    json["r_reqgaurdiandata"] = r_reqgaurdiandata;
    json["r_requirefeemanagement"] = r_requirefeemanagement;
    json["r_feetype"] = r_feetype;
    json["r_useqrcodeforfeetracking"] = r_useqrcodeforfeetracking;
    json["r_feeplanload"] = r_feeplanload;
    json["r_haslibrary"] = r_haslibrary;
    json["t_hastransport"] = t_hastransport;
    json["t_routetype"] = t_routetype;
    json["t_reqticketing"] = t_reqticketing;
    json["t_reqremotemanagement"] = t_reqremotemanagement;
    return json;
  }
}

import 'package:complex/data/models/response/product_models/property_model.dart';

class ProductModel {
  String productid;
  String title;
  String description;
  String brand;
  String category;
  String tilephoto;
  List<String> imagelist;
  double price;
  double discountedprice;
  int ptype;
  List<Dynamicproperties> dynamicproperties;
  String varinattype;
  String sizetype;
  Nopackagedata nopackagedata;
  List<Packagedata> packagedata;
  List<Sizeandcolordata> sizeandcolordata;
  Null custompackagedata;
  Contactdetails addressarea;
  String serviceproviderid;
  String userid;

  ProductModel({
    this.productid,
    this.title,
    this.description,
    this.brand,
    this.category,
    this.tilephoto,
    this.imagelist,
    this.price,
    this.discountedprice,
    this.ptype,
    this.dynamicproperties,
    this.varinattype,
    this.sizetype,
    this.nopackagedata,
    this.packagedata,
    this.sizeandcolordata,
    this.custompackagedata,
    this.addressarea,
    this.serviceproviderid,
    this.userid,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    productid = json['productid'];
    title = json['title'];
    description = json['description'];
    brand = json['brand'];
    category = json['category'];
    tilephoto = json['tilephoto'];
    imagelist = json['imagelist'].cast<String>();
    price = json['price'];
    discountedprice = json['discountedprice'];
    ptype = json['ptype'];
    if (json['dynamicproperties'] != null) {
      dynamicproperties = new List<Dynamicproperties>();
      json['dynamicproperties'].forEach((v) {
        dynamicproperties.add(new Dynamicproperties.fromJson(v));
      });
    }
    varinattype = json['varinattype'];
    sizetype = json['sizetype'];
    nopackagedata = json['nopackagedata'] != null
        ? new Nopackagedata.fromJson(json['nopackagedata'])
        : null;
    if (json['packagedata'] != null) {
      packagedata = new List<Packagedata>();
      json['packagedata'].forEach((v) {
        packagedata.add(new Packagedata.fromJson(v));
      });
    }
    if (json['sizeandcolordata'] != null) {
      sizeandcolordata = new List<Sizeandcolordata>();
      json['sizeandcolordata'].forEach((v) {
        sizeandcolordata.add(new Sizeandcolordata.fromJson(v));
      });
    }
    custompackagedata = json['custompackagedata'];
    addressarea = json['addressarea'] != null
        ? Contactdetails.fromJson(json['addressarea'])
        : null;
    serviceproviderid = json['serviceproviderid'];
    userid = json['userid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productid'] = this.productid;
    data['title'] = this.title;
    data['description'] = this.description;
    data['brand'] = this.brand;
    data['category'] = this.category;
    data['tilephoto'] = this.tilephoto;
    data['imagelist'] = this.imagelist;
    data['price'] = this.price;
    data['discountedprice'] = this.discountedprice;
    data['ptype'] = this.ptype;
    if (this.dynamicproperties != null) {
      data['dynamicproperties'] =
          this.dynamicproperties.map((v) => v.toJson()).toList();
    }
    data['varinattype'] = this.varinattype;
    data['sizetype'] = this.sizetype;
    if (this.nopackagedata != null) {
      data['nopackagedata'] = this.nopackagedata.toJson();
    } else {
      data['nopackagedata'] = null;
    }
    if (this.packagedata != null) {
      data['packagedata'] = this.packagedata.map((v) => v.toJson()).toList();
    } else {
      data['packagedata'] = null;
    }
    if (this.sizeandcolordata != null) {
      data['sizeandcolordata'] =
          this.sizeandcolordata.map((v) => v.toJson()).toList();
    } else {
      data['sizeandcolordata'] = null;
    }
    data['custompackagedata'] = this.custompackagedata;
    if (this.addressarea != null) {
      data['addressarea'] = this.addressarea.toJson();
    }
    data['serviceproviderid'] = this.serviceproviderid;
    data['userid'] = this.userid;
    return data;
  }
}

class Dynamicproperties {
  String propertyname;
  List<String> values;

  Dynamicproperties({this.propertyname, this.values});

  Dynamicproperties.fromJson(Map<String, dynamic> json) {
    propertyname = json['propertyname'];
    values = json['values'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['propertyname'] = this.propertyname;
    data['values'] = this.values;
    return data;
  }
}

class Nopackagedata {
  String unitmeasure;
  int qty;
  double priceperunit;
  int inventoryunits;
  double discountedpriceperunit;

  Nopackagedata({
    this.unitmeasure,
    this.qty,
    this.priceperunit,
    this.inventoryunits,
    this.discountedpriceperunit,
  });

  Nopackagedata.fromJson(Map<String, dynamic> json) {
    unitmeasure = json['unitmeasure'];
    qty = json['qty'];
    priceperunit = json['priceperunit'];
    inventoryunits = json['inventoryunits'];
    discountedpriceperunit = json['discountedpriceperunit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['unitmeasure'] = this.unitmeasure;
    data['qty'] = this.qty;
    data['priceperunit'] = this.priceperunit;
    data['inventoryunits'] = this.inventoryunits;
    data['discountedpriceperunit'] = this.discountedpriceperunit;
    return data;
  }
}

class Packagedata {
  String packageid;
  String barcodeid;
  String title;
  String tileimage;
  List<String> listimages;
  int unit;
  double price;
  double discountedprice;
  int inventoryunits;

  Packagedata({
    this.packageid,
    this.barcodeid,
    this.title,
    this.tileimage,
    this.listimages,
    this.unit,
    this.price,
    this.discountedprice,
    this.inventoryunits,
  });

  Packagedata.fromJson(Map<String, dynamic> json) {
    packageid = json['packageid'];
    barcodeid = json['barcodeid'];
    title = json['title'];
    tileimage = json['tileimage'];
    listimages = json['listimages'].cast<String>();
    unit = json['unit'];
    price = json['price'];
    discountedprice = json['discountedprice'];
    inventoryunits = json['inventoryunits'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['packageid'] = this.packageid;
    data['barcodeid'] = this.barcodeid;
    data['title'] = this.title;
    data['tileimage'] = this.tileimage;
    data['listimages'] = this.listimages;
    data['unit'] = this.unit;
    data['price'] = this.price;
    data['discountedprice'] = this.discountedprice;
    data['inventoryunits'] = this.inventoryunits;
    return data;
  }
}

class Sizeandcolordata {
  String sizecolorid;
  String barcodeid;
  String sizetype;
  String size;
  String color;
  double price;
  double discountedprice;
  String tileimage;
  List<String> listimages;
  int unit;
  int inventoryunits;

  Sizeandcolordata(
      {this.sizecolorid,
        this.barcodeid,
        this.sizetype,
        this.size,
        this.color,
        this.price,
        this.discountedprice,
        this.tileimage,
        this.listimages,
        this.unit,
        this.inventoryunits});

  Sizeandcolordata.fromJson(Map<String, dynamic> json) {
    sizecolorid = json['sizecolorid'];
    barcodeid = json['barcodeid'];
    sizetype = json['sizetype'];
    size = json['size'];
    color = json['color'];
    price = json['price'];
    discountedprice = json['discountedprice'];
    tileimage = json['tileimage'];
    listimages = json['listimages'].cast<String>();
    unit = json['unit'];
    inventoryunits = json['inventoryunits'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sizecolorid'] = this.sizecolorid;
    data['barcodeid'] = this.barcodeid;
    data['sizetype'] = this.sizetype;
    data['size'] = this.size;
    data['color'] = this.color;
    data['price'] = this.price;
    data['discountedprice'] = this.discountedprice;
    data['tileimage'] = this.tileimage;
    data['listimages'] = this.listimages;
    data['unit'] = this.unit;
    data['inventoryunits'] = this.inventoryunits;
    return data;
  }
}

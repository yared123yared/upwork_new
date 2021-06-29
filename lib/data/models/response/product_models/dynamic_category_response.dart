class DynamicCategoryJson {
  List<CategoryList> categoryList;

  DynamicCategoryJson({this.categoryList});

  DynamicCategoryJson.fromJson(Map<String, dynamic> json) {
    if (json['category_list'] != null) {
      categoryList = new List<CategoryList>();
      json['category_list'].forEach((v) {
        categoryList.add(new CategoryList.fromJson(v));
      });
    }
  }
}

class CategoryList {
  String id;
  String title;
  String type;
  String displayfield;
  Properties properties;

  CategoryList({
    this.id,
    this.title,
    this.type,
    this.displayfield,
    this.properties,
  });

  CategoryList.fromJson(Map<String, dynamic> json) {
    id = json['@id'];
    title = json['title'];
    type = json['type'];
    displayfield = json['displayfield'];
    properties = json['properties'] != null
        ? new Properties.fromJson(json['properties'])
        : null;
  }
}

class Properties {
  Category category;
  Pricerange pricerange;
  Category priceareadependent;
  Category iconpath;
  Category imagepath;
  Dynamicpropertiesidentifier dynamicpropertiesidentifier;
  Childcategory childcategory;

  Properties({
    this.category,
    this.pricerange,
    this.priceareadependent,
    this.iconpath,
    this.imagepath,
    this.dynamicpropertiesidentifier,
    this.childcategory,
  });

  Properties.fromJson(Map<String, dynamic> json) {
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    pricerange = json['pricerange'] != null
        ? new Pricerange.fromJson(json['pricerange'])
        : null;
    priceareadependent = json['priceareadependent'] != null
        ? new Category.fromJson(json['priceareadependent'])
        : null;
    iconpath = json['iconpath'] != null
        ? new Category.fromJson(json['iconpath'])
        : null;
    imagepath = json['imagepath'] != null
        ? new Category.fromJson(json['imagepath'])
        : null;
    dynamicpropertiesidentifier = json['dynamicpropertiesidentifier'] != null
        ? new Dynamicpropertiesidentifier.fromJson(
            json['dynamicpropertiesidentifier'])
        : null;
    childcategory = json['childcategory'] != null
        ? new Childcategory.fromJson(json['childcategory'])
        : null;
  }
}

class Category {
  String type;
  bool ismandatory;
  String display;

  Category({
    this.type,
    this.ismandatory,
    this.display,
  });

  Category.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    ismandatory = json['ismandatory'];
    display = json['display'];
  }
}

class Pricerange {
  String type;
  Items items;
  bool ismandatory;
  String display;
  int minItems;
  int maxItems;

  Pricerange({
    this.type,
    this.items,
    this.ismandatory,
    this.display,
    this.minItems,
    this.maxItems,
  });

  Pricerange.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    items = json['items'] != null ? new Items.fromJson(json['items']) : null;
    ismandatory = json['ismandatory'];
    display = json['display'];
    minItems = json['minItems'];
    maxItems = json['maxItems'];
  }
}

class Items {
  String type;

  Items({this.type});

  Items.fromJson(Map<String, dynamic> json) {
    type = json['type'];
  }
}

class Dynamicpropertiesidentifier {
  String type;
  bool ismandatory;
  String display;
  String datasourcetype;
  String datasource;

  Dynamicpropertiesidentifier({
    this.type,
    this.ismandatory,
    this.display,
    this.datasourcetype,
    this.datasource,
  });

  Dynamicpropertiesidentifier.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    ismandatory = json['ismandatory'];
    display = json['display'];
    datasourcetype = json['datasourcetype'];
    datasource = json['datasource'];
  }
}

class Childcategory {
  String type;
  Items items;
  bool ismandatory;
  String display;
  int minItems;
  String displayfield;

  Childcategory({
    this.type,
    this.items,
    this.ismandatory,
    this.display,
    this.minItems,
    this.displayfield,
  });

  Childcategory.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    items = json['items'] != null ? new Items.fromJson(json['items']) : null;
    ismandatory = json['ismandatory'];
    display = json['display'];
    minItems = json['minItems'];
    displayfield = json['displayfield'];
  }
}

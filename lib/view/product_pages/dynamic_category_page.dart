import 'package:complex/blocs/bloc_manager.dart';
import 'package:complex/blocs/product_bloc.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/common/widgets/tap_widget.dart';
import 'package:complex/utils/next_page_routing.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/utils/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DynamicCategoryPage extends StatefulWidget {
  final String entityid;
  final String entitytype;
  final String schemaname;

  DynamicCategoryPage({
    @required this.schemaname,
    @required this.entitytype,
    @required this.entityid,
  });
  @override
  _DynamicCategoryPageState createState() => _DynamicCategoryPageState();
}

class _DynamicCategoryPageState extends State<DynamicCategoryPage> {
  var _key = GlobalKey<ScaffoldState>();
  ProductBloc _productBloc;
  bool _isLoading = false;
  var _type;
  Map<String, dynamic> _fieldData;

  void _handleCategoryResponse(GetCategoryFieldState state) {
    switch (state.apiState) {
      case ApiStatus.LOADING:
        _isLoading = true;
        break;
      case ApiStatus.SUCCESS:
        _isLoading = false;
        if (state.response != null && state.response.data != null) {
          _fieldData = state.response.data as Map<String, dynamic>;
        }
        break;
      case ApiStatus.ERROR:
        _isLoading = false;
        Utility.showSnackBar(key: _key, message: state.message);
        break;
      case ApiStatus.INITIAL:
        break;
    }
  }

  void _handleUpdateCategoryResponse(UpdateCategoryFieldState state) {
    switch (state.apiState) {
      case ApiStatus.LOADING:
        _isLoading = true;
        break;
      case ApiStatus.SUCCESS:
        _isLoading = false;
        if (state.response != null && state.response.data != null) {
          _fieldData = state.response.data as Map<String, dynamic>;
        }
        break;
      case ApiStatus.ERROR:
        _isLoading = false;
        Utility.showSnackBar(key: _key, message: state.message);
        break;
      case ApiStatus.INITIAL:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    _productBloc = BlocProvider.of<ProductBloc>(context);
    return BlocManager(
      initState: (context) {
        _productBloc.add(GetCategoryFieldEvent(filedName: widget.schemaname));
      },
      child: BlocListener<ProductBloc, ProductState>(
        listener: (context, state) {
          if (state is GetCategoryFieldState) _handleCategoryResponse(state);
          if (state is UpdateCategoryFieldState)
            _handleUpdateCategoryResponse(state);
        },
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return Scaffold(
              key: _key,
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  _backFromAddEdit(_fieldData, AddEditCategory.addTopLevel);
                },
                child: Icon(Icons.add),
                backgroundColor: ColorConstants.primaryColor,
              ),
              appBar: AppBar(
                title: Text(
                  "TreeView",
                  style: Styles.lightText(color: Colors.white, size: 16),
                ),
                centerTitle: true,
                elevation: 0,
              ),
              body: ScreenWithLoader(
                isLoading: _isLoading,
                body: Column(
                  children: [
                    Container(
                      height: 10,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: ColorConstants.primaryColor,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                    _fieldData == null
                        ? Container()
                        : Expanded(
                            child: Container(
                              child: _makeBody(),
                            ),
                          ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _makeBody() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _fieldData['adata'].length,
      itemBuilder: (context, index) {
        return _mainListItem(
            _fieldData['adata'][index], index, _fieldData['adata']);
      },
    );
  }

  Widget _mainListItem(
      Map<String, dynamic> childData, int index, listOfFields) {
    bool _isCheck = false;
    return StatefulBuilder(builder: (context, _setState) {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ExpansionTile(
              initiallyExpanded: false,
              leading: Checkbox(
                value: _isCheck,
                onChanged: (value) {
                  _setState(() {
                    _isCheck = value;
                  });
                },
                activeColor: ColorConstants.primaryColor,
              ),
              title: Row(
                children: [
                  Text(childData['category'] ?? ""),
                  Spacer(),
                  TapWidget(
                    onTap: () {
                      _backFromAddEdit(childData, AddEditCategory.add);
                    },
                    child: Icon(
                      Icons.add,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              childrenPadding: const EdgeInsets.only(left: 20),
              children: List.generate(
                childData.containsKey('childcategory')
                    ? childData['childcategory'].length ?? 0
                    : 0,
                (index) => _mainListItem(childData['childcategory'][index],
                    index, childData['childcategory']),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(
                thickness: 1.5,
                height: 1.5,
              ),
            ),
            Visibility(
              visible: _isCheck,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TapWidget(
                      onTap: () {
                        listOfFields.removeAt(index);
                        print(_fieldData);
                        _productBloc.add(UpdateCategoryFieldEvent(
                            requestMap: _fieldData,
                            filedName: UserSession.showCategoryResult));
                      },
                      child: Icon(
                        Icons.delete_forever,
                        color: ColorConstants.primaryColor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TapWidget(
                      onTap: () {
                        _backFromAddEdit(childData, AddEditCategory.edit);
                      },
                      child: Icon(
                        Icons.edit_outlined,
                        color: ColorConstants.darkGreyColor,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    });
  }

  _backFromAddEdit(
      Map<String, dynamic> childData, AddEditCategory actionType) async {
    // final response = await ;
    Navigator.push(
      _key.currentContext,
      NextPageRoute(EditAddCategory(childData, actionType)),
    ).then((response) {
      print("RES ::: $response");
      if (response == 1) {
        _productBloc.add(UpdateCategoryFieldEvent(
            requestMap: _fieldData, filedName: UserSession.showCategoryResult));
      }
    });
  }
}

enum AddEditCategory { add, edit, addTopLevel }

class EditAddCategory extends StatefulWidget {
  Map<String, dynamic> childData;
  AddEditCategory type;

  EditAddCategory(this.childData, this.type);

  @override
  _EditAddCategoryState createState() => _EditAddCategoryState();
}

class _EditAddCategoryState extends State<EditAddCategory> {
  var _key = GlobalKey<ScaffoldState>();
  var _categoryNameController = CustomTextFieldController();
  var _dynamicProductIdController = CustomTextFieldController();
  RangeValues _rangeValue;
  var _minValue = 0.0;
  var _maxValue = 1000.0;
  var _label;
  var _isAreaDependent = false;

  _setData() {
    _categoryNameController.text = widget.childData['category'];
    _dynamicProductIdController.text =
        widget.childData['dynamicpropertiesidentifier'].toString();
    if (widget.childData.containsKey('pricerange')) {
      _rangeValue = RangeValues(
        widget.childData['pricerange'].first.toDouble(),
        widget.childData['pricerange'].last.toDouble(),
      );
      _label = RangeLabels(
        widget.childData['pricerange'].first.toString(),
        widget.childData['pricerange'].last.toString(),
      );
    }
    _isAreaDependent = widget.childData['priceareadependent'];
  }

  @override
  void initState() {
    super.initState();
    if (SchedulerBinding.instance.schedulerPhase ==
        SchedulerPhase.persistentCallbacks) {
      SchedulerBinding.instance.addPostFrameCallback((duration) {
        setState(() {
          if (widget.childData != null && widget.type == AddEditCategory.edit)
            _setData();
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          widget.childData != null ? "Edit Category" : "Add Category",
          style: Styles.lightText(color: Colors.white, size: 16),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: _makeBody(),
          ),
        ],
      ),
    );
  }

  _makeBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomTextField(
            title: "Category Name",
            controller: _categoryNameController,
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            validate: Validate.withOption(
              isRequired: true,
            ),
          ),
          StatefulBuilder(
            builder: (context, _setState) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 26.0),
                      child: Text("Price Range"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RangeSlider(
                      values: _rangeValue ?? RangeValues(0.0, 0.0),
                      onChanged: (value) {
                        _setState(() {
                          _rangeValue = value;
                          _label = RangeLabels(
                            value.start.round().toString(),
                            value.end.round().toString(),
                          );
                        });
                      },
                      min: _minValue,
                      max: _maxValue,
                      divisions: 10,
                      labels: _label ?? RangeLabels("0", "0"),
                      activeColor: ColorConstants.primaryColor,
                      inactiveColor:
                          ColorConstants.primaryColor.withOpacity(0.2),
                    ),
                  ],
                ),
              );
            },
          ),
          CustomTextField(
            title: "Dynamic Properties ID",
            controller: _dynamicProductIdController,
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            validate: Validate.withOption(
              isRequired: true,
              isInt: true,
              isNumber: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 10),
            child: Row(
              children: [
                Text("Is Area Dependent?"),
                Spacer(),
                Radio(
                    value: true,
                    groupValue: _isAreaDependent,
                    onChanged: (value) {
                      setState(() {
                        _isAreaDependent = value;
                      });
                    }),
                Text("Yes"),
                Radio(
                    value: false,
                    groupValue: _isAreaDependent,
                    onChanged: (value) {
                      setState(() {
                        _isAreaDependent = value;
                      });
                    }),
                Text("No"),
              ],
            ),
          ),
          Spacer(),
          CustomButton(
            text: "Save",
            buttonColor: ColorConstants.primaryColor,
            onTap: () {
              if (_categoryNameController.text.isEmpty) {
                Utility.showSnackBar(
                    key: _key, message: "Please enter category name");
              } else if (_dynamicProductIdController.text.isEmpty) {
                Utility.showSnackBar(
                    key: _key, message: "Please enter category name");
              } else {
                if (widget.type == AddEditCategory.edit) {
                  widget.childData['category'] = _categoryNameController.text;
                  widget.childData['dynamicpropertiesidentifier'] =
                      int.parse(_dynamicProductIdController.text);
                  widget.childData['pricerange'] = [
                    _rangeValue.start.round(),
                    _rangeValue.end.round()
                  ];
                  widget.childData['priceareadependent'] = _isAreaDependent;
                  Navigator.pop(_key.currentContext, 1);
                } else {
                  var _data = Childcategory(
                    category: _categoryNameController.text,
                    dynamicpropertiesidentifier:
                        int.parse(_dynamicProductIdController.text),
                    iconpath: "",
                    imagepath: "",
                    priceareadependent: _isAreaDependent,
                    pricerange: [
                      _rangeValue.start.round(),
                      _rangeValue.end.round()
                    ],
                  );
                  if (widget.type == AddEditCategory.addTopLevel) {
                    List<dynamic> _localList = List();
                    for (int i = 0;
                        i <
                            ((widget.childData['adata'].toList() as List)
                                .length);
                        i++) {
                      _localList.add(widget.childData['adata'][i]);
                    }
                    _localList.add(_data.toJson());
                    widget.childData['adata'] = _localList;
                    Navigator.pop(context, 1);
                  } else if (widget.childData.containsKey('childcategory')) {
                    CategoryList category =
                        CategoryList.fromJson(widget.childData);
                    category.childcategory.add(_data);
                    widget.childData['childcategory'] =
                        category.toJson()['childcategory'];
                    Navigator.pop(context, 1);
                    return;
                  } else {
                    widget.childData['childcategory'] = [_data.toJson()];
                    Navigator.pop(_key.currentContext, 1);
                  }
                }
              }
            },
            borderColor: ColorConstants.white,
          )
        ],
      ),
    );
  }
}

class CategoryList {
  List<Childcategory> childcategory;

  CategoryList({this.childcategory});

  CategoryList.fromJson(Map<String, dynamic> json) {
    if (json['childcategory'] != null) {
      childcategory = new List<Childcategory>();
      json['childcategory'].forEach((v) {
        childcategory.add(new Childcategory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.childcategory != null) {
      data['childcategory'] =
          this.childcategory.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Childcategory {
  bool priceareadependent;
  String imagepath;
  List<int> pricerange;
  int dynamicpropertiesidentifier;
  String category;
  String iconpath;

  Childcategory(
      {this.priceareadependent,
      this.imagepath,
      this.pricerange,
      this.dynamicpropertiesidentifier,
      this.category,
      this.iconpath});

  Childcategory.fromJson(Map<String, dynamic> json) {
    priceareadependent = json['priceareadependent'];
    imagepath = json['imagepath'];
    pricerange = json['pricerange'].cast<int>();
    dynamicpropertiesidentifier = json['dynamicpropertiesidentifier'];
    category = json['category'];
    iconpath = json['iconpath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['priceareadependent'] = this.priceareadependent;
    data['imagepath'] = this.imagepath;
    data['pricerange'] = this.pricerange;
    data['dynamicpropertiesidentifier'] = this.dynamicpropertiesidentifier;
    data['category'] = this.category;
    data['iconpath'] = this.iconpath;
    return data;
  }
}

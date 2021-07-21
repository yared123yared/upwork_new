import 'dart:convert';

import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/data/providers/channel_provider.dart';
import 'package:complex/data/providers/product_provider_old.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/custom_dropdown.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:complex/common/widgets/group_title.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/common/widgets/tap_widget.dart';

import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';

import 'package:complex/view/product_pages/addittional_properties_page.dart';
import 'package:complex/view/product_pages/select_category_page.dart';
import 'package:complex/view/product_pages/select_product_type.dart';
import 'package:complex/utils/log_print.dart';
import 'package:complex/utils/next_page_routing.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/utility.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:injector/injector.dart';

class GenericProperties extends StatefulWidget {
  final bool withUnitPrice;
  final String serviceProviderId;
  final ContactDetailsModel contactDetails;
  final ProductType productType;
  final bool isService;
  final String serviceId;

  GenericProperties({
    this.withUnitPrice,
    this.contactDetails,
    this.productType,
    this.serviceProviderId,
    this.serviceId,
    this.isService,
  });

  @override
  State<StatefulWidget> createState() {
    return _GenericPropertiesState();
  }
}

class _GenericPropertiesState extends State<GenericProperties> {
  CustomTextFieldController _titleController = CustomTextFieldController();
  CustomTextFieldController _descController = CustomTextFieldController();
  CustomTextFieldController _brandController = CustomTextFieldController();
  CustomTextFieldController _categoryController = CustomTextFieldController();
  CustomTextFieldController _unitController = CustomTextFieldController();
  CustomTextFieldController _unitPriceController = CustomTextFieldController();
  CustomTextFieldController _invUnitController = CustomTextFieldController();
  CustomTextFieldController _pricePriceController = CustomTextFieldController();
  bool _isLoading = true;
  List<String> _photos = [];
  var _channelsProvider = Injector.appInstance.get<ChannelsProvider>();
  var _productProvider = Injector.appInstance.get<ProductProviderOld>();
  List<String> _categoryIds = [];
  var _dynamicProperties;

  String _category = "";

  double get screenWidth => MediaQuery.of(context).size.width;
  var _key = GlobalKey<ScaffoldState>();

  double get gridWidth => (screenWidth - 70) / 4;
  List<String> _brandList = [];
  List<String> _unitList = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20"
  ];

  @override
  void initState() {
    super.initState();
    _productProvider
        .getCategory(
            levelName: widget.serviceProviderId != null
                ? "PRODUCTCATEGORYINFO/L1"//"SERVICEPROVIDERINFO/${widget.serviceProviderId}/PRODUCTCATEGORYINFO/L1"
                : "PRODUCTCATEGORYINFO/L1")
        .then((result) {
      print("result ${json.encode(result)}");
      if (result != null) {
        _categoryIds.clear();
        List<String> _data = result['data'].cast<String>();
        _categoryIds.addAll(_data);
      }
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text('Generic Properties'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        backgroundColor: ColorConstants.greenColor,
      ),
      body: ScreenWithLoader(
        isLoading: _isLoading,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: _renderForm(),
        ),
      ),
    );
  }

  Widget _renderForm() {
    return Column(
      children: [
        _renderTextField("Title", _titleController),
        _renderTextField("Descripton", _descController),
        _renderDropDown("Category", _categoryController, _categoryIds,
            onSelect: (a, v) {
          _onCategoryClick(a);
        }),
        _renderDropDown("Brand", _brandController, _brandList,
            onSelect: (a, v) {}),
        GroupTitle(text: 'Photos'),
        _renderPhotosGrid(),
        GroupTitle(text: 'Price Info'),
        _renderPriceInfo(),
        CustomButton(
          onTap: _nextClick,
          text: "Next",
          borderColor: ColorConstants.primaryColor,
        )
      ],
    );
  }

  Widget _renderTextField(String text, CustomTextFieldController controller,
      {Function() onTap, bool isInt = false}) {
    return CustomTextField(
      title: text,
      controller: controller,
      validate:
          Validate.withOption(isRequired: true, isInt: isInt, isNumber: isInt),
      enabled: onTap == null,
      onTap: () {
        if (onTap != null) onTap();
      },
    );
  }

  Widget _renderDropDown(
      String text, CustomTextFieldController controller, List<String> items,
      {Function(String, int) onSelect}) {
    return CustomDropDownList<String>(
      title: text,
      controller: controller,
      loadData: () async => items,
      displayName: (x) => x,
      onSelected: onSelect,
      validate: Validate.withOption(
        isRequired: true,
      ),
    );
  }

  Widget _renderPriceInfo() {
    Widget _unitPrice() {
      return Column(
        children: [
          _renderDropDown("Unit", _unitController, _unitList),
          _renderTextField("Price/ Per Unit", _unitPriceController,
              isInt: true),
          _renderTextField("Inventonary Unit", _invUnitController, isInt: true),
        ],
      );
    }

    Widget _price() {
      return Stack(
        children: [
          _renderTextField("Price", _pricePriceController, isInt: true),
        ],
      );
    }

    return widget.withUnitPrice ? _unitPrice() : _price();
  }

  Widget _renderPhotosGrid() {
    Widget _renderText() {
      return Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          'On average, products with photos get 3-5 \ntimes more orders.',
          style: TextStyle(fontSize: 15, color: ColorConstants.darkBlackColor),
        ),
      );
    }

    Widget _renderGrid() {
      return Container(
        height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: TapWidget(
                onTap: () async {
                  try {
                    var pickedFile = await FilePicker.platform
                        .pickFiles(type: FileType.image);
                    if (pickedFile != null && pickedFile.files != null) {
                      setState(() {
                        _isLoading = true;
                      });
                      var image = await _channelsProvider.sendFile(
                          "Images", pickedFile?.files?.first?.path);
                      if (image != null) {
                        _photos.add(image);
                      }
                      setState(() {
                        _isLoading = false;
                      });
                    }
                  } catch (error) {
                    print(error);
                  }
                },
                child: Container(
                  height: 65,
                  width: 65,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.65)),
                  alignment: Alignment.center,
                  child: Icon(Icons.add),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: ListView.builder(
                itemCount: _photos.length,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 65,
                    width: 65,
                    margin:
                        const EdgeInsets.only(left: 5, bottom: 15, right: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(_photos[index]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_renderText(), _renderGrid()],
    );
  }

  _onCategoryClick(String a) async {
    final result = await Navigator.push(
        context,
        NextPageRoute(SelectCategoryPage(
          documentname: a,
          serviceProviderId: widget.serviceProviderId,
        )));
    _category = result;
    _categoryController.text = result.split("->").last ?? "";
    if (_categoryController.text.trim().isNotEmpty) {
      _productProvider
          .getBrandAndDyanmicProperty(
              levelName: widget.serviceProviderId != null
                  ? "SERVICEPROVIDERINFO/${widget.serviceProviderId}/PRODUCTCATEGORYPROPERTIES/${_categoryController.text.trim()}"
                  : "PRODUCTCATEGORYPROPERTIES/${_categoryController.text.trim()}")
          .then((result) {
        LogPrint("result ===> ${json.encode(result)}");
        if (result != null) {
          _dynamicProperties = result;
          _brandList.clear();
          List<String> _data =
              result['adata']['BRAND']['values'].cast<String>();
          _brandList.addAll(_data);
        }
        setState(() {
          _isLoading = false;
        });
      });
    }
  }

  _validateFields() {
    bool vaild = true;
    if (!_titleController.isValid) vaild = false;
    if (!_descController.isValid) vaild = false;
    return vaild;
  }

  _nextClick() {
    if (_photos.length == 0) {
      Utility.showSnackBar(
          context: context, message: "At least one image required");
    } else if (_dynamicProperties == null) {
      Utility.showSnackBar(context: context, message: "Please select brand ");
    } else if (_validateFields()) {
      ProductModel _model = ProductModel(
        addressarea: widget.contactDetails,
        title: _titleController.text.trim(),
        description: _descController.text.trim(),
        category: _category.replaceAll("->", "/"),
        brand: _brandController.text,
        imagelist: _photos,
        price: double.parse(_pricePriceController?.text ?? "0"),
        discountedprice:
            widget.productType == ProductType.noPackage ? 0.0 : null,
        ptype: _setPType(),
        userid: UserSession.userId,
        serviceproviderid: widget.serviceProviderId,
        varinattype: widget.productType == ProductType.noPackage
            ? "NOPACKAGE"
            : widget.productType == ProductType.package
                ? "PACKAGE"
                : widget.productType == ProductType.multiColor
                    ? "SIZEANDCOLOR"
                    : "",
        nopackagedata: widget.productType == ProductType.noPackage
            ? NoPackageModel(
                inventoryunits: double.parse(_invUnitController.text ?? "0"),
                priceperunit: double.parse(_unitPriceController.text ?? "0"),
                qty: int.parse(_unitController.text.trim()),
                discountedpriceperunit: 0.0,
                unitmeasure: null,
              )
            : null,
      );
      Navigator.push(
        context,
        NextPageRoute(
          AdditionalPropertiesPage(
            productType: widget.productType,
            model: _model,
            dynamicProperties:
                _dynamicProperties == null ? null : _dynamicProperties['adata'],
          ),
        ),
      );
    }
  }

  int _setPType() {
    if (widget.isService == false && widget.serviceId == null) {
      return 4;
    } else if (widget.isService && widget.serviceId == null) {
      return 3;
    } else if (widget.isService == false && widget.serviceId != null) {
      return 2;
    } else if (widget.isService && widget.serviceId != null) {
      return 1;
    }
    return 0;
  }
}

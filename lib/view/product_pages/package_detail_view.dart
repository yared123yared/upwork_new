import 'package:complex/data/providers/channel_provider.dart';
import 'package:complex/data/providers/product_provider_old.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/custom_dropdown.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:complex/common/widgets/group_title.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/common/widgets/tap_widget.dart';
import 'package:complex/domain/explore/ecom/product/product_data/product_model.dart';
import 'package:complex/view/product_pages/package_list_view.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/utility.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:injector/injector.dart';

class PackageDetailView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PackageDetailViewState();
  }
}

class _PackageDetailViewState extends State<PackageDetailView> {
  CustomTextFieldController _idController = CustomTextFieldController();
  CustomTextFieldController _titleController = CustomTextFieldController();
  CustomTextFieldController _priceController = CustomTextFieldController();
  CustomTextFieldController _discountPriceController =
      CustomTextFieldController();
  CustomTextFieldController _unitController = CustomTextFieldController();
  CustomTextFieldController _inventoryUnitController =
      CustomTextFieldController();
  CustomTextFieldController _unitsInPackageController =
      CustomTextFieldController();

  CustomTextFieldController _barCodeController = CustomTextFieldController();
  var _channelsProvider = Injector.appInstance.get<ChannelsProvider>();
  var _productProvider = Injector.appInstance.get<ProductProviderOld>();
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
  List<String> _photos = [];
  var _key = GlobalKey<ScaffoldState>();
  bool _isLoading = false;

  double get screenWidth => MediaQuery.of(context).size.width;

  double get gridWidth => (screenWidth - 70) / 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text('Package'),
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
          child: Stack(children: [_renderForm()]),
        ),
      ),
    );
  }

  _validateInput() {
    bool vaild = true;
    if (!_idController.isValid) vaild = false;
    if (!_titleController.isValid) vaild = false;
    if (!_priceController.isValid) vaild = false;
    if (!_discountPriceController.isValid) vaild = false;
    if (!_unitController.isValid) vaild = false;
    if (!_inventoryUnitController.isValid) vaild = false;
    if (!_unitsInPackageController.isValid) vaild = false;
    return vaild;
  }

  Widget _renderForm() {
    return SingleChildScrollView(
        child: Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 20)),
        _renderTextField("ID", _idController),
        _renderBarCode(),
        _renderTextField("Title", _titleController),
        GroupTitle(text: 'Photos'),
        _renderPhotosGrid(),
        GroupTitle(text: 'Price Info'),
        _renderTextField(
          "Price",
          _priceController,
          isInt: true,
        ),
        _renderTextField(
          "Discount Price",
          _discountPriceController,
          isInt: true,
        ),
        GroupTitle(text: 'Inventary Info'),
        _renderDropDown("Unit", _unitController, _unitList),
        _renderTextField(
          "Inventory Unit",
          _inventoryUnitController,
          isInt: true,
        ),
        _renderTextField(
          "Units in Package",
          _unitsInPackageController,
          isInt: true,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: CustomButton(
            text: 'SAVE',
            onTap: () {
              if (_photos.length == 0) {
                Utility.showSnackBar(
                    key: _key, message: "At least one image required");
              } else if (_validateInput()) {
                packageList.add(
                  Packagedata(
                    packageid: _idController.text.trim(),
                    title: _titleController.text.trim(),
                    price: double.parse(_priceController.text.trim()),
                    listimages: _photos,
                    discountedprice:
                        double.parse(_discountPriceController.text.trim()),
                    unit: int.parse(_unitController.text.trim()),
                    barcodeid: _barCodeController.text.trim(),
                    tileimage: _photos.first,
                    inventoryunits:
                        int.parse(_inventoryUnitController.text.trim()),
                  ),
                );
                Navigator.pop(context);
              }
            },
            borderColor: ColorConstants.primaryColor,
          ),
        )
      ],
    ));
  }

  Widget _renderTextField(String text, CustomTextFieldController controller,
      {bool isInt = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomTextField(
        title: text,
        controller: controller,
        validate: Validate.withOption(
          isRequired: true,
          isInt: isInt,
          isNumber: isInt,
        ),
      ),
    );
  }

  Widget _renderBarCode() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomTextField(
        title: 'BarCode ID ',
        controller: _barCodeController,
        validate: Validate.withOption(
          isRequired: true,
        ),
        icon: Icons.photo_camera_rounded,
      ),
    );
  }

  Widget _renderDropDown(
      String text, CustomTextFieldController controller, List<String> items) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomDropDownList<String>(
        title: text,
        controller: controller,
        loadData: () async => items,
        displayName: (x) => x,
        validate: Validate.withOption(
          isRequired: true,
        ),
      ),
    );
  }

  Widget _renderPhotosGrid() {
    Widget _renderText() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Text(
          'On average, products with photos get 3-5 \ntimes more orders.',
          style: TextStyle(fontSize: 15, color: ColorConstants.darkBlackColor),
        ),
      );
    }

    Widget _renderGrid() {
      return Container(
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
}

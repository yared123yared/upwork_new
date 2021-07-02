import 'package:complex/blocs/product_bloc.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/common/widgets/alerts_widget.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/custom_dropdown.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/domain/explore/ecom/product/product_data/product_model.dart';
import 'package:complex/view/product_pages/package_list_view.dart';
import 'package:complex/view/product_pages/select_product_type.dart';
import 'package:complex/view/product_pages/size_and_color_list_view.dart';
import 'package:complex/utils/next_page_routing.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/utils/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdditionalPropertiesPage extends StatefulWidget {
  final ProductType productType;
  final ProductModel model;
  final Map<String, dynamic> dynamicProperties;

  AdditionalPropertiesPage({
    this.productType,
    this.model,
    this.dynamicProperties,
  });

  @override
  _AdditionalPropertiesPageState createState() =>
      _AdditionalPropertiesPageState();
}

class _AdditionalPropertiesPageState extends State<AdditionalPropertiesPage> {
  var _isLoading = false;
  var _key = GlobalKey<ScaffoldState>();
  ProductBloc _productBloc;

  @override
  void initState() {
    try {
      widget.dynamicProperties.remove("BRAND");
      widget.dynamicProperties.remove("PRICE");
    } catch (e) {}
    super.initState();
  }

  void _handleAddNoPackageResponse(AddNoPackageState state) {
    switch (state.apiState) {
      case ApiStatus.LOADING:
        _isLoading = true;
        break;
      case ApiStatus.SUCCESS:
        _isLoading = false;
        AlertsWidget.alertWithOkBtn(
          context: context,
          onOkClick: () {
            Navigator.pop(context);
            Navigator.pop(context);
            Navigator.pop(context);
            Navigator.pop(context);
          },
          text: state.response.message,
        );
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
    return BlocListener<ProductBloc, ProductState>(
      listener: (context, state) {
        if (state is AddNoPackageState) _handleAddNoPackageResponse(state);
      },
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return Scaffold(
            key: _key,
            appBar: AppBar(
              title: Text('Select Category'),
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
              body: _renderList(),
            ),
          );
        },
      ),
    );
  }

  _renderList() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.dynamicProperties.keys.length,
              padding: const EdgeInsets.symmetric(vertical: 20),
              itemBuilder: (context, index) {
                return /*widget.dynamicProperties.keys.elementAt(index) ==
                            "BRAND" ||
                        widget.dynamicProperties.keys.elementAt(index) ==
                            "PRICE"
                    ? Container()
                    : */
                    DynamicElementBuilder(
                  widget.dynamicProperties[
                      widget.dynamicProperties.keys.elementAt(index)],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomButton(
              onTap: () {
                List<Dynamicproperties> _dp = [];
                widget.dynamicProperties.forEach((key, value) {
                  if (value['selectedValues'].length > 0) {
                    _dp.add(Dynamicproperties(
                      propertyname: key,
                      values: List.castFrom(value['selectedValues']),
                    ));
                  }
                });
                ProductModel _model = widget.model;
                _model.dynamicproperties = _dp;
                if (widget.productType == ProductType.noPackage) {
                  _productBloc.add(AddNoPackageEvent(
                      model: _model, userId: UserSession.userId));
                } else if (widget.productType == ProductType.package) {
                  Navigator.push(
                    context,
                    NextPageRoute(
                      PackageListView(
                        productType: widget.productType,
                        model: widget.model,
                      ),
                    ),
                  );
                } else if (widget.productType == ProductType.multiColor) {
                  Navigator.push(
                    context,
                    NextPageRoute(
                      SizeAndColorListView(
                        productType: widget.productType,
                        model: widget.model,
                      ),
                    ),
                  );
                }
              },
              text:
                  widget.productType == ProductType.noPackage ? "Save" : "Next",
              borderColor: ColorConstants.primaryColor,
            ),
          )
        ],
      ),
    );
  }
}

class DynamicElementBuilder extends StatefulWidget {
  final Map<String, dynamic> dynamicProperties;

  DynamicElementBuilder(this.dynamicProperties);

  @override
  _DynamicElementBuilderState createState() => _DynamicElementBuilderState();
}

class _DynamicElementBuilderState extends State<DynamicElementBuilder> {
  var _dropDownController = CustomTextFieldController();
  List<String> _selectedCheckBox = [];

  @override
  void initState() {
    widget.dynamicProperties['selectedValues'] = [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.dynamicProperties['name'] ?? "",
            style: Styles.semiBoldText(size: 16),
          ),
          widget.dynamicProperties['displaytype'] == "MULTI"
              ? _multiSelect()
              : widget.dynamicProperties['displaytype'] == "DROP"
                  ? _dropDown()
                  : Container()
        ],
      ),
    );
  }

  _dropDown() {
    return CustomDropDownList<String>(
      title: "Value",
      controller: _dropDownController,
      loadData: () async => widget.dynamicProperties['values'],
      displayName: (x) => x,
      onSelected: (value, index) {
        widget.dynamicProperties['selectedValues'] = [value];
      },
      validate: Validate.withOption(
        isRequired: true,
      ),
    );
  }

  _multiSelect() {
    List<String> _values = List.castFrom(widget.dynamicProperties['values']);
    return Wrap(
      children: List.generate(
        _values.length,
        (index) => CheckboxListTile(
          value: widget.dynamicProperties['selectedValues']
              .contains(_values[index]),
          activeColor: ColorConstants.primaryColor,
          title: Text(
            _values[index],
            style: Styles.normalText(size: 12),
          ),
          onChanged: (value) {
            setState(() {
              if (widget.dynamicProperties['selectedValues']
                  .contains(_values[index])) {
                widget.dynamicProperties['selectedValues']
                    .remove(_values[index]);
              } else {
                widget.dynamicProperties['selectedValues'].add(_values[index]);
              }
            });
          },
        ),
      ),
    );
  }
}

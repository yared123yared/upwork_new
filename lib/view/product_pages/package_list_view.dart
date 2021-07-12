import 'package:complex/blocs/product_bloc.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/common/widgets/alerts_widget.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/domain/explore/ecom/product/product_data/product_model.dart';
import 'package:complex/view/product_pages/package_detail_form.dart';
import 'package:complex/view/product_pages/select_product_type.dart';
import 'package:complex/utils/next_page_routing.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/utils/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PackageListView extends StatefulWidget {
  final ProductType productType;
  final ProductModel model;

  PackageListView({
    this.productType,
    this.model,
  });

  @override
  State<StatefulWidget> createState() {
    return _PackageListViewState();
  }
}

List<Packagedata> packageList = [];

class _PackageListViewState extends State<PackageListView> {
  ProductBloc _productBloc;
  var _isLoading = false;
  var _key = GlobalKey<ScaffoldState>();

  void _handleAddNoPackageResponse(AddPackageState state) {
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
            Navigator.pop(context);
          },
          text: state.response.message,
        );
        break;
      case ApiStatus.ERROR:
        _isLoading = false;
        Utility.showSnackBar(context: context, message: state.message);
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
        if (state is AddPackageState) _handleAddNoPackageResponse(state);
      },
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
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
              body: Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    _renderAddButton(),
                    _renderForm(),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CustomButton(
                        text: 'SAVE',
                        onTap: () {
                          ProductModel _model = widget.model;
                          _model.packagedata = packageList;
                          _productBloc.add(AddPackageEvent(
                              model: _model, userId: UserSession.userId));
                        },
                        borderColor: ColorConstants.primaryColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _renderAddButton() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: 1,
                      color: ColorConstants.greenColor.withOpacity(0.6))),
              height: 36,
              alignment: Alignment.center,
              child: Text(
                'ADD',
                style: TextStyle(
                    fontSize: 15,
                    color: ColorConstants.greenColor,
                    fontWeight: FontWeight.w700),
              ),
            ),
            onTap: () {
              Navigator.push(context, NextPageRoute(PackageDetailForm()))
                  .then((value) {
                Utility.waitForMili(500).then((value) => setState(() {}));
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _renderForm() {
    return Expanded(
      child: ListView.builder(
        itemCount: packageList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return cardModel(packageList[index]);
        },
      ),
    );
  }

  Widget cardModel(Packagedata packageList) {
    return Container(
      height: 150,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            )
          ]),
      child: Row(
        children: [
          _renderImage(packageList),
          Expanded(child: _renderDescription(packageList))
        ],
      ),
    );
  }

  Widget _renderImage(Packagedata packageList) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomLeft: Radius.circular(10),
      ),
      child: Container(
        width: 100,
        height: double.infinity,
        color: ColorConstants.darkGreyColor.withOpacity(0.1),
        child: Image.network(
          packageList.listimages.first,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _renderDescription(Packagedata packageList) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _renderTextField(
            packageList.title ?? '',
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: _renderTextField(
                      packageList?.price?.toString() ?? '',
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    child: _renderTextField(
                      packageList?.discountedprice?.toString() ?? '',
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderTextField(String text) {
    return TextField(
      readOnly: true,
      decoration:
          InputDecoration(hintText: text, hintStyle: Styles.normalText()),
    );
  }
}

class CardModel {
  String title;
  String price;
  String discountPrice;
  String url;

  CardModel({this.title, this.price, this.discountPrice, this.url});
}

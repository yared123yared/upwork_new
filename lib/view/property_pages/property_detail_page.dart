import 'package:carousel_slider/carousel_controller.dart';
import 'package:complex/blocs/bloc_manager.dart';
import 'package:complex/blocs/product_bloc.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/common/widgets/group_title.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/common/widgets/slider.dart';
import 'package:complex/common/widgets/slider_list.dart';
import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';

import 'package:complex/view/product_pages/share_widget.dart';
import 'package:complex/utils/log_print.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PropertyDetailPage extends StatefulWidget {
  final String docId;

  PropertyDetailPage({this.docId});

  @override
  State<StatefulWidget> createState() {
    return _PropertyDetailPageState();
  }
}

class _PropertyDetailPageState extends State<PropertyDetailPage> {
  CarouselController buttonCarouselController = CarouselController();
  int _sliderSelectedIndex = 0;
  var _productBloc;
  var _key = GlobalKey<ScaffoldState>();
  bool _isLoading = false;
  RealEstateModel _model;

  void _handleProductDetailResponse(GetProductDetailState state) {
    switch (state.apiState) {
      case ApiStatus.LOADING:
        _isLoading = true;
        break;
      case ApiStatus.SUCCESS:
        _isLoading = false;
        if (state.response.data != null) {
          LogPrint(state.response.data['adata']);
          _model = RealEstateModel.fromJson(state.response.data['adata']);
        }
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
    return BlocManager(
      initState: (context) {
        _productBloc.add(GetProductDetailEvent(docId: widget.docId));
      },
      child: BlocListener<ProductBloc, ProductState>(
        listener: (context, state) {
          if (state is GetProductDetailState)
            _handleProductDetailResponse(state);
        },
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return Scaffold(
              key: _key,
              appBar: AppBar(
                title: Text('Product Details'),
                backgroundColor: ColorConstants.greenColor,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                ),
              ),
              body: ScreenWithLoader(
                isLoading: _isLoading,
                body: _model == null
                    ? Container()
                    : SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SliderWidget(
                              buttonCarouselController:
                                  buttonCarouselController,
                              items: _model.imagelist ?? [_model.tileimage],
                              onPageChange: (page) {
                                setState(() {
                                  _sliderSelectedIndex = page;
                                });
                              },
                            ),
                            SliderListWidget(
                              items: _model.imagelist ?? [_model.tileimage],
                              selectedItem: _sliderSelectedIndex,
                              onTap: (page) {
                                buttonCarouselController.jumpToPage(page);
                              },
                            ),
                            _renderDescription(),
                            GroupTitle(
                              text: 'Description',
                            ),
                            _renderMainInfo(),
                            GroupTitle(
                              text: 'Interior Futures',
                            ),
                            _renderInteriror(),
                            GroupTitle(
                              text: 'Amentities',
                            ),
                            _renderAmentics(),
                            GroupTitle(
                              text: 'Property Details',
                            ),
                            _renderPropertyDetails(),
                            GroupTitle(
                              text: 'Personal Details',
                            ),
                            _renderPersonalDetails(),
                            ShareWidget(),
                          ],
                        ),
                      ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _renderDescription() {
    Widget _renderName() {
      return Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          _model.title ?? "",
          style: TextStyle(
              fontSize: 19,
              color: ColorConstants.darkBlackColor,
              fontWeight: FontWeight.w700),
        ),
      );
    }

    Widget _renderDesc() {
      return Container(
        height: 50,
        padding: EdgeInsets.only(right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _model.price?.toString() ?? "",
              style: TextStyle(fontSize: 22, color: ColorConstants.greenColor),
            ),
            /* Text(
                'Rs 4000000',
                style: TextStyle(decoration: TextDecoration.lineThrough),
              )*/
          ],
        ),
      );
    }

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_renderName(), _renderDesc()]);
  }

  Widget _renderTitle(String title) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Text(title,
            style: TextStyle(
                fontSize: 16,
                color: ColorConstants.darkBlackColor,
                fontWeight: FontWeight.w700)));
  }

  Widget _renderInteriror() {
    return Container(
      height: 90 * 3.0,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _renderTitle('Beds & Baths'),
                itemBuilder('Number of Bedrooms: ${_model.numrooms ?? "-"}'),
                itemBuilder('Number of Bethroom: ${_model.numbath ?? "-"}'),
                _emptyRow()
              ],
            );
          }
          if (index == 1) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _renderTitle('Dimensions and Layout'),
                itemBuilder('Living area: ${_model.sqfeetarea?.toString()}'),
              ],
            );
          }
          return Container();
        },
      ),
    );
  }

  Widget _renderAmentics() {
    return Container(
      height: 75 * 4.0,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _renderTitle('Parking & Allotments'),
                itemBuilder(
                    'Parking: ${_model.hasparking ? "Available" : "Not Available"}'),
                itemBuilder(
                    'Green Area: ${_model.hasgreenarea ? "Available" : "Not Available"}'),
                _emptyRow()
              ],
            );
          }
          if (index == 1) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _renderTitle('Services'),
                itemBuilder(
                    'Security: 24 × 7 ${_model.hassecurity ? "Available" : "Not Available"}'),
                itemBuilder(
                    'Water: 24 × 7 ${_model.has24hrwater ? "Available" : "Not Available"}'),
              ],
            );
          }

          return Container();
        },
      ),
    );
  }

  Widget _renderPropertyDetails() {
    return Container(
      height: 75 * 4.0,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _renderTitle('Type'),
                itemBuilder('${_model.propertytype ?? "Property Type: -"}'),
                itemBuilder(
                    'Construction: ${_model.constructionstatus ?? "-"}'),
                _emptyRow()
              ],
            );
          }
          if (index == 1) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _renderTitle('Services'),
                itemBuilder('Security: 24 × 7 ${_model.hassecurity ?? "-"}'),
                itemBuilder('Water: 24 × 7 ${_model.has24hrwater ?? "-"}'),
              ],
            );
          }
          return Container();
        },
      ),
    );
  }

  Widget _renderPersonalDetails() {
    return Container(
      height: 90 * 4.0,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _renderTitle('Address'),
                itemBuilder(
                    "${_model.contactdetails.address.addressline}, ${_model.contactdetails.address.area_sector}, ${_model.contactdetails.address.district}, ${_model.contactdetails.address.state}"),
                _emptyRow()
              ],
            );
          }
          if (index == 1) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _renderTitle('Email'),
                itemBuilder("${_model.contactdetails.email}"),
                _emptyRow()
              ],
            );
          }

          if (index == 2) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _renderTitle('Phone'),
                itemBuilder("${_model.contactdetails.phonenum}"),
              ],
            );
          }
          return Container();
        },
      ),
    );
  }

  Widget _renderMainInfo() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        _model.description ?? "",
        style: TextStyle(fontSize: 15),
      ),
    );
  }

  Widget itemBuilder(String name) {
    Widget _renderDot() {
      return Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
        child: Icon(
          Icons.fiber_manual_record,
          size: 15,
          color: Colors.black.withOpacity(0.6),
        ),
      );
    }

    Widget _renderText() {
      return Text(
        name,
        style: TextStyle(
          fontSize: 15,
          color: ColorConstants.darkBlackColor.withOpacity(0.8),
        ),
      );
    }

    return Row(children: [_renderDot(), _renderText()]);
  }

  Widget _emptyRow() {
    return Container(
        margin: EdgeInsets.only(top: 20),
        height: 1,
        width: MediaQuery.of(context).size.width,
        color: ColorConstants.black);
  }
}

import 'package:carousel_slider/carousel_controller.dart';
import 'package:complex/common/widgets/slider.dart';
import 'package:complex/common/widgets/slider_list.dart';
import 'package:complex/common/widgets/tap_widget.dart';
import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';


import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PackageDetailView extends StatefulWidget {
  final CompleteProduct product;

  PackageDetailView(this.product);

  @override
  State<StatefulWidget> createState() {
    return _PackageDetailViewState();
  }
}

class _PackageDetailViewState extends State<PackageDetailView> {
  CarouselController buttonCarouselController = CarouselController();
  int _sliderSelectedIndex = 0;

  var _selectedPackage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
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
      body: _body(),
    );
  }

  _body() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SliderWidget(
            buttonCarouselController: buttonCarouselController,
            items: widget.product.data.imagelist,
            onPageChange: (page) {
              setState(() {
                _sliderSelectedIndex = page;
              });
            },
          ),
          SliderListWidget(
            items: widget.product.data.imagelist,
            selectedItem: _sliderSelectedIndex,
            onTap: (page) {
              buttonCarouselController.jumpToPage(page);
            },
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              widget.product.data.title ?? "",
              style: TextStyle(
                  fontSize: 19,
                  color: ColorConstants.black,
                  fontWeight: FontWeight.w700),
            ),
          ),
          _renderCATEGORYInfo(),
          _renderMainInfo(),
          _priceAndButton(),
          if (widget.product.data.varinattype == "PACKAGE") _packageProperty(),
          _properties(),
        ],
      ),
    );
  }

  _priceAndButton() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                (widget.product.data.price -
                                widget.product.data.discountedprice ??
                            0)
                        .toString() ??
                    "",
                style: Styles.boldText(
                    color: ColorConstants.primaryColor, size: 20),
              ),
              Text(
                widget.product.data.price.toString() ?? "",
                style: TextStyle(decoration: TextDecoration.lineThrough),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: 50,
            decoration: BoxDecoration(
                color: ColorConstants.primaryColor,
                borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.shopping_bag_outlined,
                  color: ColorConstants.primaryColor,
                ),
                Text(
                  "Add to Bag",
                  style: Styles.boldText(color: Colors.white),
                ),
                Icon(
                  Icons.shopping_bag_outlined,
                  color: ColorConstants.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderCATEGORYInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(20),
            child: Image.asset(
              './assets/group.png',
              height: 18,
              width: 18,
            )),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              widget.product.data.category ?? "",
              style: TextStyle(fontSize: 17),
            ),
          ),
        )
      ],
    );
  }

  Widget _renderMainInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(20),
            child: Image.asset(
              './assets/group.png',
              height: 18,
              width: 18,
            )),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              widget.product.data.description ?? "",
              style: TextStyle(fontSize: 17),
            ),
          ),
        )
      ],
    );
  }

  _packageProperty() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: List.generate(widget.product.data.packagedata.length,
            (index) => _packageChild(widget.product.data.packagedata[index])),
      ),
    );
  }

  _properties() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: List.generate(
            widget.product.data.dynamicproperties.length,
            (index) => _dyanmicPropertyChild(
                widget.product.data.dynamicproperties[index])),
      ),
    );
  }

  _dyanmicPropertyChild(dynaproperty dynamicproperti) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(dynamicproperti.propertyname),
          ),
          Expanded(
            flex: 4,
            child: Text(
              dynamicproperti.values.join(","),
              style: Styles.normalText(size: 16),
            ),
          ),
        ],
      ),
    );
  }

  _packageChild(PackageModel packagedata) {
    return TapWidget(
      onTap: () {
        setState(() {
          _selectedPackage = packagedata.packageid;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: _selectedPackage == packagedata.packageid
                ? ColorConstants.primaryColor
                : Colors.grey,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                (packagedata.unit).toString() ?? "",
                style: Styles.boldText(color: ColorConstants.black, size: 22),
              ),
              Column(
                children: [
                  Text(
                    (packagedata.price - packagedata.discountedprice)
                            .toString() ??
                        "",
                    style: Styles.boldText(
                        color: ColorConstants.primaryColor, size: 20),
                  ),
                  Text(
                    packagedata.price.toString() ?? "",
                    style: TextStyle(decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
              _selectedPackage == packagedata.packageid
                  ? Icon(
                      Icons.radio_button_checked,
                      color: ColorConstants.primaryColor,
                    )
                  : Icon(
                      Icons.radio_button_off,
                      color: Colors.grey,
                    )
            ],
          ),
        ),
      ),
    );
  }
}

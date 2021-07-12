import 'package:carousel_slider/carousel_controller.dart';
import 'package:complex/common/widgets/slider.dart';
import 'package:complex/common/widgets/slider_list.dart';
import 'package:complex/common/widgets/tap_widget.dart';
import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SizeAndColorDetailView extends StatefulWidget {
  final CompleteProduct product;

  SizeAndColorDetailView(this.product);

  @override
  State<StatefulWidget> createState() {
    return _SizeAndColorDetailViewState();
  }
}

class _SizeAndColorDetailViewState extends State<SizeAndColorDetailView> {
  CarouselController buttonCarouselController = CarouselController();
  int _sliderSelectedIndex = 0;
  var _selectedColorPrice;
  var _selectedColorPriceAfterDiscount;

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
          _renderMainInfo(),
          _priceAndButton(),
          _colors(),
          _size(),
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
                _selectedColorPriceAfterDiscount?.toString() ??
                    (widget.product.data.price -
                            widget.product.data.discountedprice)
                        .toString() ??
                    "",
                style: Styles.boldText(
                    color: ColorConstants.primaryColor, size: 20),
              ),
              Text(
                _selectedColorPrice?.toString() ??
                    widget.product.data.price.toString() ??
                    "",
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

  _colors() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Row(
        children: List.generate(
          widget.product.data.sizeandcolordata.length,
          (index) => TapWidget(
            onTap: () {
              setState(() {
                _selectedColorPriceAfterDiscount =
                    (widget.product.data.sizeandcolordata[index].price -
                        widget.product.data.sizeandcolordata[index]
                            .discountedprice);
                _selectedColorPrice =
                    widget.product.data.sizeandcolordata[index].price;
              });
            },
            child: Container(
              width: 50,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: ColorConstants.darkGreyColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                widget.product.data.sizeandcolordata[index].color,
                style: Styles.normalText(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _size() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Size",
            style: Styles.boldText(color: ColorConstants.black, size: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: List.generate(
              widget.product.data.sizeandcolordata.length,
              (index) => Container(
                width: 50,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: ColorConstants.darkGreyColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  widget.product.data.sizeandcolordata[index].size,
                  style: Styles.normalText(),
                ),
              ),
            ),
          )
        ],
      ),
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
}

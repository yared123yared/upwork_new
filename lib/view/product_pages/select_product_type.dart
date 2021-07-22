import 'package:complex/common/widgets/group_title.dart';
import 'package:complex/common/widgets/tap_widget.dart';

import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';
import 'package:complex/view/product_pages/product_properties.dart';
import 'package:complex/utils/next_page_routing.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:flutter/material.dart';

enum ProductType { noPackage, package, multiColor, mySpecial }


class SelectProductType extends StatefulWidget {
  final ContactDetailsModel contactDetail;
  final bool isService;
  final String serviceId;
  final String entitytype;
  final int origintype;
  final ProductModel model;
  SelectProductType(this.contactDetail,
      {this.isService, this.serviceId, this.entitytype,this.origintype,this.model});

  static ProductType fromStringProductType(String ptype)
  {
    if(ptype=="NOPACKAGE")
      return ProductType.noPackage;
    else if(ptype=="PACKAGE")
      return ProductType.package;
    else if(ptype=="SIZEANDCOLOR")
      return ProductType.multiColor;
    else if(ptype=="MYSPECIAL")
      return ProductType.mySpecial;
    else
      return ProductType.noPackage;

  }

  @override
  _SelectProductTypeState createState() => _SelectProductTypeState();
}

class _SelectProductTypeState extends State<SelectProductType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Product'),
        centerTitle: true,
        backgroundColor: ColorConstants.greenColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              GroupTitle(text: "Select Product Type"),
              SizedBox(
                height: 20,
              ),
              _card(
                text: "No Package",
                onTap: () {
                  Navigator.push(
                    context,
                    NextPageRoute(
                      ProductProperties(
                        withUnitPrice: true,
                        productType: ProductType.noPackage,
                        contactDetails: widget.contactDetail,
                        serviceId: widget.serviceId,
                        entitytype: widget.entitytype,
                        isService: widget.isService,
                      ),
                    ),
                  );
                },
              ),
              _card(
                text: "Package",
                onTap: () {
                  Navigator.push(
                    context,
                    NextPageRoute(
                      ProductProperties(
                        withUnitPrice: false,
                        productType: ProductType.package,
                        contactDetails: widget.contactDetail,
                        serviceId: widget.serviceId,
                        entitytype: widget.entitytype,
                        isService: widget.isService,
                      ),
                    ),
                  );
                },
              ),
              _card(
                text: "Multicolor - Multisize",
                onTap: () {
                  Navigator.push(
                    context,
                    NextPageRoute(
                      ProductProperties(
                        withUnitPrice: false,
                        productType: ProductType.multiColor,
                        contactDetails: widget.contactDetail,
                        serviceId: widget.serviceId,
                        entitytype: widget.entitytype,
                        isService: widget.isService,
                      ),
                    ),
                  );
                },
              ),
              _card(
                text: "My special",
                onTap: () {
                  Navigator.push(
                    context,
                    NextPageRoute(
                      ProductProperties(
                        withUnitPrice: false,
                        productType: ProductType.mySpecial,
                        contactDetails: widget.contactDetail,
                        serviceId: widget.serviceId,
                        entitytype: widget.entitytype,
                        isService: widget.isService,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  _card({String text, Function() onTap}) {
    return TapWidget(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width / 3,
        decoration: BoxDecoration(
          color: ColorConstants.primaryColor,
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: Styles.semiBoldText(size: 16, color: Colors.white),
        ),
      ),
    );
  }
}

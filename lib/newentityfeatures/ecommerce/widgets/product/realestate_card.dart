import 'package:complex/newentityfeatures/ecommerce/models/ExplorePageRelatedModels.dart';
import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// RealEstateCard
class RealEstateCard extends StatelessWidget {
  final LimitedRealEstateData realEstateModel;
  const RealEstateCard({Key key, this.realEstateModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => LimitedData.toDetailsPage(data: realEstateModel),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xffEEEEEE),
          boxShadow: [
            BoxShadow(
              color: Color(0x22000000),
              offset: Offset(0, 3),
              blurRadius: 8,
            ),
          ],
        ),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).primaryColor,
                ),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width / 2.25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            realEstateModel.tileimage,
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, bottom: 4, top: 4),
                      child: Row(
                        children: [
                          Text(
                            realEstateModel.propertytype.toUpperCase(),
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '${realEstateModel.price} USD/',
                          style: TextStyle(
                            color: Color(0xbb000000),
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Month',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0x99000000),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '${realEstateModel.addressarea.addressinfo}, ${realEstateModel.addressarea.village}, ${realEstateModel.addressarea.state}, ${realEstateModel.addressarea.country}',
                      style: TextStyle(
                        color: Color(0xbb000000),
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          MdiIcons.bedKingOutline,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(width: 4),
                        Text(
                          '${realEstateModel.numbedroom}',
                          style: TextStyle(
                            color: Color(0xbb000000),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        ImageIcon(
                          AssetImage('assets/icons/bathroom.png'),
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(width: 4),
                        Text(
                          '${realEstateModel.numbathroom}',
                          style: TextStyle(
                            color: Color(0xbb000000),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          MdiIcons.fullscreen,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(width: 4),
                        Text(
                          realEstateModel.sqrfootage.toString(),
                          style: TextStyle(
                            color: Color(0xbb000000),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          MdiIcons.homeVariantOutline,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(width: 4),
                        Text(
                          '${realEstateModel.floorNumber ?? 0}',
                          style: TextStyle(
                            color: Color(0xbb000000),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

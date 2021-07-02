import 'package:flutter/material.dart';
import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';

class AdContainer extends StatelessWidget {
  final ExplorePageAd explorePageAd;

  const AdContainer({
    Key key,
    @required this.explorePageAd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(explorePageAd.imagepath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

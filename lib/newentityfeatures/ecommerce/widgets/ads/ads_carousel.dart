import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/newentityfeatures/ecommerce/bloc/ads/ads_bloc.dart';
import './ad_container.dart';
import './../../bloc/ads/ads_bloc.dart';
import './../../models/states/ads_state.dart';

class AdsCarousel extends StatefulWidget {
  @override
  _AdsCarouselState createState() => _AdsCarouselState();
}

class _AdsCarouselState extends State<AdsCarousel> {
  int _current = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Get.context.read<AdsBloc>().add(AdsEvent.Fetch);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width / 2.5,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).primaryColor,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: BlocBuilder<AdsBloc, AdsState>(
        builder: (context, state) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: state.loading
                ? Shimmer.fromColors(
                    baseColor: Colors.grey[300],
                    highlightColor: Colors.grey[100],
                    child: Container(
                      color: Colors.white,
                    ),
                  )
                : Stack(
                    children: [
                      PageView.builder(
                        onPageChanged: (index) =>
                            setState(() => _current = index),
                        itemBuilder: (context, index) {
                          if (state.explorePageAds.length == 0)
                            return Container();

                          final ad = state.explorePageAds[
                              index % state.explorePageAds.length];
                          return AdContainer(
                            key: Key(ad?.lm?.serviceID ?? ad?.lpd?.productid),
                            explorePageAd: ad,
                          );
                        },
                        allowImplicitScrolling: true,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List<Widget>.generate(
                            state.explorePageAds.length,
                            (index) => Container(
                              width: 8,
                              height: 8,
                              margin: EdgeInsets.symmetric(
                                horizontal: 4,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: _current % state.explorePageAds.length ==
                                        index
                                    ? Theme.of(context).primaryColor
                                    : Colors.white,
                                border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 1,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          );
        },
      ),
    );
  }
}

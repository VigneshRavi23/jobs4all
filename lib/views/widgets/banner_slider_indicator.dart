import 'package:flutter/cupertino.dart';
import 'package:job4all/models/appbanner.dart';
import 'slider_indicator.dart';

Widget bannerSliderIndicator(List<AppBanner> appBannerList, int activeBanner) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    alignment: Alignment.bottomCenter,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            appBannerList.length,
            (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: SliderIndicator(
                    isActive: activeBanner == index ? true : false,
                  ),
                ))
      ],
    ),
  );
}

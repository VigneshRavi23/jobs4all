import 'package:flutter/cupertino.dart';

Widget bannerSliderCustom(String imageUrl) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover)),
  );
}

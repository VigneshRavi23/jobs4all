import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:job4all/models/jobList.dart';
import 'package:job4all/models/popularList.dart';
import 'package:job4all/utils/constants.dart';

import 'dart:math' as math;

import '../models/appbanner.dart';
import '../models/categoryList.dart';
import 'widgets/banner_slider_custom.dart';
import 'widgets/banner_slider_indicator.dart';
import 'widgets/category_card.dart';
import 'widgets/custom_appbar.dart';
import 'widgets/job_card_widget.dart';
import 'widgets/popular_bidder_widget.dart';
import 'widgets/slider_indicator.dart';
import 'widgets/title_widget.dart';

class HomeScreen extends StatefulWidget {
  final String page;
  const HomeScreen({super.key, required this.page});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeBanner = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Constants constants = Constants();

    return Scaffold(
      backgroundColor: constants.appBackground,
      appBar: customAppBar(),
      body: Container(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                height: 180,
                width: width,
                child: Stack(
                  children: [
                    Container(
                      height: 180,
                      child: PageView.builder(
                          onPageChanged: (index) {
                            setState(() {
                              activeBanner = index;
                            });
                          },
                          itemCount: appBannerList.length,
                          itemBuilder: (context, index) {
                            return bannerSliderCustom(appBannerList[index].url);
                          }),
                    ),
                    bannerSliderIndicator(appBannerList, activeBanner),
                  ],
                ),
              ),
              if (widget.page == "Poster") ...[
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: titleWidget("All Categories", false),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 4,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    shrinkWrap: true,
                    children: List.generate(
                      categoryList.length,
                      (index) {
                        return categoryCard(categoryList[index]);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: titleWidget("Popular Bidder", false),
                ),
                Container(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: popularList.length,
                      itemBuilder: ((context, index) {
                        Color random = Color(
                                (math.Random().nextDouble() * 0xFFFFFF).toInt())
                            .withOpacity(1.0);
                        return popularBidderCard(popularList[index], random);
                      })),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: titleWidget("Recent Jobs", false),
                ),
                Container(
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: posterJobList.length,
                      itemBuilder: ((context, index) {
                        return JobCard(posterJobList[index]);
                      })),
                ),
              ],
              if (widget.page == "Bidder") ...[
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: titleWidget("Jobs match with you", true),
                ),
                Container(
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: bidderJobList.length,
                      itemBuilder: ((context, index) {
                        return JobCard(bidderJobList[index]);
                      })),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job4all/models/jobList.dart';
import 'package:job4all/utils/constants.dart';

import 'icon_row_widget.dart';

Widget JobCard(Jobs job) {
  Constants constants = Constants();

  return Container(
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(10),
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundImage: NetworkImage(job.imageUrl),
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 150,
                            child: Text(
                              job.title,
                              style: const TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 120,
                            child: Text(
                              overflow: TextOverflow.ellipsis,
                              job.description,
                              style: const TextStyle(fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      if (job.jobType == "Bidder")
                        SizedBox(
                          height: 25,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.symmetric(horizontal: 5)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  constants.buttonColorRed),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              )),
                            ),
                            child: const Text(
                              "Place Bid",
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      if (job.jobType == "Poster")
                        SizedBox(
                          height: 25,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.symmetric(horizontal: 5)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  constants.appPrimaryColor),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              )),
                            ),
                            child: const Text(
                              "Completed",
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if (job.jobType == "Bidder") ...[
                      iconRow("assets/icons/hammer.png", "${job.bids} Bids"),
                      iconRow("assets/icons/eye.png", "${job.views} Views"),
                      iconRow("assets/icons/heart.png",
                          "${job.favorites} favorites"),
                    ],
                    if (job.jobType == "Poster") ...[
                      iconRow("assets/icons/hammer.png", "${job.bids} Bids"),
                      iconRow("assets/icons/clock.png", "${job.hours} Hours"),
                      iconRow("assets/icons/filter.png", "${job.price}"),
                    ],
                  ],
                )
              ],
            ),
          )
        ]),
  );
}

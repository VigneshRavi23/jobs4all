import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job4all/utils/constants.dart';

Widget titleWidget(String title, bool viewall) {
  Constants constants = Constants();

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
      ),
      if (viewall)
        SizedBox(
          height: 30,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.symmetric(horizontal: 10)),
              backgroundColor:
                  MaterialStateProperty.all<Color>(constants.appPrimaryColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              )),
            ),
            child: const Text("View all Jobs"),
          ),
        )
    ],
  );
}

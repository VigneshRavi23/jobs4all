import 'package:flutter/material.dart';

AppBar customAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    actions: const [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Image(
          image: AssetImage("assets/icons/notification_icon.png"),
          width: 20,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Image(
          image: AssetImage("assets/icons/menu_icon.png"),
          width: 20,
        ),
      )
    ],
  );
}

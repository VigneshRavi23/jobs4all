import 'package:flutter/cupertino.dart';

Widget iconRow(String image, String data) {
  return Row(
    children: [
      Image(image: AssetImage(image)),
      const SizedBox(
        width: 5,
      ),
      Text(
        data,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
      )
    ],
  );
}

import 'package:flutter/cupertino.dart';
import 'package:job4all/models/categoryList.dart';

Widget categoryCard(Category cat) {
  return Container(
    height: 200,
    child: Column(
      children: [
        Container(
          height: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(cat.imageUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          cat.name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
        )
      ],
    ),
  );
}

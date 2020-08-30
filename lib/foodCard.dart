import 'package:flutter/material.dart';

Widget foodCard(image, type, count) {
  return AspectRatio(
    aspectRatio: 1.1 / 1.2,
    child: Column(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(image),
              ),
            ),
          ),
        ),
        SizedBox(height: 3.0),
        Row(children: [
          RichText(
            text: TextSpan(
              //style
              children: [
                TextSpan(
                    text: '$type',
                    style: TextStyle(color: Colors.grey, fontSize: 12.0)),
                TextSpan(text: ' - ', style: TextStyle(color: Colors.grey)),
                TextSpan(
                    text: '$count item',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0)),
              ],
            ),
          ),
        ]),
        SizedBox(height: 10.0),
      ],
    ),
  );
}

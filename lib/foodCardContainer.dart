import 'package:flutter/material.dart';
import './foodCard.dart';

Container foodCardContainer() {
  return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              foodCard('https://picsum.photos/535/354', 'sweet', 12),
              foodCard('https://picsum.photos/536/354', 'beverages', 41),
              foodCard('https://picsum.photos/537/354', 'salty', 5),
              foodCard('https://picsum.photos/534/354', 'sweet', 15),
              foodCard('https://picsum.photos/534/355', 'beverages', 10),
              foodCard('https://picsum.photos/534/356', 'salty', 9)
            ],
          ),
        ),
      ));
}

import 'package:flutter/material.dart';

AppBar appBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      onPressed: () {},
      icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
    ),
    title: Text(''),
    centerTitle: false,
    actions: [
      Padding(
        padding: EdgeInsets.all(10.0),
        child: IconButton(
            icon: Icon(
              Icons.drag_handle,
              color: Colors.black,
            ),
            onPressed: () {}),
      ),
    ],
  );
}

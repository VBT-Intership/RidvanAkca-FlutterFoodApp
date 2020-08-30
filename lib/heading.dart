import 'package:flutter/material.dart';

Container heading() {
  return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'What do you want \nto eat today?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[50],
                        offset: new Offset(0.0, 0.0),
                        blurRadius: 5.0,
                        spreadRadius: 3.0)
                  ],
                ),
                child: Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.black,
                )),
          ),
        ],
      ));
}

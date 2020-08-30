import 'package:flutter/material.dart';
import './food.dart';

Expanded bottomListViewBuilder() {
  return Expanded(
      child: ListView.builder(
    itemCount: foodList.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: ListTile(
            title: Text(foodList[index].title),
            subtitle: Text(foodList[index].subtitle),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                image: NetworkImage(foodList[index].image),
              ),
            ),
            trailing: SizedBox(
              width: 50,
              child: Text(
                foodList[index].price,
                style: TextStyle(fontSize: 10.0),
              ),
            ),
          ),
        ),
      );
    },
  ));
}

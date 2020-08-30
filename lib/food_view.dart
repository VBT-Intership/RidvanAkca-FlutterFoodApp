import 'package:flutter/material.dart';
import './bottomListView.dart';
import './foodCardContainer.dart';
import './appBar.dart';
import './secondHeading.dart';
import './heading.dart';

class FoodView extends StatefulWidget {
  @override
  _FoodViewState createState() => _FoodViewState();
}

class _FoodViewState extends State<FoodView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          heading(),
          foodCardContainer(),
          SizedBox(
            height: 10,
          ),
          secondHeading(),
          bottomListViewBuilder(),
        ],
      ),
    );
  }
}

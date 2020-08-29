import 'package:flutter/material.dart';
import './food.dart';

Widget foodCard(image) {
  return AspectRatio(
    aspectRatio: 1.1 / 1.2,
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
  );
}

class FoodView extends StatefulWidget {
  @override
  _FoodViewState createState() => _FoodViewState();
}

class _FoodViewState extends State<FoodView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'What do you want \nto eat today?',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 30.0),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  foodCard('https://picsum.photos/535/354'),
                  foodCard('https://picsum.photos/536/354'),
                  foodCard('https://picsum.photos/537/354'),
                  foodCard('https://picsum.photos/534/354'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('PopularTitle', style: Theme.of(context).textTheme.headline6),
          SizedBox(
            height: 15,
          ),
          Expanded(
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
          )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.accessibility),
          title: Text('data'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.accessibility),
          title: Text('data'),
        )
      ]),
    );
  }
}

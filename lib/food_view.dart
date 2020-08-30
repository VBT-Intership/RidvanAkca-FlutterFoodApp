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
      ),
      body: Column(
        children: [
          Container(
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
              )),
          Container(
              color: Colors.white,
              child: Padding(
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
                      foodCard('https://picsum.photos/534/355'),
                      foodCard('https://picsum.photos/534/356')
                    ],
                  ),
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Icon(
                                Icons.favorite,
                                size: 20,
                                color: Colors.white,
                              )),
                          SizedBox(width: 10.0),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Popular',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25.0,
                                ),
                              ),
                              Text(
                                'Monggo, entekno duwekmu!',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 30,
                    ),
                  ],
                ),
              )),
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
      //   bottomNavigationBar: BottomNavigationBar(items: []),
    );
  }
}

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
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Expanded widget ile sarabilirsin.
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Icon(
                                Icons.favorite,
                                size: 30,
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
                      size: 40,
                    ),
                  ],
                ),
              )),
          SizedBox(
              //   height: 20
              ),
          //expanded burdaydı. container burdaydı.
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

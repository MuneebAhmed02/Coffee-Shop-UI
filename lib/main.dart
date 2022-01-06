// import 'package:coffeeorder/details_page.dart';
// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, duplicate_ignore

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 67,
          centerTitle: true,
          title: Text('Coffe Shop', style: TextStyle(fontSize: 25)),
          backgroundColor: Color(0xFF473D3A),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 26,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 26,
                )),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.only(left: 30.0),
          children: [
            const SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Welcome, Ali',
                    style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF473D3A))),
                Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/model.jpg'),
                              fit: BoxFit.cover)),
                    ))
              ],
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(right: 45.0),
              child: Container(
                child: const Text(
                  'Let\'s select the best taste for your next coffee break!',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFFB0AAA7)),
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            Divider(
              // height: 2,
              // indent: 2,
              thickness: 3,
              endIndent: 2,
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Taste of the week',
                  style: TextStyle(fontSize: 24.0, color: Color(0xFF473D3A)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Text(
                    'See all',
                    style: TextStyle(fontSize: 17.0, color: Color(0xFFCEC7C4)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            // ignore: sized_box_for_whitespace
            Container(
                height: 410.0,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  coffeeList(
                      'assets/images/starbucks.png',
                      'Cappuccino',
                      'Coffeeshop',
                      'This espresso-based drink is similar to a latte, but the frothy top layer is thicker.',
                      '\$3.99',
                      false),
                  coffeeList(
                      'assets/images/starbucks.png',
                      'Americano',
                      'BrownHouse',
                      'Order this drink and you\'ll get a shot of espresso diluted with hot water.',
                      '\$3.99',
                      false),
                  coffeeList(
                      'assets/images/starbucks.png',
                      'Caffe Misto',
                      'Coffeeshop',
                      'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                      '\$4.99',
                      false),
                  coffeeList(
                      'assets/images/starbucks.png',
                      'Caffe Latte',
                      'BrownHouse',
                      'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                      '\$3.99',
                      false),
                ])),
            SizedBox(height: 15.0),
            Divider(
              // height: 2,
              // indent: 2,
              thickness: 3,
              endIndent: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Explore nearby',
                  style: TextStyle(fontSize: 23.0, color: Color(0xFF473D3A)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Text(
                    'See All',
                    style: TextStyle(fontSize: 17.0, color: Color(0xFFCEC7C4)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Container(
                height: 125.0,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  buildImage('assets/images/coffee.jpg'),
                  buildImage('assets/images/coffee2.jpg'),
                  buildImage('assets/images/coffee3.jpg'),
                  buildImage('assets/images/coffee4.jpg'),
                  buildImage('assets/images/coffee5.jpg')
                ])),
            SizedBox(height: 20.0)
          ],
        ));
  }

  buildImage(String img) {
    return Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Container(
            height: 100.0,
            width: 175.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    image: AssetImage(img), fit: BoxFit.cover))));
  }

  coffeeList(String imgPath, String coffeeName, String shopName,
      String description, String price, bool favorite) {
    return Padding(
        padding: EdgeInsets.only(left: 3.0, right: 15.0),
        child: Container(
            height: 300.0,
            width: 225.0,
            child: Column(
              children: [
                Stack(children: [
                  Container(height: 335.0),
                  Positioned(
                      top: 75.0,
                      child: Container(
                          padding: EdgeInsets.only(left: 10.0, right: 20.0),
                          height: 260.0,
                          width: 225.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Color(0xFF473D3A)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 70.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    shopName + '\'s',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    coffeeName,
                                    style: TextStyle(
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    description,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        // fontWeight: FontWeight.w300,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        price,
                                        style: TextStyle(
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            color: Colors.white),
                                        child: Center(
                                            child: Icon(Icons.favorite,
                                                color: favorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                                size: 15.0)))
                                  ],
                                )
                              ]))),
                  Positioned(
                      left: 60.0,
                      top: 25.0,
                      child: Container(
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain))))
                ]),
                SizedBox(height: 20.0),
                InkWell(
                    onTap: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //   builder: (context) => DetailsPage()
                      // ));
                    },
                    child: Container(
                        height: 50.0,
                        width: 225.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Color(0xFF13A6C3)),
                        child: Center(
                            child: Text('Order Now',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)))))
              ],
            )));
  }
}

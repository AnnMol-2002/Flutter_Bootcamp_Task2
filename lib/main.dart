import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:house_price/page2.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({
    super.key,
  });

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ).copyWith(textTheme: GoogleFonts.poppinsTextTheme()),
        home: Scaffold(
            floatingActionButton: Container(
              width: 150,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 27, 21, 86),
              ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(Icons.pin_drop, color: Colors.white),
                Text("Map View", style: TextStyle(color: Colors.white))
              ]),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            body: Builder(
              builder: (context) {
                return SafeArea(
                    child: Container(
                  padding:
                      EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 0),
                  child: ListView(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 211, 211, 211)),
                                borderRadius: BorderRadius.circular(15)),
                            child: Icon(Icons.menu),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 211, 211, 211)),
                                borderRadius: BorderRadius.circular(15)),
                            child: Icon(Icons.settings),
                          ),
                        ]),
                    SizedBox(height: 30),
                    Text("City", style: TextStyle(fontSize: 20)),
                    Text("San Francisco",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    Divider(),
                    SizedBox(
                      height: 45,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 40),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 198, 211, 221)),
                            child: Center(
                                child: Text("< \$220.00",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400))),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 40),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 198, 211, 221)),
                            child: Center(
                                child: Text("For Sale",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400))),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 40),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 198, 211, 221)),
                            child: Center(
                                child: Text("3-4 beds",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400))),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 40),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 198, 211, 221)),
                            child: Center(
                                child: Text(">1.0 sq.ft",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400))),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Page2("House 1")));
                      },
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage('lib/images/pic1.jpg'),
                            ),
                          ),
                          Positioned(
                            right: 10,
                            top: 10,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Icon(Icons.favorite_border)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Text("\$200.000",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Jenison, MI 121323, SF",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("4 bedrooms / 2 bathrooms / 1.46 sq.ft",
                        style: TextStyle(fontSize: 18)),
                    SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: AssetImage('lib/images/pic2.jpg'),
                          ),
                        ),
                        Positioned(
                          right: 10,
                          top: 10,
                          child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Icon(Icons.favorite_border)),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Text("\$140.000",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 20,
                        ),
                        Text("351 Rockwood Dr, SF",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("2 bedrooms / 2 bathrooms / 1.36 sq.ft",
                        style: TextStyle(fontSize: 18)),
                    SizedBox(
                      height: 20,
                    ),
                  ]),
                ));
              },
            )));
  }
}

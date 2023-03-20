import 'package:flutter/material.dart';
import 'package:house_price/main.dart';

class Page2 extends StatefulWidget {
  String name;
  Page2(this.name, {super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
          width: 150,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 27, 21, 86),
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.mail, color: Colors.white),
            SizedBox(
              width: 10,
            ),
            Text("Message", style: TextStyle(color: Colors.white))
          ]),
        ),
        Container(
          width: 150,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 27, 21, 86),
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.call, color: Colors.white),
            SizedBox(
              width: 10,
            ),
            Text("Message", style: TextStyle(color: Colors.white))
          ]),
        ),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              GestureDetector(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0),
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
                              border: Border.all(
                                color: Colors.white,
                                width: 0.5,
                              ),
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(15)),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          )),
                    ),
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Container(
                        height: 50,
                        width: 50,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 0.5,
                            ),
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(15)),
                        child: IconButton(
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => const MyWidget())),
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Text("\$200.000",
                          style: TextStyle(
                              fontSize: 33, fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Jenison, MI 121323, SF",
                          style: TextStyle(fontSize: 18)),
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Text("House information",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 100,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Container(
                      height: 70,
                      width: 100,
                      margin: EdgeInsets.only(right: 30),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 198, 211, 221),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Center(
                          child: Text("1.416",
                              style: TextStyle(
                                  fontSize: 33, fontWeight: FontWeight.bold))),
                    ),
                    Container(
                      height: 70,
                      width: 100,
                      margin: EdgeInsets.only(right: 30),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 198, 211, 221),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Center(
                          child: Text("4",
                              style: TextStyle(
                                  fontSize: 33, fontWeight: FontWeight.bold))),
                    ),
                    Container(
                      height: 70,
                      width: 100,
                      margin: EdgeInsets.only(right: 30),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 198, 211, 221),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Center(
                          child: Text("2",
                              style: TextStyle(
                                  fontSize: 33, fontWeight: FontWeight.bold))),
                    ),
                    Container(
                      height: 70,
                      width: 100,
                      margin: EdgeInsets.only(right: 30),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 198, 211, 221),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Center(
                          child: Text("1",
                              style: TextStyle(
                                  fontSize: 33, fontWeight: FontWeight.bold))),
                    ),
                  ])),
              SizedBox(
                  height: 50,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Center(
                          child: Text("Square Foot",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600))),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Center(
                          child: Text("Bedrooms",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600))),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Center(
                          child: Text("Bathrooms",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600))),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Center(
                          child: Text("Garage",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600))),
                    ),
                  ])),
              Text(
                  "Flawless 2 story on a family friendly cul-de-sac in the heart of Blue Valley! Walk into a room plan flooded w daylight, formal dining, private room, four bedrooms, two bathrooms,2 garage. ")
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:html';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Wallet',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xffb614194),
        leading: IconButton(
            onPressed: () {
              //passsing this to route
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back,
                color: Color.fromARGB(255, 255, 255, 255))),
      ),
      body: Center(
        child: SizedBox(
          width: 1000,
          height: 1000,
          child: Center(
              child: Stack(
                  fit: StackFit.expand,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  children: <Widget>[
                Container(
                  width: 900,
                  height: 900,
                  color: Color.fromARGB(255, 255, 255, 255),
                ), //Container
                Positioned(
                  height: 300,
                  width: 1000,
                  child: Container(
                    color: Color(0xffb614194),
                  ),
                ), //Container
                Positioned(
                  top: 10,
                  height: 40,
                  width: 400,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: IconButton(
                          icon: const Icon(Icons.home_filled),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon: const Icon(Icons.wallet_giftcard),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon: const Icon(Icons.account_balance_wallet),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon: const Icon(Icons.currency_exchange),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    right: 200,
                    top: 60,
                    height: 200,
                    width: 400,
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Container(
                          child: Text("WALLET CASH",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              )),
                        ),
                        SizedBox(height: 13),
                        Container(
                          child: Text("1250",
                              style: TextStyle(
                                color: Color.fromARGB(250, 244, 199, 103),
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        SizedBox(height: 13),
                        Container(
                          child: Text("WALLET POINTS 0",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              )),
                        )
                      ],
                    )),
                Positioned(
                    left: 350,
                    top: 40,
                    height: 200,
                    width: 500,
                    child: Row(
                      children: [
                        SizedBox(height: 20),
                        Container(
                          child: IconButton(
                            icon: Icon(Icons.redo),
                            color: Colors.white,
                            iconSize: 30,
                            onPressed: () => {},
                          ),
                        ),
                        SizedBox(height: 13),
                        Container(
                          child: OutlinedButton(
                            child: Text('Top Up',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                )),
                            onPressed: () => {},
                          ),
                          color: Colors.blue,
                        ),
                      ],
                    )),
                Positioned(
                    top: 260,
                    left: 80,
                    height: 80,
                    child: Row(children: [
                      Container(
                        height: 100,
                        width: 130,

                        color: Colors.white,
                        // child: IconButton(
                        //   icon: Icon(Icons.transfer_within_a_station),
                        //   color: Color(0xffb614194),
                        //   onPressed: ()=>{},
                        // ),
                        child: Material(
                          // button color // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.arrow_circle_right_outlined), // icon
                              Text("Transfer"), // text
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 130,
                        color: Colors.white,
                        child: Material(
                          // button color // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.qr_code_scanner), // icon
                              Text("Scan"), // text
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 130,
                        color: Colors.white,
                        child: Material(
                          // button color // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.person_outline_rounded), // icon
                              Text("Transfer"), // text
                            ],
                          ),
                        ),
                      ),
                    ])),
                Positioned(
                    height: 200,
                    width: 1000,
                    bottom: 120,
                    left: 10,
                    child: Column(
                      children: [
                        Row(
                          children: <Widget>[
                            Container(
                              color: Color(0xffb614194),
                              height: 100,
                              width: 5,
                            ),
                            Container(
                                child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 90,
                                      height: 100,
                                      child: IconButton(
                                        icon: const Icon(Icons.home_filled),
                                        color: Color(0xffb614194),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Container(
                                      width: 370,
                                      height: 100,
                                      child: Text('Home'),
                                      alignment: Alignment.centerLeft,
                                      margin: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 2.0,
                                            spreadRadius: 0.0,
                                            offset: Offset(2.0,
                                                2.0), // shadow direction: bottom right
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ))
                          ],
                        ),
                      ],
                    )),
                Positioned(
                    height: 200,
                    width: 1000,
                    bottom: 10,
                    left: 10,
                    child: Column(
                      children: [
                        Row(
                          children: <Widget>[
                            Container(
                              color: Color(0xffb614194),
                              height: 100,
                              width: 5,
                            ),
                            Container(
                                child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 90,
                                      height: 100,
                                      child: IconButton(
                                        icon: const Icon(Icons.bus_alert),
                                        color: Color(0xffb614194),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Container(
                                      width: 370,
                                      height: 100,
                                      child: Text('Transport'),
                                      alignment: Alignment.centerLeft,
                                      margin: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black,
                                            blurRadius: 2.0,
                                            spreadRadius: 0.0,
                                            offset: Offset(2.0,
                                                2.0), // shadow direction: bottom right
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ))
                          ],
                        ),
                      ],
                    )),
                Positioned(
                    height: 200,
                    width: 1000,
                    bottom: -100,
                    left: 10,
                    child: Column(
                      children: [
                        Row(
                          children: <Widget>[
                            Container(
                              color: Color(0xffb614194),
                              height: 100,
                              width: 5,
                            ),
                            Container(
                                child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 90,
                                      height: 100,
                                      child: IconButton(
                                        icon: const Icon(Icons.shopping_cart),
                                        color: Color(0xffb614194),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(8),
                                      width: 370,
                                      height: 100,
                                      child: Text('Shopping'),
                                      alignment: Alignment.centerLeft,
                                    ),
                                  ],
                                )
                              ],
                            ))
                          ],
                        ),
                      ],
                    ))
              ])),
        ),
      ),
    );
  }
}

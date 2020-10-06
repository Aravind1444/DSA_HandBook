import 'package:adharva/csoon.dart';
import 'package:adharva/ds.dart';
import 'package:adharva/algo.dart';
import 'package:adharva/interview.dart';
import 'package:adharva/cp.dart';
import 'package:adharva/more.dart';
import 'package:adharva/system.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'more.dart';
import 'developers.dart';

const String testDevice = "2EA23F8790DC1DFD5C2214BBF7AC49A5";

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    keywords: <String>['Game', 'Mario'],
    nonPersonalizedAds: true,
  );

  InterstitialAd _interstitialAd;

  InterstitialAd createInterstitialAd() {
    return InterstitialAd(
        adUnitId: 'ca-app-pub-9588197956257552/3577109432',
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
          print("InterstitialAd $event");
        });
  }

  void dispose() {
    _interstitialAd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "DS & Algo HB",
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Orbitron',
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 5, 10),
                  child: Text(
                    'Data Structures and Algorithms Hand Book',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Orbitron',
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
              Container(
                child: ListTile(
                  title: Text(
                    'About',
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => About(),
                      ),
                    );
                    //createInterstitialAd()
                    //..load()
                    //..show();
                  },
                ),
              ),
              Container(
                color: Colors.white,
                child: ListTile(
                  title: Text(
                    'Data Structures',
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DS(),
                      ),
                    );
                    //createInterstitialAd()
                    // ..load()
                    // ..show();
                  },
                ),
              ),
              Container(
                child: ListTile(
                  title: Text(
                    'Algorithms',
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Algo(),
                      ),
                    );
                    //createInterstitialAd()
                    // ..load()
                    // ..show();
                  },
                ),
              ),
              Container(
                color: Colors.white,
                child: ListTile(
                  title: Text(
                    'Interview Prep',
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Csoon(),
                      ),
                    );
                    // createInterstitialAd()
                    // ..load()
                    //  ..show();
                  },
                ),
              ),
              Container(
                child: ListTile(
                  title: Text(
                    'System Design',
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Systems(),
                      ),
                    );
                    // createInterstitialAd()
                    //  ..load()
                    //  ..show();
                  },
                ),
              ),
              Container(
                color: Colors.white,
                child: ListTile(
                  title: Text(
                    'Developers',
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Csoon(),
                      ),
                    );
                    // createInterstitialAd()
                    // ..load()
                    // ..show();
                  },
                ),
              ),
              Container(
                child: ListTile(
                  title: Text(
                    'More',
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => More(),
                      ),
                    );
                    //createInterstitialAd()
                    // ..load()
                    //..show();
                  },
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25)),
                child: Container(
                  color: Colors.black,
                  child: Card(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 40),
                    elevation: 5,
                    child: SizedBox(
                      height:
                          MediaQuery.of(context).size.height > 800 ? 400 : 210,
                      width: double.infinity,
                      child: Carousel(
                        images: [
                          AssetImage('images/dsalgo.png'),
                          AssetImage('images/ip.png'),
                          AssetImage('images/ds.png'),
                          AssetImage('images/algor.png'),
                        ],
                        showIndicator: false,
                        indicatorBgPadding: 3,
                        borderRadius: true,
                        radius: Radius.circular(4),
                        dotSize: 5,
                        dotSpacing: 20,
                        dotColor: Colors.white70,
                        dotIncreasedColor: Colors.white.withOpacity(.8),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                    child: Text(
                      'About',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'Orbitron',
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Text(
                      "Data Structures and Algorithms, one of the highly required skillsey for a software engineer is not difficult to develop. We're here to help you gain the necessary skills to be a better software engineeri as well as to crack the amazing interviews at companies like Facebook, Google, Microsoft, Amazon, etc.",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 16,
                      ),
                    )),
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Text(
                      'How to Use?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'Orbitron',
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Text(
                      "This app will help you by bringing to you almost all of the content required for you to excel, that is everything under the single umbrella. \n\nYou can find content on various data structures, algorithms, etc. Along with that, we will also bring to you amaizng interview tip from experts and much more cool stuffs ",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 16,
                      ),
                    )),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: Container(
                  color: Colors.white,
                  child: Card(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
                    elevation: 10,
                    child: Image(
                      image: AssetImage('images/ip.png'),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Text(
                      'Why DSA?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'Orbitron',
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Text(
                      "This app will help you by bringing to you almost all of the content required for you to excel, that is everything under the single umbrella. ",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 16,
                      ),
                    )),
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'Orbitron',
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Text(
                      "Get started with DSA now itself. The contents can be accessed from the drawer on top left too.",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 16,
                      ),
                    )),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: ClipRRect(
                            child: GestureDetector(
                              child: Container(
                                width: 165,
                                child: Text(
                                  "Data Structures",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                color: Colors.black,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DS(),
                                  ),
                                );
                                // createInterstitialAd()
                                //   ..load()
                                //  ..show();
                              },
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
                          child: ClipRRect(
                            child: GestureDetector(
                              child: Container(
                                width: 165,
                                child: Text(
                                  "Interview Prep",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                color: Colors.black,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Interview(),
                                  ),
                                );
                                // createInterstitialAd()
                                //  ..load()
                                //  ..show();
                              },
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: ClipRRect(
                            child: GestureDetector(
                              child: Container(
                                width: 165,
                                child: Text(
                                  "Algorithms",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                color: Colors.black,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Algo(),
                                  ),
                                );
                                // createInterstitialAd()
                                // ..load()
                                // ..show();
                              },
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
                          child: ClipRRect(
                            child: GestureDetector(
                              child: Container(
                                width: 165,
                                child: Text(
                                  "System Design",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                color: Colors.black,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Systems(),
                                  ),
                                );
                                //createInterstitialAd()
                                //  ..load()
                                // ..show();
                              },
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:adharva/ds.dart';
import 'package:adharva/interview.dart';
import 'package:adharva/cp.dart';
import 'package:adharva/system.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:adharva/about.dart';
import 'package:adharva/csoon.dart';
import 'package:adharva/developers.dart';
import 'package:adharva/more.dart';

import '../algo.dart';

const String testDevice = "2EA23F8790DC1DFD5C2214BBF7AC49A5";

class Arrays extends StatefulWidget {
  @override
  _ArraysState createState() => _ArraysState();
}

class _ArraysState extends State<Arrays> {
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    keywords: <String>['Game', 'Mario'],
    nonPersonalizedAds: true,
  );

  BannerAd _bannerAd;
  InterstitialAd _interstitialAd;

  BannerAd createBannerAd() {
    return BannerAd(
        adUnitId: 'ca-app-pub-9588197956257552/6374948578',
        size: AdSize.banner,
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
          print("BannerAd $event");
          print("Device ID $testDevice");
        });
  }

  InterstitialAd createInterstitialAd() {
    return InterstitialAd(
        adUnitId: 'ca-app-pub-9588197956257552/3577109432',
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
          print("InterstitialAd $event");
        });
  }

  void initState() {
    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-9588197956257552~1314193585');
    _bannerAd = createBannerAd()
      ..load()
      ..show();
    super.initState();
  }

  void dispose() {
    _bannerAd.dispose();
    _interstitialAd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Arrays",
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
              Card(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      subtitle: Text(
                          "\nAn array is a collection of items stored at contiguous memory locations. The idea is to store multiple items of the same type together. This makes it easier to calculate the position of each element by simply adding an offset to a base value, i.e., the memory location of the first element of the array (generally denoted by the name of the array).\n\nHere are few amazing content on Arrays : "),
                    ),
                    GestureDetector(
                      onTap: wf1,
                      child: Card(
                        elevation: 5,
                        margin: EdgeInsets.fromLTRB(10, 10, 5, 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              contentPadding:
                              EdgeInsets.fromLTRB(10, 10, 10, 10),
                              leading: Image(
                                image: NetworkImage(
                                    'https://1.bp.blogspot.com/-pj08mOqELkA/Xxah29wgcMI/AAAAAAAAN5k/4B7NLOvM41wknrC0aV1U5eZMXiuM0hp2ACLcBGAsYHQ/d/arrays1.png'),
                              ),
                              title: Text('Dynamic and Static Arrays - 1/2'),
                              subtitle: Text('William Fiset'),
                            ),
                          ],
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: wf2,
                      child: Card(
                        elevation: 5,
                        margin: EdgeInsets.fromLTRB(10, 5, 5, 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              contentPadding:
                              EdgeInsets.fromLTRB(10, 10, 10, 10),
                              leading: Image(
                                image: NetworkImage(
                                    'https://1.bp.blogspot.com/-JRSY3u0dCHs/Xxah3GRF3NI/AAAAAAAAN5g/rvC1xc4pGcwHHlX_YxFvWjbcl0jK88QYQCLcBGAsYHQ/d/arrays2.png'),
                              ),
                              title: Text('Dynamic Array - 2/2'),
                              subtitle: Text('William Fiset'),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: ClipRRect(
                              child: GestureDetector(
                                child: Container(
                                  width: 165,
                                  child: Text(
                                    "Go Back",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 20,color: Colors.white),
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
                                  createInterstitialAd()
                                    ..load()
                                    ..show();
                                },
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: ClipRRect(
                              child: GestureDetector(
                                child: Container(
                                  width: 165,
                                  child: Text(
                                    "Read More",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 20,color: Colors.white),
                                  ),
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  color: Colors.black,
                                ),
                                onTap: () async{
                                  const url = 'https://www.geeksforgeeks.org/introduction-to-arrays/';
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                  createInterstitialAd()
                                    ..load()
                                    ..show();
                                },
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

wf1() async {
  const url = 'https://youtu.be/PEnFFiQe1pM?list=PLDV1Zeh2NRsB6SWUrDFW2RmDotAfPbeHu';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

wf2() async {
  const url = 'hhttps://youtu.be/tvw4v7FEF1w?list=PLDV1Zeh2NRsB6SWUrDFW2RmDotAfPbeHu';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


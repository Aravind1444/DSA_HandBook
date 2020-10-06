import 'package:adharva/ds.dart';
import 'package:adharva/interview.dart';
import 'package:adharva/cp.dart';
import 'package:adharva/system.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about.dart';
import 'csoon.dart';
import 'developers.dart';
import 'more.dart';

const String testDevice = "2EA23F8790DC1DFD5C2214BBF7AC49A5";

class Algo extends StatefulWidget {
  @override
  _AlgoState createState() => _AlgoState();
}

class _AlgoState extends State<Algo> {
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
            "Algorithms",
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
                    title: Text('About',style: TextStyle(fontSize: 18),),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => About(),
                        ),
                      );
                      //createInterstitialAd()
                      //  ..load()
                      //  ..show();
                    },
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: ListTile(
                    title: Text('Data Structures',style: TextStyle(fontSize: 18),),
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
                ),
                Container(
                  child: ListTile(
                    title: Text('Algorithms',style: TextStyle(fontSize: 18),),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Algo(),
                        ),
                      );
                      createInterstitialAd()
                        ..load()
                        ..show();
                    },
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: ListTile(
                    title: Text('Interview Prep',style: TextStyle(fontSize: 18),),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Csoon(),
                        ),
                      );
                      createInterstitialAd()
                        ..load()
                        ..show();
                    },
                  ),
                ),
                Container(
                  child: ListTile(
                    title: Text('System Design',style: TextStyle(fontSize: 18),),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Systems(),
                        ),
                      );
                      createInterstitialAd()
                        ..load()
                        ..show();
                    },
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: ListTile(
                    title: Text('Developers',style: TextStyle(fontSize: 18),),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Csoon(),
                        ),
                      );
                      createInterstitialAd()
                        ..load()
                        ..show();
                    },
                  ),
                ),

                Container(
                  child: ListTile(
                    title: Text('More',style: TextStyle(fontSize: 18),),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => More(),
                        ),
                      );
                      createInterstitialAd()
                        ..load()
                        ..show();
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
                          "\nWe're continuously working to bring the best content for you. Please wait for our next updates which will be delivering the Algorithms content.\n\nIn the mean time, please take a look at some of the best Algorithms content available over the internet."),
                    ),
                    GestureDetector(
                      onTap: educative,
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
                                    'https://res-3.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/dy6ncqwolj4slp5wp7ql'),
                              ),
                              title: Text('Algorithms for Coding Interviews in C++'),
                              subtitle: Text('Educative.io'),
                            ),
                          ],
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: gfg,
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
                                    'https://d2.alternativeto.net/dist/icons/geeksforgeeks_148528.png?width=128&height=128&mode=crop&upscale=false'),
                              ),
                              title: Text('Algorithms'),
                              subtitle: Text('GeeksforGeeks'),
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
                                    "About",
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
                                      builder: (context) => About(),
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
                                    "Contact Us",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 20,color: Colors.white),
                                  ),
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  color: Colors.black,
                                ),
                                onTap: () async{
                                  const url = 'mailto:hello@aravind.me';
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

educative() async {
  const url = 'https://www.educative.io/courses/algorithms-coding-interviews-cpp';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

gfg() async {
  const url = 'https://www.geeksforgeeks.org/fundamentals-of-algorithms/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


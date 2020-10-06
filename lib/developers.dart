import 'package:adharva/interview.dart';
import 'package:adharva/cp.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about.dart';
import 'ds.dart';
import 'algo.dart';

const String testDevice = "2EA23F8790DC1DFD5C2214BBF7AC49A5";

class Developers extends StatefulWidget {
  @override
  _DevelopersState createState() => _DevelopersState();
}

class _DevelopersState extends State<Developers> {
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
            "Organizers",
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
                    createInterstitialAd()
                      ..load()
                      ..show();
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
                        builder: (context) => CP(),
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
                        builder: (context) => Interview(),
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
                        builder: (context) => Developers(),
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
                        builder: (context) => Developers(),
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
                margin: EdgeInsets.fromLTRB(5, 10, 5, 5),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      subtitle: Text(
                          '\nThe developer team behind this app is awaiting your suggestions and feedbacks to keep on improving this app. Reach out to them with your valuable response.\n\nThe organizing team behind this fest is awaiting your suggestions and feedbacks to keep on improving this app. Reach out to them with your valuable response.'),
                    ),
                    GestureDetector(
                      onTap: aravind,
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
                                    'https://aravind.me/images/minion.jpg'),
                              ),
                              title: Text('Aravind Venugopal'),
                              subtitle: Text('App Developer'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: sample,
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
                                    'https://aravind.me/images/minion.jpg'),
                              ),
                              title: Text('Developer 2'),
                              subtitle: Text('App Developer'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: sample,
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
                                    'https://aravind.me/images/minion.jpg'),
                              ),
                              title: Text('Developer 3'),
                              subtitle: Text('Designer'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: sample,
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
                                    'https://aravind.me/images/minion.jpg'),
                              ),
                              title: Text('Developer 4'),
                              subtitle: Text('Designer'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: sample,
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
                                    'https://aravind.me/images/minion.jpg'),
                              ),
                              title: Text('Developer 5'),
                              subtitle: Text('UX Researcher'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: sample,
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
                                    'https://aravind.me/images/minion.jpg'),
                              ),
                              title: Text('Developer 6'),
                              subtitle: Text('UX Researcher'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: sample,
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
                                    'https://aravind.me/images/minion.jpg'),
                              ),
                              title: Text('Developer 7'),
                              subtitle: Text('Web Developer'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: sample,
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
                                    'https://aravind.me/images/minion.jpg'),
                              ),
                              title: Text('Developer 8'),
                              subtitle: Text('Web Developer'),
                            ),
                          ],
                        ),
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

sample() async {
  const url = 'tel:1234567890';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

aravind() async {
  const url = 'tel:8921585209';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

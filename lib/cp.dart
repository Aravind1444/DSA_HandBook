import 'package:adharva/system.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'about.dart';
import 'csoon.dart';
import 'ds.dart';
import 'algo.dart';
import 'developers.dart';
import 'interview.dart';
import 'more.dart';

const String testDevice = "2EA23F8790DC1DFD5C2214BBF7AC49A5";

class CP extends StatefulWidget {
  @override
  _CPState createState() => _CPState();
}

class _CPState extends State<CP> {
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

  @override
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
            "Sponsors",
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
                          '\nThe organizing team behind this fest is awaiting your suggestions and feedbacks to keep on improving your experince. Reach out to them with your valuable response.\n\nThe organizing team behind this fest is awaiting your suggestions and feedbacks to keep on improving this app. Reach out to them with your valuable response.'),
                    ),
                    GestureDetector(
                      onTap: dscurl,
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
                                    'https://miro.medium.com/fit/c/256/256/1*Zkhl4Zz43z2_iR_ADlP-rg.png'),
                              ),
                              title: Text('Developer Student Clubs'),
                              subtitle: Text('Community Partner'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: jetbrains,
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
                                    'https://res-5.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/v1451052749/svkxajebt60ayd9gwmac.png'),
                              ),
                              title: Text('JetBrains'),
                              subtitle: Text('Golden Partner'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: crowdera,
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
                                    'https://res-3.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/v1420771275/xycpyhn8fw4je3x8hd5p.png'),
                              ),
                              title: Text('Crowdera'),
                              subtitle: Text('Silver Partner'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: google,
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
                                    'https://ps.w.org/google-site-kit/assets/icon-256x256.png?rev=2181376'),
                              ),
                              title: Text('Google'),
                              subtitle: Text('Premium Sponsor'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: codingblocks,
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
                                    'https://res-3.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/v1401359199/hpvvdgjtri9gnhq8el2r.png'),
                              ),
                              title: Text('Coding Blocks'),
                              subtitle: Text('Silver Sponsor'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ksum,
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
                                    'https://pbs.twimg.com/profile_images/627443740588650497/yrZW6tq1_400x400.jpg'),
                              ),
                              title: Text('Kerala Startup Mission'),
                              subtitle: Text('Premium Sponsor'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: microsoft,
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
                                    'https://miro.medium.com/fit/c/256/256/1*uAge38yGXU_jAj1X5B92Nw.png'),
                              ),
                              title: Text('Microsoft'),
                              subtitle: Text('Premium Sponsor'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: sponsor,
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
                              title: Text('Sponsor Name'),
                              subtitle: Text('Sponsor Type'),
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

dscurl() async {
  const url = 'https://dscmbcet.github.io/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

jetbrains() async {
  const url = 'https://www.jetbrains.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

crowdera() async {
  const url = 'https://gocrowdera.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

google() async {
  const url = 'https://www.google.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

codingblocks() async {
  const url = 'https://codingblocks.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

ksum() async {
  const url = 'https://startupmission.kerala.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

microsoft() async {
  const url = 'https://www.microsoft.com/en-in';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

sponsor() async {
  const url = 'https://www.google.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

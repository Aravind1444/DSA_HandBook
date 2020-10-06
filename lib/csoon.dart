import 'package:adharva/ds.dart';
import 'package:adharva/interview.dart';
import 'package:adharva/cp.dart';
import 'package:adharva/system.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about.dart';
import 'algo.dart';
import 'csoon.dart';
import 'developers.dart';
import 'more.dart';

const String testDevice = "2EA23F8790DC1DFD5C2214BBF7AC49A5";




class Csoon extends StatefulWidget {
  @override
  _CsoonState createState() => _CsoonState();
}

class _CsoonState extends State<Csoon> {

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
    return Scaffold(
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
      backgroundColor: Colors.black,
      body: Center(
        child: Text("Coming Soon", style: TextStyle(fontSize: 30,color: Colors.white),),
      ),
    );
  }
}

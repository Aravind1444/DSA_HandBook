import 'package:adharva/cp.dart';
import 'package:adharva/datastructures/arrays.dart';
import 'package:adharva/datastructures/linkedlist.dart';
import 'package:adharva/system.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about.dart';
import 'algo.dart';
import 'csoon.dart';
import 'developers.dart';
import 'interview.dart';
import 'more.dart';

const String testDevice = "2EA23F8790DC1DFD5C2214BBF7AC49A5";

class DS extends StatefulWidget {
  @override
  _DSState createState() => _DSState();
}

class _DSState extends State<DS> {
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
            "Data Structures",
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
                      //..load()
                      //..show();
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
                    //..load()
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
                    //createInterstitialAd()
                    //..load()
                    //..show();
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
                    // ..load()
                    //..show();
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
                    //  ..show();
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
                    // ..show();
                  },
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const ListTile(
                subtitle: Text(
                  "\nData structures is a data organization, management, and storage format that enables efficient access and modification. More precisely, a data structure is a collection of data values, the relationships among them, and the functions or operations that can be applied to the data.",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: Container(
                  color: Colors.white,
                  child: Card(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
                    elevation: 10,
                    child: Image(
                      image: AssetImage('images/ds.png'),
                    ),
                  ),
                ),
              ),
              const ListTile(
                subtitle: Text(
                  "Different types of data structures are suited to different kinds of applications, and some are highly specialized to specific tasks. For example, relational databases commonly use B-tree indexes for data retrieval, while compiler implementations usually use hash tables to look up identifiers.\n\nData structures provide a means to manage large amounts of data efficiently for uses such as large databases and internet indexing services. Usually, efficient data structures are key to designing efficient algorithms. Some formal design methods and programming languages emphasize data structures, rather than algorithms, as the key organizing factor in software design. Data structures can be used to organize the storage and retrieval of information stored in both main memory and secondary memory.",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text(
                  "Different Data Structures",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: double.infinity,
                          height: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://1.bp.blogspot.com/-GT4j4HFV92g/XxabCGzoE5I/AAAAAAAAN5A/wbUFqj_qeF06REmSZ1TFWk48zy29CbxlgCLcBGAsYHQ/s700/arrays.png')),
                          ),
                        ),
                      ),
                      ExpansionTile(
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Arrays',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                            child: Text(
                              "An array is a collection of items stored at contiguous memory locations. The idea is to store multiple items of the same type together. This makes it easier to calculate the position of each element by simply adding an offset to a base value, i.e., the memory location of the first element of the array (generally denoted by the name of the array).",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          RaisedButton(
                            color: Colors.white,
                            child: Text(
                              'More',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: ()  {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Arrays(),
                                ),
                              );
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: double.infinity,
                          height: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://1.bp.blogspot.com/-iOVLcvl4hyQ/XxabCOYztnI/AAAAAAAAN5E/jrIgf_U5bW4jBF9aUpmoWLacBs3PFEIcACLcBGAsYHQ/d/linkedlist.png')),
                          ),
                        ),
                      ),
                      ExpansionTile(
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Linked List',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                            child: Text(
                              "A linked list is a linear data structure, in which the elements are not stored at contiguous memory locations. The elements in a linked list are linked using pointers. In simple words, a linked list consists of nodes where each node contains a data field and a reference(link) to the next node in the list.",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          RaisedButton(
                            color: Colors.white,
                            child: Text(
                              'More',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LinkedList(),
                                ),
                              );
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: double.infinity,
                          height: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://1.bp.blogspot.com/-WybPKxqrsTQ/XxabCrPMsZI/AAAAAAAAN5I/lO7Sf3tEQvMAsYEjKO3Vm3DbfrMcB4vNACLcBGAsYHQ/d/stack.png')),
                          ),
                        ),
                      ),
                      ExpansionTile(
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Stack',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                            child: Text(
                              "Stack is a linear data structure which follows a particular order in which the operations are performed. The order may be LIFO(Last In First Out) or FILO(First In Last Out).\n\nThere are many real-life examples of a stack. Consider an example of plates stacked over one another in the canteen. The plate which is at the top is the first one to be removed, i.e. the plate which has been placed at the bottommost position remains in the stack for the longest period of time. So, it can be simply seen to follow LIFO(Last In First Out)/FILO(First In Last Out) order. ",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          RaisedButton(
                            color: Colors.white,
                            child: Text(
                              'More',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () async {
                              const url =
                                  'https://www.geeksforgeeks.org/data-structures/linked-list/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                              //createInterstitialAd()
                              // ..load()
                              // ..show();
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: double.infinity,
                          height: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://1.bp.blogspot.com/-Sx1mGs1Auvc/XxabB0ieRGI/AAAAAAAAN48/y8nEQ2U_DMIRd8UFwG55OChgJCp1cjLegCLcBGAsYHQ/d/Queue.png')),
                          ),
                        ),
                      ),
                      ExpansionTile(
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Queue',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                            child: Text(
                              "A Queue is a linear structure which follows a particular order in which the operations are performed. The order is First In First Out (FIFO). A good example of a queue is any queue of consumers for a resource where the consumer that came first is served first. The difference between stacks and queues is in removing. In a stack we remove the item the most recently added; in a queue, we remove the item the least recently added.",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          RaisedButton(
                            color: Colors.white,
                            child: Text(
                              'More',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () async {
                              const url =
                                  'https://www.geeksforgeeks.org/queue-data-structure/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                              // createInterstitialAd()
                              // ..load()
                              // ..show();
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: double.infinity,
                          height: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://1.bp.blogspot.com/-yiFmOqmesPE/XxabAjhX6bI/AAAAAAAAN4s/EzReffWbGMAZrZhqU2VpSOBTu6UlasIfACLcBGAsYHQ/d/BinaryTree.png')),
                          ),
                        ),
                      ),
                      ExpansionTile(
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Binary Tree',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                            child: Text(
                              "A tree whose elements have at most 2 children is called a binary tree. Since each element in a binary tree can have only 2 children, we typically name them the left and right child. A Binary Tree node contains following parts.\n\n1) Data \n2) Pointer to left child \n3) Pointer to right child",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          RaisedButton(
                            color: Colors.white,
                            child: Text(
                              'More',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () async {
                              const url =
                                  'https://www.geeksforgeeks.org/binary-tree-data-structure/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                              //createInterstitialAd()
                              //  ..load()
                              //  ..show();
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: double.infinity,
                          height: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://1.bp.blogspot.com/-YvCIkaC8Vzg/XxabAqxE6DI/AAAAAAAAN4w/2mE6tsS9_4sOY5IzplRCmbcd_KHqrLTcACLcBGAsYHQ/d/BinarySearchTree.png')),
                          ),
                        ),
                      ),
                      ExpansionTile(
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Binary Search Tree',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                            child: Text(
                              "Binary Search Tree is a node-based binary tree data structure which has the following properties.\n\n1) The left subtree of a node contains only nodes with keys lesser than the node’s key. \n2) The right subtree of a node contains only nodes with keys greater than the node’s key. \n3) The left and right subtree each must also be a binary search tree.",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          RaisedButton(
                            color: Colors.white,
                            child: Text(
                              'More',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () async {
                              const url =
                                  'https://www.geeksforgeeks.org/binary-search-tree-data-structure/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                              // createInterstitialAd()
                              // ..load()
                              //..show();
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: double.infinity,
                          height: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://1.bp.blogspot.com/-MoksT5C76uQ/XxabBdj3JUI/AAAAAAAAN44/_tByVwe96_gv7eMGaWJpIyJnTX8Y4Dd3wCLcBGAsYHQ/d/Heap.png')),
                          ),
                        ),
                      ),
                      ExpansionTile(
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Heap',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                            child: Text(
                              "A Heap is a special Tree-based data structure in which the tree is a complete binary tree. Generally, Heaps can be of two types.\n\n1) Max-Heap: In a Max-Heap the key present at the root node must be greatest among the keys present at all of it’s children. The same property must be recursively true for all sub-trees in that Binary Tree.\n2) Min-Heap: In a Min-Heap the key present at the root node must be minimum among the keys present at all of it’s children. The same property must be recursively true for all sub-trees in that Binary Tree.",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          RaisedButton(
                            color: Colors.white,
                            child: Text(
                              'More',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () async {
                              const url =
                                  'https://www.geeksforgeeks.org/heap-data-structure/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                              //createInterstitialAd()
                              // ..load()
                              //..show();
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: double.infinity,
                          height: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://1.bp.blogspot.com/--0PCbX8OdpQ/XxabBWsvMFI/AAAAAAAAN40/XkkOHTzJtr8k1u0eh6uQ7oPLyxvBBzcKgCLcBGAsYHQ/d/Hashing.png')),
                          ),
                        ),
                      ),
                      ExpansionTile(
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Hashing',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                            child: Text(
                              "Hashing is an important Data Structure which is designed to use a special function called the Hash function which is used to map a given value with a particular key for faster access of elements. The efficiency of mapping depends of the efficiency of the hash function used.",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          RaisedButton(
                            color: Colors.white,
                            child: Text(
                              'More',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () async {
                              const url =
                                  'https://www.geeksforgeeks.org/hashing-data-structure/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                              //createInterstitialAd()
                              // ..load()
                              // ..show();
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: double.infinity,
                          height: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://1.bp.blogspot.com/-Uc8yzRi8_mM/XxabAeuKg4I/AAAAAAAAN4o/JlDTDKuAqW8f4fLMrZkVxnUoynRaKbwkACLcBGAsYHQ/d/Graph.png')),
                          ),
                        ),
                      ),
                      ExpansionTile(
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Graph',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                            child: Text(
                              "A Graph is a non-linear data structure consisting of nodes and edges. The nodes are sometimes also referred to as vertices and the edges are lines or arcs that connect any two nodes in the graph. More formally a Graph can be defined as,\n\n'A Graph consists of a finite set of vertices(or nodes) and set of Edges which connect a pair of nodes.\n\nGraphs are used to solve many real-life problems. Graphs are used to represent networks. The networks may include paths in a city or telephone network or circuit network. Graphs are also used in social networks like linkedIn, Facebook. For example, in Facebook, each person is represented with a vertex(or node). Each node is a structure and contains information like person id, name, gender, locale etc.",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          RaisedButton(
                            color: Colors.white,
                            child: Text(
                              'More',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () async {
                              const url =
                                  'https://www.geeksforgeeks.org/graph-data-structure-and-algorithms/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                              //createInterstitialAd()
                              //  ..load()
                              //..show();
                            },
                          ),
                        ],
                      )
                    ],
                  ),
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

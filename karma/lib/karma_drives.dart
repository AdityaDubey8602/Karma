import 'package:flutter/material.dart';
import 'package:karma/profile_page.dart';
import 'package:outline_search_bar/outline_search_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

import 'login.dart';

class KarmaDrives extends StatefulWidget {
  @override
  _KarmaDrivesState createState() => _KarmaDrivesState();
}

class _KarmaDrivesState extends State<KarmaDrives> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[800],
      body: Column(
        children: [
          SizedBox(
            height: 37.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 22.0,
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              Text(
                'Karma Drives',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'OpenSans',
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 25.0,
              ),
              RaisedButton(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => KarmaDrives()));
                },
                color: Colors.white,
                child: Text(
                  'MY DRIVES',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: OutlineSearchBar(
              borderRadius: BorderRadius.circular(30.0),
              borderColor: Colors.white,
              hintText: 'Search here',
              textStyle: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 20.0,
              ),
              searchButtonIconColor: Colors.black,
              searchButtonSplashColor: Colors.black,
              cursorColor: Colors.black,
              clearButtonColor: Colors.black,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontFamily: 'OpenSans',
                fontSize: 20.0,
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0),
                ),
                color: Colors.white,
              ),
              child: ListView(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 120.0,
                          ),
                          IconButton(
                            iconSize: 40.0,
                            icon: Icon(Icons.account_circle),
                            color: Colors.orange,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProfilePage(),
                                ),
                              );
                            },
                          ),
                          IconButton(
                            iconSize: 40.0,
                            icon: Icon(Icons.logout),
                            color: Colors.orange,
                            onPressed: () {
                              _logOut();
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image(
                                image: NetworkImage(
                                    'https://images.indianexpress.com/2018/08/buddha-dreamstime_l_62565557.jpg'),
                              ),
                            ),

                            //1
                            Positioned(
                              top: 20.0,
                              left: 240.0,
                              child: Column(
                                children: [
                                  Text(
                                    '9,523',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'OpenSans',
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'JOINED',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'OpenSans',
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //2

                            Positioned(
                              top: 80.0,
                              left: 20.0,
                              child: Text(
                                'CATEGORY',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'OpenSans',
                                  fontSize: 18.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),

                            //3
                            Positioned(
                              top: 105.0,
                              left: 20.0,
                              child: Text(
                                'SPIRITUAL EMPOWERMENT',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'OpenSans',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),

                            //4

                            Positioned(
                              top: 150.0,
                              left: 20.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.watch_later,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 2.0,
                                  ),
                                  Text(
                                    '05:00 ',
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: 18.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'AM ',
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontStyle: FontStyle.italic,
                                      fontSize: 18.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '| ',
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: 18.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '07 DEC 2019',
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: 18.0,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //5

                            Positioned(
                              top: 180.0,
                              left: 20.0,
                              child: Row(
                                children: [
                                  RaisedButton(
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(30.0),
                                    ),
                                    onPressed: () {},
                                    color: Colors.lightGreenAccent[700],
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 30.0,
                                      ),
                                      child: Text(
                                        'JOINED',
                                        style: TextStyle(
                                          fontFamily: 'OpenSans',
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  RaisedButton(
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(30.0),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  KarmaDrives()));
                                    },
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0,
                                      ),
                                      child: Text(
                                        'DO KARMA',
                                        style: TextStyle(
                                          fontFamily: 'OpenSans',
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image(
                                image: NetworkImage(
                                    'https://images.indianexpress.com/2018/08/buddha-dreamstime_l_62565557.jpg'),
                              ),
                            ),

                            //1
                            Positioned(
                              top: 20.0,
                              left: 240.0,
                              child: Column(
                                children: [
                                  Text(
                                    '9,523',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'OpenSans',
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'JOINED',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'OpenSans',
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //2

                            Positioned(
                              top: 80.0,
                              left: 20.0,
                              child: Text(
                                'CATEGORY',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'OpenSans',
                                  fontSize: 18.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),

                            //3
                            Positioned(
                              top: 105.0,
                              left: 20.0,
                              child: Text(
                                'SPIRITUAL EMPOWERMENT',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'OpenSans',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),

                            //4

                            Positioned(
                              top: 150.0,
                              left: 20.0,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.watch_later,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 2.0,
                                  ),
                                  Text(
                                    '05:00 ',
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: 18.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'AM ',
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontStyle: FontStyle.italic,
                                      fontSize: 18.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '| ',
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: 18.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '07 DEC 2019',
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: 18.0,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //5

                            Positioned(
                              top: 180.0,
                              left: 20.0,
                              child: Row(
                                children: [
                                  RaisedButton(
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(30.0),
                                    ),
                                    onPressed: () {},
                                    color: Colors.lightGreenAccent[700],
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 30.0,
                                      ),
                                      child: Text(
                                        'JOINED',
                                        style: TextStyle(
                                          fontFamily: 'OpenSans',
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  RaisedButton(
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(30.0),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  KarmaDrives()));
                                    },
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0,
                                      ),
                                      child: Text(
                                        'DO KARMA',
                                        style: TextStyle(
                                          fontFamily: 'OpenSans',
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _logOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs?.clear();
    print('done');
    Toast.show('Logging Out', context);
    Navigator.of(context).pop();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:karma/karma_drives.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[800],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => KarmaDrives(),
              ),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.create,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
        elevation: 0.0,
        backgroundColor: Colors.orange[800],
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Profile',
            style: TextStyle(
              fontSize: 25.0,
              fontFamily: 'OpenSans',
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                color: Colors.white,
              ),
            ),
            Positioned(
              left: 120.0,
              top: -60.0,
              child: CircleAvatar(
                  radius: 60.0,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://ath2.unileverservices.com/wp-content/uploads/sites/3/2017/09/professional-mens-hairstyles-combed-min-500x500.jpg')),
            ),

            //Row1
            Positioned(
              left: 21.0,
              top: 80.0,
              child: Row(
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'OpenSans',
                      fontSize: 13.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 123.0),
                    child: Text(
                      'Phone Number',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'OpenSans',
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Row2

            Positioned(
              left: 20.0,
              top: 120,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      color: Colors.grey[350],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 50.0,
                      ),
                      child: Text(
                        'Paul',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      color: Colors.grey[350],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '+919875125802',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Row3

            Positioned(
              left: 21.0,
              top: 180.0,
              child: Row(
                children: [
                  Text(
                    'Location',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'OpenSans',
                      fontSize: 13.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 110.0),
                    child: Text(
                      'Interest',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'OpenSans',
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Row4

            Positioned(
              left: 20.0,
              top: 220,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      color: Colors.grey[350],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 10.0,
                      ),
                      child: Text(
                        'New York City',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      color: Colors.grey[350],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 40.0),
                      child: Text(
                        'Football',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Row5
            Positioned(
              left: 20.0,
              top: 285,
              child: Row(
                children: [
                  Text(
                    'Notifications',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 140.0,
                  ),
                  FlutterSwitch(
                    inactiveColor: Colors.orange,
                    activeColor: Colors.orange[900],
                    height: 27.0,
                    width: 50.0,
                    toggleSize: 20.0,
                    value: isSwitchOn,
                    onToggle: (value) {
                      setState(() {
                        isSwitchOn = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            // Positioned(
            //   top: 350.0,
            //   left: 20.0,
            //   child:
            // ),
          ],
        ),
      ),
    );
  }
}

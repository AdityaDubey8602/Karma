import 'package:flutter/material.dart';
import 'package:karma/karma_drives.dart';
import 'package:karma/login.dart';
import 'package:karma/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Karma',
      debugShowCheckedModeBanner: false,
      initialRoute: 'Login',
      routes: {
        'Login': (context) => LoginPage(),
        'Profile': (context) => ProfilePage(),
        'Karma': (context) => KarmaDrives(),
      },
    );
  }
}

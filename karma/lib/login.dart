import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:karma/karma_drives.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'api.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 240.0,
                width: 800.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(300.0, 90.0),
                    bottomRight: Radius.elliptical(300.0, 90.0),
                  ),
                  color: Colors.orange,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40.0,
                    ),
                    Image(
                      image: AssetImage('assets/images/karma.png'),
                      height: 70.0,
                      width: 120.0,
                    ),
                    Text(
                      'KARMA',
                      style: TextStyle(
                        fontSize: 33.0,
                        fontFamily: 'OpenSans',
                        letterSpacing: 4.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Divider(
                      indent: 130.0,
                      endIndent: 130.0,
                      height: 0.0,
                      color: Colors.white,
                    ),
                    Text(
                      'Uniting Power',
                      style: TextStyle(
                        fontSize: 10.0,
                        fontFamily: 'OpenSans',
                        letterSpacing: 2.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 19.0,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, top: 5.0, bottom: 5.0),
                    child: TextFormField(
                      controller: emailController,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 20.0,
                      ),
                      decoration: new InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hoverColor: Colors.grey,
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: 'OpenSans',
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: PasswordField(
                      controller: passwordController,
                      inputStyle: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIconEnabled: true,
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 170.0),
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 17.0,
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              RaisedButton(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                onPressed: () {
                  _handleLogin();
                },
                color: Colors.lightGreenAccent[700],
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    _isLoading ? 'Logging in...' : 'Login',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 77.0,
                  ),
                  Text(
                    'Not a member yet? ',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                  Text(
                    'Click here',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'OpenSans',
                      color: Colors.orange,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _handleLogin() async {
    setState(() {
      _isLoading = true;
    });

    var data = {
      'email': emailController.text,
      'password': passwordController.text,
    };

    var res = await CallApi().postData(data, 'login');
    var body = json.decode(res.body);

    SharedPreferences localStorage = await SharedPreferences.getInstance();
    localStorage.setString('token', body['token']);
    print(body['token']);
    Navigator.of(context).pop();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => KarmaDrives()));

    print('Login Successful');
  }
}

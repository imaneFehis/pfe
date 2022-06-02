import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:log_page_imane/controllers/auth_controller.dart';
import 'package:log_page_imane/screens/home.dart';
// import 'package:get/get.dart';
import 'package:log_page_imane/screens/singup.dart';

import 'package:log_page_imane/utilities/constants.dart';
import 'home_tap.dart';

class LoginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;
  AuthController authController = Get.find<AuthController>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans', // COLOR NT3 TEXT
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xFFc0fbf2),
              ),
              hintText: 'Enter your Email',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'password',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            obscureText: true,
            controller: passwordController,
            style: TextStyle(color: Colors.black, fontFamily: 'OpenSans'),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xFFc0fbf2),
              ),
              hintText: 'Enter your password',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => ('forgot password buton pressed'),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Forgot password?',
          style: kLabelStyle,
        ),
      ),
    );
  }

  Widget _buildRememberMeCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.greenAccent,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value!;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            style: kLabelStyle,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginBt() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 7.0,
        // onPressed: ()=>Get.to(FirstScreen()),
        onPressed: () async {
          try {
            await authController.signIn(
              email: emailController.text,
              password: passwordController.text,
            );
            print(authController.currentUser?.id);
            if (authController.isLogin) {
              Get.offAll(() => HomeScreen());
            }
          } on DioError catch (e) {
            Get.defaultDialog(
              title: 'Error',
              content: Text(
                (e.response ?? 'Check your internet connection').toString(),
              ),
              confirm: TextButton(
                onPressed: () => Get.back(),
                child: const Text('Ok'),
              ),
            );
            print('===========');
            print(e.response);
          }
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: Colors.white,
        child: Text(
          'LOG IN',
          style: TextStyle(
              color: Color(0xFFF6ae6d3),
              letterSpacing: 1.5,
              fontSize: 15.0,
              fontWeight: FontWeight.w900,
              fontFamily: 'OpenSans'),
        ),
      ),
    );
  }

  Widget _buildNewAcount() {
    return Container(
      alignment: Alignment.topLeft,
      child: FlatButton(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => SignUp())),
        // onPressed: ()=>Get.to(SignUp()),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Dont have an account?',
          style: kLabelStyle,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.white,
              ],
            ),
          ),
        ),
        Container(
          height: double.infinity,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 130.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Welcome Back             '
                  '',
                  style: TextStyle(
                    color: Color(0xfff6ae6d3),
                    fontWeight: FontWeight.w900,
                    fontSize: 30.0,
                    fontFamily: 'OpenSans',
                  ),
                ),
                SizedBox(height: 30.0),
                _buildEmailTF(),
                SizedBox(height: 30.0),
                _buildPasswordTF(),
                _buildForgotPasswordBtn(),
                _buildRememberMeCheckbox(),
                _buildLoginBt(),
                _buildNewAcount(),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

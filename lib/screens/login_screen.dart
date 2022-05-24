
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:log_page_imane/screens/home.dart';
// import 'package:get/get.dart';
import 'package:log_page_imane/screens/singup.dart';

import 'package:log_page_imane/utilities/constants.dart';
import 'home_tap.dart';

class LoginScreen extends StatefulWidget{
  @override
  _loginScreenState createState() => _loginScreenState();
}
class _loginScreenState  extends State<LoginScreen>{
  bool _rememberMe = false;
  Widget _buildEmailTF()   {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // kayna adi w kayn 3 okhrin
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
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Color(0xFF8D6B48),fontFamily: 'OpenSans',// COLOR NT3 TEXT
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14.0),
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
  Widget _buildPasswordTF(){
    return   Column(
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
            style: TextStyle(color: Colors.black,
                fontFamily: 'OpenSans'),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xFFc0fbf2),
              ),

              hintText:
              'Enter your password',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
  Widget _buildForgotPasswordBtn(){
    return  Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: ()=>('forgot password buton pressed'),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Forgot password?',
          style: kLabelStyle,
        ),
      ),
    );
  }
  Widget _buildRememberMeCheckbox(){
    return Container(
      height:20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data:ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.greenAccent,
              activeColor: Colors.white,
              onChanged: (value){
                setState(() {
                  _rememberMe=value!;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            style:kLabelStyle,
          ),
        ],
      ),
    );
  }
  Widget _buildLoginBt(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 7.0,
        /// hadi b GE
        /// waitt
        /// probml q ma3rftch hdik intefc nhotha hnaa f hada dosser
        /// mafhamtnich wach haba
        /// wait d9i9a
        /// chft adika faha button haba narbto m3a adi la page
        /// u get me ?
        /// i think got it !!!
        // onPressed: ()=>Get.to(FirstScreen()),
        onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=>HomeScreen())),
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
              fontFamily: 'OpenSans'
          ),
        ),
      ),
    );

  }
  Widget _buildNewAcount(){
    return  Container(
      alignment: Alignment.topLeft,
      child: FlatButton(
        onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SignUp())),
        // onPressed: ()=>Get.to(SignUp()),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Dont have an account?',
          style: kLabelStyle,
        ),
      ),
    );
  }
  /*Widget _buildSingInWithText(){
    return  Column(
      children: <Widget>[
        Text(
          '- OR -',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          'sign in with',
          style: kLabelStyle,
        ),
      ],
    );
 }*/
  /* Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }*/
  /*Widget _buildSocialBtnRow(){
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 30.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            _buildSocialBtn(
            () => print('loin with Facebbok'),
                 AssetImage(
                        'assest/logos/facebook_icon.png',
              ),
               ),
                  _buildSocialBtn(
                    () => print('loin with google'),
                AssetImage(
                          'assest/logos/Google_Logo_2015.png',
     ),
      ),
  ],
  ),
    );
}*/
  /*Widget  _buildSignupBtn() {
    return GestureDetector(
      onTap: () => print('Sign Up Button Pressed'),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Account? ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
*/
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Stack(
          children:<Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                  ],
                  /* colors:[
                  Color(0xFFf7f3ff),
                  Color(0xFFe1c9f8),
                  Color(0XFFc098e6),
                  Color(0XFFc098e6),
                ],
                stops: [0.1,0.3,0.7,0.9],*/
                ),
              ),
            ),
            Container(
              height: double.infinity,
              child:SingleChildScrollView(
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
                          ''
                          ,
                      style: TextStyle(
                        color: Color(0xfff6ae6d3),
                        fontWeight: FontWeight.w900,
                        fontSize: 30.0,
                        fontFamily: 'OpenSans',

                      ),
                    ),
                    SizedBox(
                        height: 30.0
                    ),
                    _buildEmailTF(),
                    SizedBox(
                        height: 30.0
                    ),
                    _buildPasswordTF(),
                    _buildForgotPasswordBtn(),
                    _buildRememberMeCheckbox(),
                    _buildLoginBt(),
                    //_buildSingInWithText(),
                    //_buildSocialBtnRow(),
                    //_buildSignupBtn(),
                    _buildNewAcount(),

                  ],
                ),
              ),
            ),
          ],
        )
    );


  }
}
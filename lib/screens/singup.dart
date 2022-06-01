import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:log_page_imane/screens/home.dart';
import 'package:log_page_imane/utilities/constants.dart';
import 'package:log_page_imane/screens/login_screen.dart';

class SignUp extends StatelessWidget {
  Widget buildName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Name',

          style: kLabelStyle,
          // style: TextStyle(
          //     color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60,
          child: TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.person,
                  color: Color(0xFFF6ae6d3),
                ),
                hintText: 'Enter your Name',
                helperStyle: TextStyle(color: Colors.black)),
          ),
        )
      ],
    );
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xFFF6ae6d3),
                ),
                hintText: ' Enter your Email',
                helperStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xFFF6ae6d3),
                ),
                hintText: 'Enter your Password',
                helperStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }
  // Widget buildConfirmPassword(){
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(
  //         'ConfirmPassword',
  //         style: TextStyle(
  //             color: Colors.white,
  //             fontSize: 16,
  //             fontWeight: FontWeight.bold
  //         ),
  //       ),
  //       SizedBox(height: 10),
  //       Container(
  //         alignment: Alignment.centerLeft,
  //         decoration: BoxDecoration(
  //             color: Colors.white,
  //             borderRadius: BorderRadius.circular(10),
  //             boxShadow: [
  //               BoxShadow(
  //                   color: Colors.black26,
  //                   blurRadius: 6,
  //                   offset: Offset(0,2)
  //               )
  //             ]
  //         ),
  //         height: 60,
  //         child: TextField(
  //           obscureText: true,
  //           style: TextStyle(
  //             color: Colors.black87,
  //           ),
  //           decoration: InputDecoration(
  //               border: InputBorder.none,
  //               contentPadding: EdgeInsets.only(top: 14),
  //               prefixIcon: Icon(
  //                 Icons.lock,
  //                 color: Color(0xff731573),
  //               ),
  //               hintText: 'ConfirmPassword',
  //               helperStyle: TextStyle(
  //                   color: Colors.black38
  //               )
  //           ),
  //         ),
  //       )
  //     ],
  //   );
  // }

  Widget buildForgotPassBtn() {
    return Container(
      alignment: Alignment.bottomRight,
      child: FlatButton(
        onPressed: () => print("Forget Password"),
        padding: EdgeInsets.only(right: 0),
        child: Text(
          'Forget Password?',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildSignUpBtn(context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 29),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => HomeScreen())),
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.white,
        child: Text(
          'Sign Up',
          style: TextStyle(
              color: Color(0xFFF6ae6d3),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildLoginUpBtn(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginScreen())),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: 'Already have an account?',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500)),
          TextSpan(
            text: '     ',
          ),
          TextSpan(
              text: 'Log in',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500))
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 60,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Color(0xfff6ae6d3),
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                      buildName(),
                      SizedBox(height: 15),
                      buildEmail(),
                      SizedBox(height: 15),
                      buildPassword(),
                      SizedBox(height: 15),
                      //buildConfirmPassword(),
                      buildForgotPassBtn(),
                      buildSignUpBtn(context),
                      buildLoginUpBtn(context),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

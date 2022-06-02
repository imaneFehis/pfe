import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:log_page_imane/controllers/auth_controller.dart';
import 'package:log_page_imane/main.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  AuthController authController = Get.find<AuthController>();
  Widget _ProfilePic() => Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          // backgroundImage: AssetImage('assets/profilepic.jpg'),
          backgroundImage: authController.currentUser!.picture != null
              ? NetworkImage(
                  authController.currentUser!.picture!,
                )
              : null,
          child: authController.currentUser!.picture == null
              ? const Icon(Icons.person, size: 75)
              : null,
          radius: 70,
        ),
      );

  Widget _Name() {
    return Column(children: <Widget>[
      Container(
        color: Colors.white,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
        child: Row(
          children: <Widget>[],
        ),
      ),
    ]);

    /*crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Name',
        style: kLabelStyle,
      ),
    SizedBox(height: 20.0),
*/

    /*  Container(
    alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
    height: 60.0,
    child: TextField(
    keyboardType: TextInputType.name,
      style: TextStyle(color: Color(0xFF8D6B48)
          ,fontFamily: 'OpenSans',
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(top: 14.0),
         hintText: ' your name',
        hintStyle: kHintTextStyle,
      ),
    ),
    ),
      ),
  ], aw gotlk nn papa f dar 
    );*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFbdffff),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              await authController.signOut();
              Get.offAll(WelcomeScreen());
            },
            icon: Icon(
              Icons.power_settings_new,
              color: Colors.black,
            ),
          ),
        ],
        title: const Text(
          'YOUR PROFILE',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: <Widget>[
          _ProfilePic(),

          Container(
            color: Color(0xFFFbdffff),
            padding: EdgeInsets.all(15.0),
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  authController.currentUser!.username!,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'TiroBangla',
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFFbdffff),
            padding: EdgeInsets.all(15.0),
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  authController.currentUser!.phone == ''
                      ? 'Add your number'
                      : authController.currentUser!.phone!,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),

          Container(
            color: Color(0xFFFbdffff),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  authController.currentUser!.email!,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'TiroBangla',
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),

          Container(
            color: Color(0xFFFbdffff),
            padding: EdgeInsets.all(15.0),
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  authController.currentUser!.address == ''
                      ? "Add your address"
                      : authController.currentUser!.address!,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'TiroBangla',
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          //_ProfilePic(),
        ],
      ),

      //   bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Color(0XFF8D6B48),
      //   selectedItemColor: Colors.white,
      //   onTap: (index){},
      //   currentIndex: 1,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'home',
      //       backgroundColor: Colors.blueAccent,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'profil',
      //     ),

      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite),
      //       label: 'favorite',
      //       backgroundColor: Colors.red,
      //     ),
      //   ],

      // ),
    );
  }
}

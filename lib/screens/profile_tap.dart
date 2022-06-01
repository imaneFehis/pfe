import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget _ProfilePic() => Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('assets/profilepic.jpg'),

          //  NetworkImage(
          //   'https://images.pexels.com/photos/38554/girl-people-landscape-sun-38554.jpeg?cs=srgb&dl=pexels-pixabay-38554.jpg&fm=jpg',
          // ),
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
        title: Text(
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
                  'Fehis Imane',
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
                  '+21356674829',
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
                  'imanefh28@gmail.com',
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
                  'Blida ville',
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

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget _ProfilePic() => Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: CircleAvatar(
          backgroundColor: Colors.pink,
          backgroundImage: NetworkImage(
            'https://images.pexels.com/photos/38554/girl-people-landscape-sun-38554.jpeg?cs=srgb&dl=pexels-pixabay-38554.jpg&fm=jpg',
          ),
          radius: 60,
        ),
      );

  Widget _Name() {
    return Column(children: <Widget>[
      Container(
        color: Colors.white,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.phone,
              color: Colors.teal,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              '+8348388348',
              style: TextStyle(
                color: Colors.teal,
                fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
              ),
            ),
          ],
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
  ],

    );*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff08b5a0),
        centerTitle: true,
        title: Text("YOUR PROFILE"),
      ),
      body: Column(
        children: <Widget>[
          // Container(
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //   ),
          // ),
          //_ProfilePic()

          /*Text('Fahim Muntashir',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ) ,
            ),*/
          /* Container(
    color: Colors.white,
    padding: EdgeInsets.all(10.0),
    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
    child: Row(
    children: <Widget>[
    Icon(
    Icons.phone,
    color: Colors.teal,
    ),
    SizedBox(
    width: 10.0,
    ),
    Text(
    '+8348388348',
    style: TextStyle(
    color: Colors.teal,
    fontFamily: 'Source Sans Pro',
    fontSize: 20.0,
    ),
    ),
    ],
    ),
    ),*/
          /*  Positioned(top: 20.0,
              child:ProfilePic(),
            ),*/
          /* Container(
              height:200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(100)
                //more than 50% of width makes circle
              ),
            ),*/
          _ProfilePic(),
          Container(
            color: Color(0xFFc0fbf2),
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Fehis Imane',
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
            color: Color(0xFFc0fbf2),
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
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
            color: Color(0xFFc0fbf2),
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.symmetric(vertical: 25, horizontal: 25.0),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'imanefh28@gmail.com',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans Pro',
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

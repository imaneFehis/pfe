import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import '../utilities/travelcard.dart';

class HomeTap extends StatefulWidget {
  @override
  _HomeTapState createState() => _HomeTapState();
}

class _HomeTapState extends State<HomeTap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFF6F7FF),
        /*title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ],
        ),*/
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Let's start by adding the text
            Text(
              "Welcome To My Hotel",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "",
            ),
            Text(
              "Pick your destination",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: Color(0x55434343),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  hintText: "Search for chambre, .....",
                  // ignore: prefer_const_constructors
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ), //Icon
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            //Now let's Add a Tabulation bar
            DefaultTabController(
              length: 2,
              child: Expanded(
                child: Column(
                  children: [
                    // ignore: prefer_const_constructors
                    TabBar(
                      indicatorColor: Color(0xff0ab49d),
                      unselectedLabelColor: Color(0xff0ab49d),
                      labelColor:
                          Color.fromARGB(255, 14, 5, 3), //COLOR NT3 Trending
                      labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      tabs: [
                        Tab(
                          text: "Trending",
                        ),
                        Tab(
                          text: "Trending2",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ), // SizdeBox
                    Container(
                      height: 200.0,
                      child: TabBarView(
                        children: [
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                //Now let's add and test our first card
                                travelCard(
                                    urls[0], "Luxary Hotel", "Caroline", 3),
                                travelCard(urls[1], "Plaza Hotel", "Italy", 4),
                                travelCard(
                                    urls[2], "Safari Hotel", "Africa", 5),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                //Here you can add what ever you want
                                travelCard(urls[6], "Visit Rome", "Italy", 4),
                                travelCard(urls[8], "Visit Sidi bou Said",
                                    "Tunsia", 4),
                              ],
                            ),
                          ),
                          // Container(
                          //   child: ListView(
                          //     scrollDirection: Axis.horizontal,
                          //     children: [],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),

      // bottomNavigationBar: Container(
      //   margin: const EdgeInsets.only(bottom: 10),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       IconButton(onPressed: (){}, icon: Icon(Icons.favorite,size: 50,),),
      //       SizedBox(),
      //       IconButton(onPressed: (
      //       ){
      //         //  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FirstScreen()));
      //       }, icon: Icon(Icons.home,size: 50,),),
      //       SizedBox(),
      //       IconButton(onPressed: (){
      //         Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ProfilePage()));
      //       }, icon: Icon(Icons.person,size: 50,),),
      //     ],
      //   ),
      // ),

      // BottomNavigationBar(
      //   unselectedItemColor: Colors.black,
      //   selectedItemColor: Colors.red,
      //   currentIndex: 1,
      //   items: [

      //     BottomNavigationBarItem(

      //       icon: Icon(Icons.favorite),
      //       label: 'favorite',

      //       //backgroundColor: Colors.black,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'home',
      //     ),

      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'profil',
      //     ),
      //   ],
      // ),
    );
  }
}

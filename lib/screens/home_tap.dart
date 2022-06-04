import 'package:flutter/material.dart';
import 'package:log_page_imane/data/api_methods.dart';
import 'package:log_page_imane/screens/hotel.dart';
import 'package:log_page_imane/screens/hotelPackage.dart';
import 'package:log_page_imane/screens/hoteldetails.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final hotel = Hotel.hotellist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Find The \n        Perfect Room",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'TiroBangla',
                      ),
                    ),
                  ],
                ),
                // Container(
                //   height: 50,
                //   width: 50,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(100.0),
                //       image: DecorationImage(
                //           image: AssetImage('assets/images/face.jpg'),
                //           fit: BoxFit.cover)),
                // )
              ],
            ),
          ),
          SizedBox(
            height: 0,
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFFEFEDEE),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 10.0),
                        blurRadius: 10.0)
                  ]),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 20.0,
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width * 0.79,
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'search your room'),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Hotels",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.0),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 300,
            width: double.infinity,
            child: FutureBuilder(
                future: getData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  List data = (snapshot.data as List);

                  return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      // itemCount: hotel.length,
                      itemBuilder: (context, index) {
                        Hotel hotelscreen = hotel[index];
                        return GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (_) => DetailsScreen(
                            //         hotel: hotelscreen,
                            //       ),
                            //     ));
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(0.0, 4.0),
                                      blurRadius: 10.0)
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Hero(
                                  tag: hotelscreen.imgurl,
                                  child: Container(
                                    height: 180,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                      image: data[index]['image'] != null
                                          ? DecorationImage(
                                              image: NetworkImage(
                                                data[index]['image'],
                                              ),
                                              // AssetImage(hotel[index].imgurl),
                                              fit: BoxFit.cover,
                                            )
                                          : const DecorationImage(
                                              image: AssetImage(
                                                'assets/hotelAZ.jpg',
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  child: Text(
                                    data[index]['title'] ?? '',
                                    // hotel[index].title,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    data[index]['address'],
                                    // hotel[index].location,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 7, top: 5, right: 3),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '${data[index]['price']} DA',
                                        // '${hotel[index].price} DA',
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 12),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            data[index]['rate'].toString(),
                                            // hotel[index].rating.toString(),
                                            style: TextStyle(color: Colors.red),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.red,
                                            size: 12,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  'Rooms',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FutureBuilder(
              future: getData(type: 'rooms'),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                List data = (snapshot.data as List);

                return HotelPackage(
                  data: data,
                );
              }),
        ],
      ),
    );
  }
}

// class HomeTap extends StatefulWidget {
//   @override
//   _HomeTapState createState() => _HomeTapState();
// }

// class _HomeTapState extends State<HomeTap> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFF6F7FF),
//       appBar: AppBar(
//         elevation: 0.0,
//         backgroundColor: Color(0xFFF6F7FF),
//         /*title: Row(
//           children: [
//             IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.menu,
//                 color: Colors.black,
//               ),
//             ),
//           ],
//         ),*/
//       ),

//       body: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             //Let's start by adding the text
//             Text(
//               "Welcome To My Hotel",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 26.0,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             Text(
//               "",
//             ),
//             Text(
//               "Pick your destination",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.w300,
//               ),
//             ),
//             SizedBox(
//               height: 20.0,
//             ),

//             Material(
//               elevation: 10.0,
//               borderRadius: BorderRadius.circular(30.0),
//               shadowColor: Color(0x55434343),
//               child: TextField(
//                 textAlign: TextAlign.start,
//                 textAlignVertical: TextAlignVertical.center,
//                 // ignore: prefer_const_constructors
//                 decoration: InputDecoration(
//                   hintText: "Search for chambre, .....",
//                   // ignore: prefer_const_constructors
//                   prefixIcon: Icon(
//                     Icons.search,
//                     color: Colors.black54,
//                   ), //Icon
//                   border: InputBorder.none,
//                 ),
//               ),
//             ),
//             SizedBox(height: 20.0),
//             //Now let's Add a Tabulation bar
//             DefaultTabController(
//               length: 2,
//               child: Expanded(
//                 child: Column(
//                   children: [
//                     // ignore: prefer_const_constructors
//                     TabBar(
//                       indicatorColor: Color(0xff0ab49d),
//                       unselectedLabelColor: Color(0xff0ab49d),
//                       labelColor:
//                           Color.fromARGB(255, 14, 5, 3), //COLOR NT3 Trending
//                       labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
//                       tabs: [
//                         Tab(
//                           text: "Trending",
//                         ),
//                         Tab(
//                           text: "Trending2",
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 20.0,
//                     ), // SizdeBox
//                     Container(
//                       height: 200.0,
//                       child: TabBarView(
//                         children: [
//                           Container(
//                             child: ListView(
//                               scrollDirection: Axis.horizontal,
//                               children: [
//                                 //Now let's add and test our first card
//                                 travelCard(
//                                     urls[0], "Luxary Hotel", "Caroline", 3),
//                                 travelCard(urls[1], "Plaza Hotel", "Italy", 4),
//                                 travelCard(
//                                     urls[2], "Safari Hotel", "Africa", 5),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             child: ListView(
//                               scrollDirection: Axis.horizontal,
//                               children: [
//                                 //Here you can add what ever you want
//                                 travelCard(urls[6], "Visit Rome", "Italy", 4),
//                                 travelCard(urls[8], "Visit Sidi bou Said",
//                                     "Tunsia", 4),
//                               ],
//                             ),
//                           ),
//                           // Container(
//                           //   child: ListView(
//                           //     scrollDirection: Axis.horizontal,
//                           //     children: [],
//                           //   ),
//                           // ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),

//       // bottomNavigationBar: Container(
//       //   margin: const EdgeInsets.only(bottom: 10),
//       //   child: Row(
//       //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       //     children: [
//       //       IconButton(onPressed: (){}, icon: Icon(Icons.favorite,size: 50,),),
//       //       SizedBox(),
//       //       IconButton(onPressed: (
//       //       ){
//       //         //  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FirstScreen()));
//       //       }, icon: Icon(Icons.home,size: 50,),),
//       //       SizedBox(),
//       //       IconButton(onPressed: (){
//       //         Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ProfilePage()));
//       //       }, icon: Icon(Icons.person,size: 50,),),
//       //     ],
//       //   ),
//       // ),

//       // BottomNavigationBar(
//       //   unselectedItemColor: Colors.black,
//       //   selectedItemColor: Colors.red,
//       //   currentIndex: 1,
//       //   items: [

//       //     BottomNavigationBarItem(

//       //       icon: Icon(Icons.favorite),
//       //       label: 'favorite',

//       //       //backgroundColor: Colors.black,
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.home),
//       //       label: 'home',
//       //     ),

//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.person),
//       //       label: 'profil',
//       //     ),
//       //   ],
//       // ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:log_page_imane/data/api.dart';

import '../screens/hoteldetails.dart';

class RoomWidget extends StatelessWidget {
  const RoomWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DetailsScreen(
                  data: data,
                ),
              ));
        },
        child: Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 4.0),
                    blurRadius: 8.0)
              ]),
          child: Stack(
            children: [
              Positioned(
                  child: Hero(
                tag: data['image'],
                child: Container(
                  height: 150,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    image: DecorationImage(
                        image: NetworkImage(
                            (data['image'] as String).contains(api)
                                ? data['image']
                                : api + data['image']),
                        fit: BoxFit.cover),
                  ),
                ),
              )),
              Positioned(
                  top: 15,
                  right: 40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        data['name'],
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        data['hotel']['address'],
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '${data['price']} DA price for night',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.red),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.directions_car,
                              color: Colors.red,
                            ),
                            Icon(
                              Icons.hot_tub,
                              color: Colors.red,
                            ),
                            Icon(
                              Icons.local_bar,
                              color: Colors.red,
                            ),
                            Icon(
                              Icons.wifi,
                              color: Colors.red,
                            ),
                            Icon(
                              Icons.park,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              // Positioned(
              //     bottom: 40,
              //     left: 300,
              //     child: Center(
              //       child: Transform.rotate(
              //         angle: pi / -2,
              //         child: Container(
              //           height: 50,
              //           width: 100,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             color: Colors.red,
              //           ),
              //           child: Center(child: Text('BOOK NOW')),
              //         ),
              //       ),
              //     )),
            ],
          ),
        ),
      ),
    );
  }
}

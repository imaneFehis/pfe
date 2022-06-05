import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:log_page_imane/controllers/favorite_controller.dart';
import 'package:log_page_imane/screens/hotel.dart';
import 'package:log_page_imane/screens/login_screen.dart';
import 'package:log_page_imane/screens/pickday.dart';

import '../data/api.dart';
import '../data/api_methods.dart';

class DetailsScreen extends StatefulWidget {
  Map<String, dynamic> data;

  DetailsScreen({required this.data});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  FavoriteController favoriteController = Get.find<FavoriteController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: .0)
                  ]),
                  child: Hero(
                    tag: widget.data['image'],
                    child: Image(
                      image: NetworkImage(
                          (widget.data['image'] as String).contains(api)
                              ? widget.data['image']
                              : api + widget.data['image']),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    top: 10,
                    left: 20,
                    child: Container(
                      // height: 15,
                      // width: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 15,
                          ),
                        ),
                      ),
                    )),
                GetBuilder<FavoriteController>(builder: (context) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(
                        favoriteController.isExist(widget.data['id'])
                            ? Icons.favorite
                            : Icons.favorite_border,
                      ),
                      iconSize: 30,
                      color: Colors.red,
                      splashColor: Colors.purple,
                      onPressed: () {
                        favoriteController.onChange(widget.data);
                      },
                    ),
                  );
                }),
              ],
            ),
            SizedBox(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                widget.data['name'],
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 2),
              child: Text(
                widget.data['hotel']['address'],
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(widget.data['description']),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('${widget.data['price']} '),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Reviews',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(widget.data['hotel']['rate'].toString()),
                            Icon(
                              Icons.star,
                              size: 12,
                              color: Color.fromARGB(255, 246, 246, 6),
                            ),
                            Icon(Icons.star,
                                size: 12,
                                color: Color.fromARGB(255, 246, 246, 6)),
                            Icon(Icons.star,
                                size: 12,
                                color: Color.fromARGB(255, 246, 246, 6)),
                            Icon(Icons.star_half,
                                size: 12,
                                color: Color.fromARGB(255, 246, 246, 6)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Recently booked',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 20,
                              width: 70,
                            ),
                            Positioned(
                                left: 20,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.red),
                                )),
                            Positioned(
                                left: 30,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blueAccent),
                                )),
                            Positioned(
                                left: 40,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.yellow),
                                )),
                            Positioned(
                                left: 50,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.green),
                                  child: Center(
                                    child: Text(
                                      '+3',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                  ),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Text(
                'Amenity',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                widget.data['is_airconditioning']
                    ? Expanded(
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        offset: Offset(0.0, 2.0),
                                        blurRadius: 10.0,
                                        spreadRadius: 6)
                                  ]),
                              child: Center(
                                child: Icon(
                                  Icons.air,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Airconditioner',
                              style: TextStyle(color: Colors.red),
                            )
                          ],
                        ),
                      )
                    : const SizedBox(),
                widget.data['is_toilet']
                    ? Expanded(
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        offset: Offset(0.0, 2.0),
                                        blurRadius: 10.0,
                                        spreadRadius: 6)
                                  ]),
                              child: Center(
                                child: Icon(
                                  Icons.wc,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'WC',
                              style: TextStyle(color: Colors.red),
                            )
                          ],
                        ),
                      )
                    : const SizedBox(),
                widget.data['is_shower']
                    ? Expanded(
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        offset: Offset(0.0, 2.0),
                                        blurRadius: 10.0,
                                        spreadRadius: 6)
                                  ]),
                              child: Center(
                                child: Icon(
                                  Icons.pool,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Shower',
                              style: TextStyle(color: Colors.red),
                            )
                          ],
                        ),
                      )
                    : const SizedBox(),
                widget.data['is_wifi']
                    ? Expanded(
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        offset: Offset(0.0, 2.0),
                                        blurRadius: 10.0,
                                        spreadRadius: 6)
                                  ]),
                              child: Center(
                                child: Icon(
                                  Icons.wifi,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'wifi',
                              style: TextStyle(color: Colors.red),
                            )
                          ],
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    DateTimeRange? dateTimeRange = await showDateRangePicker(
                      context: context,
                      firstDate: DateTime(2015),
                      lastDate: DateTime(2030),
                      initialDateRange: DateTimeRange(
                        start: DateTime.now(),
                        end: DateTime.now(),
                      ),
                    );
                    if (dateTimeRange != null) {
                      showDialogConfirmation(dateTimeRange);
                      await res(dateTimeRange, widget.data);
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 1.0),
                          )
                        ]),
                    alignment: Alignment.center,
                    child: Text(
                      'BOOK NOW',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                    //   child: Text(
                    // //       'Book now',
                    // //       style: TextStyle(
                    // //           fontWeight: FontWeight.w100,
                    // //           fontSize: 20,
                    // //           color: Colors.white),
                    // //     ),
                    // //   ),
                    // // ),

                    // child: Container(
                    //   margin: EdgeInsets.only(bottom: 10),
                    //   child: Row(
                    //     children: <Widget>[
                    //       Text(
                    //         TextStyle(color: Colors.white)

                    //         " BOOK NOW ",
                    //       ),

                    //       SizedBox(width: 25),
                    //     ],
                    //   ),
                    // ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ]),
    );
  }

  showDialogConfirmation(DateTimeRange dateTimeRange) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text("Confirmation"),
        content: Text(
          "Hotel booked at ${widget.data['name']}, \nFrom: ${dateTimeRange.start.toString().substring(0, 11)} \nTo: ${dateTimeRange.end.toString().substring(0, 11)}",
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context, 'ok'), child: Text('ok'))
        ],
      ),
    );
  }
}

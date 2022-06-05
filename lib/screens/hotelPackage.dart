import 'dart:math';

import 'package:flutter/material.dart';
import 'package:log_page_imane/screens/hotel.dart';
import 'package:log_page_imane/screens/hoteldetails.dart';

import '../components/room_widget.dart';

class HotelPackage extends StatelessWidget {
  HotelPackage({required this.data});
  List data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      child: ListView.separated(
          separatorBuilder: (_, index) => SizedBox(
                height: 10,
              ),
          itemCount: data.length,
          itemBuilder: (context, index) {
            return RoomWidget(data: data[index]);
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:log_page_imane/screens/hotelPackage.dart';

import '../data/api_methods.dart';

class RoomsByHotelScreen extends StatelessWidget {
  RoomsByHotelScreen({Key? key, required this.hotelId}) : super(key: key);
  int hotelId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFbdffff),
        centerTitle: true,
        title: const Text(
          'Rooms',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: FutureBuilder<List<dynamic>?>(
        future: getRoomsByHotel(hotelId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return HotelPackage(data: snapshot.data ?? []);
        },
      ),
    );
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'api.dart';

Future<List?> getData({String type = "hotels"}) async {
  String url = '$api/api/$type/';

  Response response = await dio.get(url);

  return response.data;
}

Future<List?> getRoomsByHotel(int hotelId) async {
  String url = '$api/api/rooms/hotel/$hotelId/';

  Response response = await dio.get(url);

  return response.data;
}

Future res(DateTimeRange dateTimeRange, Map<String, dynamic> room) async {
  String url = '$api/api/reservation/create/';
  var data = {
    'room': room['id'],
    'fromdate': dateTimeRange.start.toIso8601String().substring(0, 10),
    'todate': dateTimeRange.end.toIso8601String().substring(0, 10),
  };
  print(url);
  Response response = await dio.post(
    url,
    data: data,
    options: options,
  );

  return response.data;
}

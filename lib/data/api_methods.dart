import 'package:dio/dio.dart';

import 'api.dart';

List<Map> hotels = [];

Future<List?> getHotels() async {
  String url = '$api/api/hotels/';

  Response response = await dio.get(url);

  return response.data;
}

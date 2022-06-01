import 'package:dio/dio.dart';

const apiUrl = "http://10.0.16.15:8000";
Dio dio = Dio();

List<Map> hotels = [];

Future<List?> getHotels() async {
  String url = '$apiUrl/api/hotels/';

  Response response = await dio.get(url);

  return response.data;
}

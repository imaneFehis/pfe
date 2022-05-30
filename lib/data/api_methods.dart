import 'package:dio/dio.dart';

const apiUrl = "http://192.168.137.1:8000";
Dio dio = Dio();

List<Map> hotels = [];

Future<List?> getHotels() async {
  String url = '$apiUrl/api/hotels/';

  Response response = await dio.get(url);

  return response.data;
}
// f tlf mahbtch tatl3 chof wach tjini  aw dor apres tahbs
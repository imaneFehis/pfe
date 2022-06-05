import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController {
  List<Map<String, dynamic>> favorites = [];
  onChange(Map<String, dynamic> room) {
    String message = '';
    if (!isExist(room['id'])) {
      favorites.add(room);
      message = 'This item has been added to favorites';
    } else {
      favorites.removeWhere((element) => element['id'] == room['id']);
      message = 'This item has been removed from favorites';
    }
    Get.snackbar(
      "",
      "",
      titleText: SizedBox(),
      messageText: Center(
        child: Text(message),
      ),
    );
    update();
  }

  bool isExist(int id) =>
      favorites.indexWhere((element) => element['id'] == id) != -1;
}

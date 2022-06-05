import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:log_page_imane/controllers/favorite_controller.dart';

import '../utilities/constants.dart';
import '../utilities/travelcard.dart';
import 'hoteldetails.dart';

// to be pushed secondlty
class FavoriteTap extends StatelessWidget {
  FavoriteTap({Key? key}) : super(key: key);
  FavoriteController favoriteController = Get.find<FavoriteController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<FavoriteController>(builder: (_) {
          return ListView.builder(
            itemCount: favoriteController.favorites.length,
            itemBuilder: (_, index) => Container(
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: 8,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailsScreen(
                          data: favoriteController.favorites[index],
                        ),
                      ));
                },
                child: travelCard(
                  favoriteController.favorites[index]['image'],
                  favoriteController.favorites[index]['hotel']['title'],
                  favoriteController.favorites[index]['name'],
                  (favoriteController.favorites[index]['hotel']['rate']
                          as double)
                      .toInt(),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

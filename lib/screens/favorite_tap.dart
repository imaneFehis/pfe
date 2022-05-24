import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import '../utilities/travelcard.dart';

// to be pushed secondlty
class FavoriteTap extends StatelessWidget {
  const FavoriteTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: urls.length,
          itemBuilder: (_, index) => Container(
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
              vertical: 8,
            ),
            child: travelCard(
              urls[index],
              "Luxary Hotel",
              "Caroline",
              3,
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

Widget travelCard(
  String imgUrl,
  String hotelName,
  String location,
  int rating, {
  double width = 200,
  double? height,
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      image: DecorationImage(
        image: NetworkImage(imgUrl),
        fit: BoxFit.cover,
        scale: 2.0,
      ),
    ),
    width: width,
    height: height,
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              //this loop will allow us to add as many star as the rating
              for (var i = 0; i < rating; i++)
                Icon(
                  Icons.star,
                  color: Color(0xFFFE8C68),
                ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hotelName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

Color greenDark = const Color(0xff023537);
Color greenMed = const Color(0xff12999E);
Color greenLight = const Color(0xff4CB2B6);
Color greenTint1 = const Color(0xffC5DDDA);
Color greenTint2 = const Color(0xffE3F0EF);
Color greenTint3 = const Color(0xffE9F2F1);
Color dimGrey = const Color(0xff5C5C5C);
Color medGrey = const Color(0xffB0B0B0);
Color lightGrey = const Color(0xffEAEAEA);
Color whitishGrey = const Color(0xffF2F2F2);
Color redColor = const Color(0xffFF5C5C);

final kHintTextStyle = TextStyle(
  //nt3 hint
  color: Colors.black,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  fontSize: 14.0,
  //color: Color(0XFF8D6B48),
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);
//colot nt3 email passworld forget pasword dont have accont

final kBoxDecorationStyle = BoxDecoration(
  color: Colors.white,
  //color: Color(0xFFFE8C9AB),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);

List<String> urls = [
  'assets/hotel2.jpg',
  'assets/hotel3.jpg',
  'assets/hotel4.jpg',
  'assets/hotel5.jpg',
  'assets/hotel6.jpg',
];
const kBackgroundColor = Color.fromARGB(255, 253, 253, 253);
const kPrimaryColor = Color(0xFFFbdffff);

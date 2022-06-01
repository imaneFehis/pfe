import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class MyHotel extends StatefulWidget {
  const MyHotel({Key? key}) : super(key: key);

  @override
  State<MyHotel> createState() => _MyHotelState();
}

class _MyHotelState extends State<MyHotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Welcome",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "the perfect place to fnd ur hotel",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.green[700], fontSize: 15),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                // decoration: BoxDecoration(
                //     image:
                //         DecorationImage(image: AssetImage('assets/LOGO.png'))),
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    height: 60,
                    onPressed: () {},
                    child: Text(
                      "login",
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:log_page_imane/utilities/constants.dart';

class pickday extends StatefulWidget {
  @override
  _pickdayState createState() => _pickdayState();
}

class _pickdayState extends State<pickday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Navigate to a new screen on Button click'),
          backgroundColor: Colors.teal),
      body: Center(
        child: FlatButton(
          color: Colors.teal,
          textColor: Colors.white,
          onPressed: () {},
          child: Text('GO TO SCREEN 2'),
        ),
      ),
    );
  }
}

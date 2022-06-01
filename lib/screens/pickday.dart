import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pickday extends StatefulWidget {
  @override
  _pickdayState createState() => _pickdayState();
}

class _pickdayState extends State<pickday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text(''), backgroundColor: Color(0xFFFbdffff)),
      body: Center(
        child: FlatButton(
          color: Color(0xFFFbdffff),
          textColor: Colors.black,
          onPressed: () {
            //         DateTimeRange? dateTimeRange = await showDateRangePicker(
            //   context: context,
            //   firstDate: offerSended?.startDate ?? DateTime(2015),
            //   lastDate: DateTime(2030),
            //   initialDateRange: DateTimeRange(
            //     start: offerSended?.startDate ?? DateTime.now(),
            //     end: offerSended?.endDate ?? DateTime.now(),
            //   ),
            // );
          },
          child: Text('pick the day'),
        ),
      ),
    );
  }
}

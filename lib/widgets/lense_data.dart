import 'package:flutter/material.dart';
import 'package:lens_tracker/models/lense.dart';

class LenseData extends StatelessWidget {
  final Lense myLense =
    Lense(3, new Duration(hours: 120, minutes: 30), DateTime.now(), "Fortnightly");


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
          buildTimeRow(),
          SizedBox(height: 8),
          buildInfoRow()
        ]));
  }

  Row buildInfoRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          'Type: ${myLense.type}',
          style: TextStyle(fontSize: 16),
        ),
        Text(
          "Started: ${myLense.dateStarted.day}/${myLense.dateStarted.month}/${myLense.dateStarted.year}",
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }

  Row buildTimeRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: <Widget>[
            Text(
              "${myLense.days}",
              style: TextStyle(
                fontSize: 36,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              " Days",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "${myLense.totalWearTime.inHours}h ${myLense.totalWearTime.inMinutes % 60}m",
              style: TextStyle(
                fontSize: 36,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              " Wear Time",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

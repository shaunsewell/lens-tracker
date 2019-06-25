import 'package:flutter/material.dart';
import 'package:lens_tracker/models/lense.dart';
import 'package:provider/provider.dart';

class LenseData extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Consumer<Lense>(
      builder: (context, myLense, _) => Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
          buildTimeRow(myLense),
          SizedBox(height: 8),
          buildInfoRow(myLense)
        ])),
    );
  }

  Row buildInfoRow(Lense myLense) {
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

  Row buildTimeRow(Lense myLense) {
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
              "${myLense.stateTotalWearTime.floor()}h ${((myLense.stateTotalWearTime - myLense.stateTotalWearTime.floor()) * 60).floor()}m",
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

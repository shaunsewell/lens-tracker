import 'package:flutter/material.dart';

class LenseData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildTimeRow(),
          SizedBox(height: 8),
          buildInfoRow()
        ]
      )
    );
  }

  Row buildInfoRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text("Type: Fortnightly",
          style: TextStyle(
            fontSize: 16
          ),
        ),
        Text("Started: 1/4/19",
          style: TextStyle(
            fontSize: 16
          ),
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
              "10",
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
              "113h 30m",
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

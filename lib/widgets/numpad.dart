import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumPad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: 2.0,
        padding: EdgeInsets.fromLTRB(10, 100, 10, 0),
        primary: true,
        // Generate 9 widgets that display their index in the List.
        children: List.generate(15, (index) {
          return CupertinoButton(
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              '$index'
            ),
            onPressed: ()=>{},
          );
        })
      )
    );
  }
}

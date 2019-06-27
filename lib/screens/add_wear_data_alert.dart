import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lens_tracker/widgets/numpad.dart';

class AddWearDataAlert extends StatefulWidget {
  @override
  _AddWearDataAlertState createState() => _AddWearDataAlertState();
}

class _AddWearDataAlertState extends State<AddWearDataAlert> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.88,
        height: MediaQuery.of(context).size.height * 0.39,
        child: CupertinoPopupSurface(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: new LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return NumPad(constraints: constraints,);
              },
            )
          )
        ),
      ),
    );
  }
}
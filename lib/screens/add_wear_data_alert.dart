import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lens_tracker/widgets/numpad.dart';

class AddWearDataAlert extends StatefulWidget {
  @override
  _AddWearDataAlertState createState() => _AddWearDataAlertState();
}

class _AddWearDataAlertState extends State<AddWearDataAlert> {
  Duration initialtimer = new Duration();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.90,
        height: MediaQuery.of(context).size.height * 0.53,
        child: CupertinoPopupSurface(
          child: NumPad(),
        ),
      ),
    );
  }
}
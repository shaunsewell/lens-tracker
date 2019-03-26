import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddWearData extends StatefulWidget {
  @override
  _AddWearDataState createState() => _AddWearDataState();
}

class _AddWearDataState extends State<AddWearData> {
  Duration initialtimer = new Duration();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.4,
          child: new ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: new CupertinoTimerPicker(
              mode: CupertinoTimerPickerMode.hm,
              onTimerDurationChanged: (Duration changedtimer) {
                setState(() {
                  initialtimer = changedtimer;
                });
              },
            ),
          ) // This is where the Update contact data fields go
    );
  }
}
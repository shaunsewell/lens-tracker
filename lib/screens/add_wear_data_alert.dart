import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AddWearDataAlert extends StatefulWidget {
  @override
  _AddWearDataAlertState createState() => _AddWearDataAlertState();
}

class _AddWearDataAlertState extends State<AddWearDataAlert> {
  Duration initialtimer = new Duration();

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
        contentPadding: EdgeInsets.zero,
        backgroundColor: Colors.grey[300],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.66,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Flexible(
                    child: CupertinoPicker(
                      scrollController: FixedExtentScrollController(initialItem: 0),
                      itemExtent: 16.0,
                      onSelectedItemChanged: (int value) {},
                      children: List<Widget>.generate(25, (int index) {
                        return Container(
                          child: Center(
                            child: Text('$index')
                          ),
                        );
                      }),
                    ),
                  ),
                  Flexible(
                    child: CupertinoPicker(
                      scrollController: FixedExtentScrollController(initialItem: 0),
                      itemExtent: 16.0,
                      onSelectedItemChanged: (int value) {},
                      children: List<Widget>.generate(4, (int index) {
                        final int timeIncrement = index * 15;
                        return Container(
                          child: Center(
                            child: Text('$timeIncrement')
                          ),
                        );
                      }),
                    ),
                  )
                ],
              ))
          // Ok and Cancel buttons
        ]);
  }
}

// new CupertinoTimerPicker(
//               mode: CupertinoTimerPickerMode.hm,
//               onTimerDurationChanged: (Duration changedtimer) {
//                 setState(() {
//                   initialtimer = changedtimer;
//                 });
//               },
//             ),

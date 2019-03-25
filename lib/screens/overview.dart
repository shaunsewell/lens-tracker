import 'package:flutter/cupertino.dart';
import 'package:lens_tracker/widgets/navigation.dart';
import 'package:flutter/material.dart';

class OverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context) {
        return CupertinoPageScaffold(
            navigationBar:
                customNavigationBar("Overview", addButton: _addButton(context)),
            child: Column(
              children: [
                //Ads
                //Count/Total Time row
                buttonSection,
                //Graph
                //Button
              ],
            ));
      },
    );
  }

  static Column _buildButtonColumn(Color color, String time, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
        Text(
          time,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  static Color color = CupertinoColors.activeBlue;
  static IconData calendarIcon = IconData(
    0xF3F3,
    fontFamily: CupertinoIcons.iconFont,
    fontPackage: CupertinoIcons.iconFontPackage,
  );

  final Widget buttonSection = Container(
    padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, '10', 'Wears'),
        _buildButtonColumn(color, '140h 35m', 'Time Worn'),
      ],
    ),
  );

  CupertinoButton _addButton(BuildContext context) {
    return CupertinoButton(
        padding: EdgeInsets.zero,
        child: Icon(
          CupertinoIcons.add,
          size: 40,
          color: CupertinoColors.activeGreen,
        ),
        onPressed: () async {
          await showCupertinoModalPopup<void>(
              context: context,
              builder: (BuildContext context) {
                Container(
                  height: 200.0,
                  padding: const EdgeInsets.only(top: 6.0),
                  color: CupertinoColors.white,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      color: CupertinoColors.black,
                      fontSize: 22.0,
                    ),
                    child: GestureDetector(
                      // Blocks taps from propagating to the modal sheet and popping.
                      onTap: () {},
                      child: SafeArea(
                        top: false,
                        child: new Text("Hello"),
                      ),
                    ),
                  ),
                );
              }
          );
        }
//        {
//        Navigator.of(context).push(
//          CupertinoPageRoute(builder: (context){
//            return AddWearData("Some Dataz");
//          }, fullscreenDialog: true)
//        );
//      },
        );
  }
}

class AddWearData extends StatelessWidget {
  const AddWearData(this.data);

  final String data;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Data page"),
      ),
      child: Center(
        child: Text("Data supplied $data"),
      ),
    );
  }
}

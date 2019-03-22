
import 'package:flutter/cupertino.dart';
import 'package:lens_tracker/widgets/navigation.dart';

class OverviewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context){
        return CupertinoPageScaffold(
          navigationBar: customNavigationBar(),
          child: Column(
            children: [
              //Ads
              //Count/Total Time row
              buttonSection,
              //Graph
              //Button
            ],
          )
        );
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
        ),),
      ],
    );
  }

  static Color color = CupertinoColors.activeBlue;
  static IconData calendarIcon = IconData(0xF3F3, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage,);

  final Widget buttonSection = Container(
    padding: const EdgeInsets.only(top:12.0, bottom: 12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, '10', 'Wears'),
        _buildButtonColumn(color, '140h 35m', 'Time Worn'),
      ],
    ),
  );
}

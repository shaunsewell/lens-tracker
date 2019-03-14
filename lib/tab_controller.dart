import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:lens_tracker/screens/overview.dart';
import 'package:lens_tracker/screens/history.dart';
import 'package:lens_tracker/screens/settings.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(
          icon: Icon(
              IconData(0xF3F3,      // Calender //TODO Make into an icon const
                fontFamily: CupertinoIcons.iconFont,
                fontPackage: CupertinoIcons.iconFontPackage,
              )
          ),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.book),
          title: Text('History'),
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.settings),
          title: Text('Settings'),

        ),
      ]),
      tabBuilder: (context, index) {
        if (index == 0) {
          return OverviewScreen();
        } else if (index == 1) {
          return HistoryScreen();
        } else {
          return SettingsScreen();
        }
      },
    );
  }
}
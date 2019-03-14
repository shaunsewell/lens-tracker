import 'package:flutter/cupertino.dart';

class SettingsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context){
        return CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              middle: Text("Settings"),
            ),
            child: ListView(
              children: [
                Text("This is the settings"),

              ],
            )
        );
      },
    );
  }
}
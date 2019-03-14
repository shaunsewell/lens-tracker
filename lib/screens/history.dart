import 'package:flutter/cupertino.dart';

class HistoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context){
        return CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              middle: Text("History"),
            ),
            child: ListView(
              children: [
                Text("This is the history"),
                //Ads
                //Count/time/graph row items
              ],
            )
        );
      },
    );
  }
}
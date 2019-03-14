
import 'package:flutter/cupertino.dart';

class OverviewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context){
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text("Overview"),
          ),
          child: ListView(
            children: [
              Text("This is the overview"),
              //Ads
              //Count/Total Time row
              //Graph
              //Button
            ],
          )
        );
      },
    );
  }
}

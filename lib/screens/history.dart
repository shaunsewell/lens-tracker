import 'package:flutter/cupertino.dart';
import 'package:lens_tracker/widgets/navigation.dart';

class HistoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context){
        return CupertinoPageScaffold(
          navigationBar: customNavigationBar(),
          child: Text("History"),
        );
      },
    );
  }
}
import 'package:flutter/cupertino.dart';

class HistoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context){
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            backgroundColor: Color.fromRGBO(89, 172, 255, 1),
            border:Border.all(color: Color.fromRGBO(89, 172, 255, 1)),
          ),
          backgroundColor: Color.fromRGBO(89, 172, 255, 1),
          child: Text("History"),
        );
      },
    );
  }
}
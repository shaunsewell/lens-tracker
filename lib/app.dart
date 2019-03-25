import 'package:lens_tracker/tab_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: HomeScreen(),
//      localizationsDelegates: [
//        DefaultMaterialLocalizations.delegate,
//        DefaultWidgetsLocalizations.delegate,
//      ],
    );
  }
}

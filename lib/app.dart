
import 'package:flutter/material.dart';
import 'package:lens_tracker/screens/home.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

// return CupertinoApp(
//   home: HomeScreen(),
//      localizationsDelegates: [
//        DefaultMaterialLocalizations.delegate,
//        DefaultWidgetsLocalizations.delegate,
//      ],

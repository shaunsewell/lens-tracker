
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lens_tracker/screens/home.dart';
import 'package:lens_tracker/screens/settings.dart';
import 'package:lens_tracker/screens/history.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default Brightness and Colors
        brightness: Brightness.dark,
        primaryColor: Colors.grey[600],
        accentColor: Colors.cyan[300],
        scaffoldBackgroundColor: Colors.grey[900],       //Color.fromRGBO(89, 172, 255, 1),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.grey[600],
          foregroundColor: Colors.grey[600],
          elevation: 1.0,

          ),
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder> {
        '/settings': (BuildContext context) => SettingsScreen(),
        '/history': (BuildContext context) => HistoryScreen(),
      }
    );
  }
}

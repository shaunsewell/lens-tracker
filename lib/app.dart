
import 'package:flutter/material.dart';
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
        // brightness: Brightness.dark,
        // primaryColor: Colors.lightBlue[800],
        // accentColor: Colors.cyan[600],
        scaffoldBackgroundColor: Color.fromRGBO(89, 172, 255, 1),
        // Define the default Font Family
        //fontFamily: 'Montserrat',
        
        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
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

// return CupertinoApp(
//   home: HomeScreen(),
//      localizationsDelegates: [
//        DefaultMaterialLocalizations.delegate,
//        DefaultWidgetsLocalizations.delegate,
//      ],

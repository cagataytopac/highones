import 'package:flutter/material.dart';
import 'package:highones/views/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {
  final routes = <String, WidgetBuilder>{
    // HomePage.tag: (context) => HomePage(),
    
  };


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TYT TÜRKÇE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        primaryColor: Colors.purple[900],
        fontFamily: 'Nunito',
      ),
      home: SplashScreen(),
      routes: routes,
    );
  }
}





import 'dart:async';
import 'package:flutter/material.dart';
import 'package:highones/views/firstScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => MyHomePage()));
        //  builder: (_) => HomePage()));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              gradient: LinearGradient(
                colors: [Theme.of(context).primaryColor, Theme.of(context).accentColor],
                begin: Alignment.center,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 190.0,
                height: 190.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/1.png')),
                  borderRadius: BorderRadius.all(Radius.circular(24.0)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
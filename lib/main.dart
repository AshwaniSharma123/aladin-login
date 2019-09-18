import 'dart:async';
import 'package:aladin_login/first.dart';
import 'package:flutter/material.dart';
import 'first.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:  SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/first': (BuildContext context) =>  MyHomePage()
    },
  ),
  );
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() =>  _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration =  Duration(seconds: 2);
    return  Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/first');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      body:Stack(
        children: <Widget>[
          Center(
            child:  Image.asset('Assets/splash.png',width: size.width,height: size.height,fit: BoxFit.fill,),
          ),
          Center(
            child:  Image.asset('Assets/image.png',width: 170,height: 170,),
          ),
        ],
      ),
    );
  }
}



//import 'package:flutter/material.dart';
//
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      color: Color(0xffffffff),
//      child: Stack(
//        children: [
//          Padding(
//            padding:  EdgeInsets.only(bottom: 2.0),
//            child:ClipPath(
//              clipper: ClippingClass(),
//              child: Container(
//                width: MediaQuery
//                    .of(context)
//                    .size
//                    .width,
//                height: 320.0,
//                decoration: BoxDecoration(
//                    image: DecorationImage(
//                        fit: BoxFit.fill,
//                        image: NetworkImage(
//                            "https://images.unsplash.com/photo-1526906346362-d9725bfeeb3c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"))
//                ),
//              ),
//            )
//          ),



//end of clipping








//          Positioned(
//              top: 270,
//              left: 18.0,
//
//              child: Padding(
//                padding: const EdgeInsets.all(8.0),
//                child: Icon(FontAwesomeIcons.play,
//                    color: new Color(0xffd60506),
//                    size: 40.0),
//              )
//          ),
//
//        ],
//      ),
//    );
//  }
//}
//
//class ClippingClass extends CustomClipper<Path> {
//  @override
//  Path getClip(Size size) {
//    var path = Path();
//    path.lineTo(0.0, size.height-40);
//    path.quadraticBezierTo(size.width / 4, size.height,
//        size.width / 2, size.height);
//    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
//        size.width, size.height - 40);
//    path.lineTo(size.width, 0.0);
//    path.close();
//    return path;
//  }
//
//  @override
//  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
//}

























//import 'dart:async';
//
//import 'package:aladin_login/first.dart';
//import 'package:flutter/material.dart';
//import 'first.dart';
//
//void main() {
//  runApp(new MaterialApp(
//    home: new SplashScreen(),
//    routes: <String, WidgetBuilder>{
//      '/first': (BuildContext context) =>  first()
//    },
//  ));
//}
//
//class SplashScreen extends StatefulWidget {
//  @override
//  _SplashScreenState createState() =>  _SplashScreenState();
//}
//
//class _SplashScreenState extends State<SplashScreen> {
//  startTime() async {
//    var _duration =  Duration(seconds: 2);
//    return  Timer(_duration, navigationPage);
//  }
//
//  void navigationPage() {
//    Navigator.of(context).pushReplacementNamed('first');
//  }
//
//  @override
//  void initState() {
//    super.initState();
//    startTime();
//  }
//  @override
//  Widget build(BuildContext context) {
//Size size = MediaQuery.of(context).size;
//    return  Scaffold(
//      body:Stack(
//        children: <Widget>[
//          Center(
//            child:  Image.asset('Assets/splash.png',width: size.width,height: size.height,),
//          ),
//          Center(
//            child:  Image.asset('Assets/image.png',width: 170,height: 170,),
//          ),
//        ],
//      ),
//    );
//  }
//}
//
//
//

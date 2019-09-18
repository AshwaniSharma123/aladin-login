import 'package:flutter/material.dart';
import 'third.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child:
       SingleChildScrollView(
         child:  Stack(
           children: <Widget>[
             Padding(
                 padding:  EdgeInsets.only(bottom: 2.0),
                 child:ClipPath(
                   clipper: ClippingClass(),
                   child: Container(
                     height: 450,
                     width: MediaQuery.of(context).size.width,
                     color: Colors.blue,
                   ),
                 )
             ),
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 SizedBox(height: 10.0,),

                 Container(
                   margin: EdgeInsets.fromLTRB(15, 80, 15, 80),
                   decoration:  BoxDecoration(color: Colors.white,
                       borderRadius:  BorderRadius.circular(20.0),
                       border:  Border.all(color: Colors.grey)
                   ),
                   child: Column(
                     children: <Widget>[
                       SizedBox(height: 10.0,),
                       Padding(
                         padding: EdgeInsets.all(10.0),
                         child:
                         TextFormField(
                           cursorColor: Colors.amberAccent,
                           decoration: InputDecoration(
                             border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),
                             ),
                             hintText: 'User Name',
                             labelText: "USER",
                             prefixIcon: Icon(
                               Icons.person,
                               color: Colors.blueAccent,
                             ),
                           ),

                           style: TextStyle(
                             fontSize: 30.0,
                             color: Colors.black,
                           ),
                         ),
                       ),
                       SizedBox(height: 10.0,),
                       Padding(
                         padding: EdgeInsets.all(10.0),
                         child: TextField(
                           cursorColor: Colors.amberAccent,
                           decoration: InputDecoration(
                             border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),
                             ),
                             hintText: 'Password',
                             labelText: 'PASSWORD',
                             prefixIcon: Icon(
                               Icons.lock_outline,
                               color: Colors.blueAccent,
                             ),),
                           style: TextStyle(
                             fontSize: 30.0,
                             color: Colors.black,
                           ),
                         ),
                       ),
                       SizedBox(height: 90.0,)
                     ],
                   ),
                 ),
                 SizedBox(height: 10.0,),
                 Container(
                   child: Image.asset('Assets/image.png',width: 170,height: 170,),
                 ),

                 SizedBox(height: 5,),
                 Text(
                   " Don't have an account?",
                   style: TextStyle(
                     fontSize: 20.0,
                     color: Colors.black54,
                     fontWeight: FontWeight.w400,
                   ),
                 ),
                 FlatButton(
                   child: Text('Register here',
                     style: TextStyle(
                       color: Colors.pink,
                       fontSize: 20.0,
                     ),),
                   splashColor: Colors.pinkAccent,
                   onPressed: (){
                     Navigator.pushReplacement(
                       context,
                       MaterialPageRoute(builder: (context) => third()),
                     );
                   },
                 ),
                 Container(
                   margin: EdgeInsets.fromLTRB(15, 80, 15, 80),
                   decoration:  BoxDecoration(color: Colors.white,
                       borderRadius:  BorderRadius.circular(20.0),
                       border:  Border.all(color: Colors.grey)
                   ),
                   child: Column(
                     children: <Widget>[
                     ],
                   ),
                 ),
               ],
             ),
             Positioned(
               bottom: 50,
               //top: 50,
               child:Container(
                 alignment: Alignment.center,
                 height: MediaQuery.of(context).size.height,
                 width: MediaQuery.of(context).size.width,
                 child: InkWell(
                   onTap: (){
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => third()),
                     );
                   },
                   child:  Container(
                     height: 50.0,
                     width: 150,
                     decoration:  BoxDecoration(color: Colors.pinkAccent,
                         borderRadius:  BorderRadius.circular(25.0),
                         border:  Border.all(color: Colors.grey)
                     ),
                     child: Center(
                       child:Text(
                         '     SAVE     ',
                         style: TextStyle(
                             fontSize: 30.0,
                             color: Colors.white
                         ),
                       ),
                     ),
                   ),
                 ),),
             ),
           ],
         ),
       ),
      ),
    );
  }
}
class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height-40);
    path.quadraticBezierTo(size.width / 4, size.height,
        size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

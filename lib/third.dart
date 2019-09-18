import 'package:aladin_login/first.dart';
import 'package:flutter/material.dart';


class third extends StatefulWidget {
  @override
  _thirdState createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Container(
          height:MediaQuery.of(context).size.height,
          color: Colors.blue,
      child:SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(15, 80, 15, 80),
              decoration:  BoxDecoration(color: Colors.white,
                  borderRadius:  BorderRadius.circular(20.0),
                  border:  Border.all(color: Colors.grey)
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 40.0),
                  Image.asset('Assets/image.png',width: 170,height: 170,),
                  Text(
                    'Create an account',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 25.0,
                      color: Colors.black54
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child:
                    TextField(
                      cursorColor: Colors.amberAccent,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),
                        ),
                        hintText: 'Email',
                        labelText: "Email",
                        prefixIcon: Icon(
                          Icons.email,
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
                  SizedBox(height: 10.0,),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child:
                    TextField(
                      cursorColor: Colors.amberAccent,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),
                        ),
                        hintText: 'Confirm Password',
                        labelText: "Confirm Pattern",
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.blueAccent,
                        ),
                      ),

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

           SizedBox(height: 150.0,),
            Positioned(
              bottom: 60.0,
              //top: 50,
              child:Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child:
                InkWell(
                  onTap: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
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
                        '     Register     ',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

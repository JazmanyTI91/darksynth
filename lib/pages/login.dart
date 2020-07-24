import 'package:darksynth/animation/fadeAnimation.dart';
import 'package:darksynth/pages/registrer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: LoginPage(),
));


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Aqui van los widgets independientes que creemos
              crearClip(context),
              crearButtons(context),
            ],
          ),
      ),
    );
  }
}


Widget crearClip(BuildContext context) {
  final _screenSize = MediaQuery.of(context).size;

  return ClipPath(
    clipper: ClipperMenu(),
    child: FadeAnimation(1.0, Container(
      width: double.infinity,
      height: _screenSize.height * 0.7,
      decoration: BoxDecoration(
        color: Color.fromRGBO(126, 229, 183, 1),
        image: DecorationImage(
          image: AssetImage('assets/elepant.png')
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          FadeAnimation(2.0, Container(
            width: _screenSize.width * 0.8,
            height: 50,
            //color: Color.fromRGBO(255, 0, 0, 0),
            color: Colors.white70,
            child: TextField(
              decoration: InputDecoration(
                border: new OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                    borderSide: BorderSide(color: Colors.white70, style: BorderStyle.solid)),
                prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
            ),
          )),
          SizedBox(height: 5),
          FadeAnimation(2.0, Container(
            width: _screenSize.width * 0.8,
            height: 50,
            //color: Color.fromRGBO(255, 0, 0, 0),
            color: Colors.white70,
            child: TextField(
              decoration: InputDecoration(
                border: new OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                    borderSide: BorderSide(color: Colors.white70, style: BorderStyle.solid)),
                prefixIcon: const Icon(
                  Icons.lock_outline,
                  color: Colors.black,
                ),
              ),
            ),
          )),
          SizedBox(height: 5),
          FadeAnimation(2.0, Container(
            width: _screenSize.width * 0.3,
            height: 30,
            color: Colors.black87,
            margin: EdgeInsets.only(top: 50),
            child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 23), textAlign: TextAlign.center),
          )),
        ],
      ),
    )),

  );
}


Widget crearButtons(BuildContext context) {
  final _screenSize = MediaQuery.of(context).size;

  return Container(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: _screenSize.height * 0.3),
          InkWell(
            onTap: (){},
            child: Text("Forgot password", style: TextStyle(fontSize: 17)),
          ),
        SizedBox(width: _screenSize.width* 0.2),
        InkWell(
          onTap: (){
            Navigator.pushReplacementNamed(context, 'registro');
          },
          child: Text("Sign up", style: TextStyle(fontSize: 17)),
        ),
      ],
    ),
  );
}


class ClipperMenu extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height-60);
    var controlPoint = Offset(50, size.height);
    var endPoint = Offset(size.width/2, size.height);
    path.quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

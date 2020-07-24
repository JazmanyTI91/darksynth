import 'package:darksynth/pages/login.dart';
import 'package:darksynth/pages/registrer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dark Synth App',
        initialRoute: 'login',
        routes: {
          'login'     :  (BuildContext context) => LoginPage(),
          'registro'  :  (BuildContext context) => RegistrerPage(),
        },
        theme: ThemeData(
            primaryColor: Colors.deepPurple
        ),
      );


  }

}

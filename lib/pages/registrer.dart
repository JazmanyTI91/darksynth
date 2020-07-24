import 'dart:ui';

import 'package:flutter/material.dart';

class RegistrerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(126, 229, 183, 1),
        leading: IconButton(icon: Icon(Icons.arrow_back),
        onPressed: ()=> Navigator.pushReplacementNamed(context, 'login')),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: _screenSize.height * 0.7,
          //color: Color.fromRGBO(126, 229, 183, 1),
          color: Colors.white,
          child: Column(
            children: [
              createForm(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget createForm(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Form(
      child: SafeArea(
        child: Theme(
          data: new ThemeData(
            primaryColor: Colors.cyan,
            primaryColorDark: Colors.black,
          ),
          child: Container(
            width: _screenSize.width * 0.9,
            margin: EdgeInsets.only(top: 30),
            child: TextField(
              textAlign: TextAlign.start,
              decoration: new InputDecoration(
                hintStyle: TextStyle(color: Colors.black54),
                  border: new OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                      borderSide: new BorderSide(color: Colors.white70)),
                  hintText: 'example: Adrian Juarez Rodriguez',
                  //helperText: 'Your complete name',
                  labelText: 'Your name',
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  //prefixText: ' ',
                  //suffixText: 'USD',
                  suffixStyle: const TextStyle(color: Colors.black45)),
            ),
          ),
        ),
        ),
      );
  }
}

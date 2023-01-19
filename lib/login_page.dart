import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/material/raised_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _hide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
    );
  }

  get _buildBody => Container(
        alignment: Alignment.center,
        child: _buildPasswordTextField,
      );

  get _buildEmailTextField => Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.pink.withOpacity(0.8),
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.all(40),
        padding: EdgeInsets.all(20),
        child: TextField(
          style: TextStyle(color: Colors.white),
          autocorrect: false,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: "Enter email",
            hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
            // prefix: Text("+855")
            prefixIcon: GestureDetector(
              onTap: (){
                print("icon email clicked");
              },
              child: Icon(
              Icons.email,
              color: Colors.white,
            ),),
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(Icons.send, color: Colors.white),
              onPressed: () {
                print("Send email");
              },
            ),
          ),
        ),
      );

  get _buildPasswordTextField => InkWell(
        onTap: () {
          print("clicked");
        },
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.pink.withOpacity(0.8),
            borderRadius: BorderRadius.circular(20),
          ),
          margin: EdgeInsets.all(40),
          padding: EdgeInsets.all(20),
          child: TextField(
            style: TextStyle(color: Colors.white),
            autocorrect: false,
            keyboardType: TextInputType.text,
            obscureText: _hide, // for hide password
            decoration: InputDecoration(
              hintText: "Enter password",
              hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
              // prefix: Text("+855")
              prefixIcon: InkWell(
                child: Icon(Icons.vpn_key, color: Colors.white),
                onTap: () {
                  print("Key clicked");
                },
                onLongPress: () {
                  print("Long press");
                },
              ),
              border: InputBorder.none,
              suffixIcon: IconButton(
                icon: Icon(
                    _hide ? Icons.visibility : Icons.visibility_off,
                    color: Colors.white),
                onPressed: () {
                  setState(() {
                    _hide = !_hide;
                  });
                },
              ),
            ),
          ),
        ),
      );

  get _buildRaisedButton => SizedBox(
        width: 300,
        height: 50,
        child: RaisedButton(
          color: Colors.pink,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Text("Login"),
          onPressed: () {
            print("Raised button pressed");
          },
        ),
      );

  get _buildMaterialButton => SizedBox(
    width: 300,
    height: 50,
    child: MaterialButton(
      // color: Colors.pink,
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Text(
        "Login",
        style: TextStyle(
            color: Colors.blue, decoration: TextDecoration.underline),
      ),
      onPressed: () {
        print("Raised button pressed");
      },
    ),
  );
}

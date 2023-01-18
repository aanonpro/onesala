import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
    );
  }

  get _buildBody => Container(
        alignment: Alignment.center,
        child: _buildEmailTextField,
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
            prefixIcon: Icon(
              Icons.email,
              color: Colors.white,
            ),
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
            obscureText: true,
            // for hide password
            decoration: InputDecoration(
              hintText: "Enter password",
              hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
              // prefix: Text("+855")
              prefixIcon: InkWell(
                child: Icon(Icons.vpn_key, color: Colors.white),
                onTap: () {
                  print("Key clicked");
                },
                onLongPress: (){
                  print("Long press");
                },
              ),
              border: InputBorder.none,
              suffixIcon: IconButton(
                icon: Icon(Icons.visibility, color: Colors.white),
                onPressed: () {
                  print("Send email");
                },
              ),
            ),
          ),
        ),
      );

}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttericon/fontelico_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/elusive_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final _scaffoldKey = new GlobalKey<ScaffoldState>();
    return Scaffold(
      // key: _scaffoldKey,
      appBar: _buildAppBar,
      body: _buildBody,
      drawer: _buildDrawer,
      bottomNavigationBar: _buildBottomNav,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        foregroundColor: Colors.yellowAccent,
        child: Icon(Icons.delete),
        onPressed: () {
          SnackBar snackBar = SnackBar(
            content: Text('Hello'),
            backgroundColor: Colors.deepOrange,
            duration: Duration(seconds: 3),
            action: SnackBarAction(
              label: "Undo",
              onPressed: () {
                print("you clicked yes");
              },
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }

  _showSnackBar(String text, {int second = 2}) {
    SnackBar snackBar = SnackBar(
      content: Text(text),
      duration: Duration(seconds: second),
      action: SnackBarAction(
        label: "yes",
        onPressed: () {
          print("you clicked yes");
        },
      ),
    );
    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  get _buildBottomNav => BottomNavigationBar(
        currentIndex: 0,
        onTap: (int index) {},
        backgroundColor: Colors.grey[200],
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.deepPurple,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline), label: "Play"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      );

  final logo = "https://www.pngarts.com/files/3/Logo-PNG-Transparent-Image.png";

  // method private
  get _buildAppBar {
    return AppBar(
      backgroundColor: Colors.amber,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            child: Text('Movie'),
            onTap: () => {print("movic click")},
          ),
          InkWell(
            child: Text('TV show'),
            onTap: () => {print("Tv show click")},
          ),
          InkWell(
            child: Text('Trending'),
            onTap: () => {print("Trending click")},
          )
        ],
      ),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          child: Image.network(logo),
          onTap: () => {
            print("click 0"),
          },
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            _showSnackBar("setting click ", second: 2);
          },
        ),
      ],
    );
  }

  final _img = "https://www.thediaryofanomad.com/wp-content/w3-webp/uploads/2021/02/waterfall-quotes-waterfall-captions-10-1.jpgw3.webp";
  get _buildBody => Container(
        alignment: Alignment.center,
        color: Colors.blue,
        // padding: EdgeInsets.only(left: 10, top: 30, right: 10, bottom: 30),
        child: Container(
          width: 200,
          height: 200,
          transform: Matrix4.rotationZ(0.2),
          decoration: BoxDecoration(
              color: Colors.pink,
              // borderRadius: BorderRadius.circular(20),

              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
              ),

              // shape: BoxShape.circle,
              gradient: LinearGradient(
                begin:  Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.2, 0.8],
                colors: [Colors.pink, Colors.deepPurple]),
            // image: DecorationImage(
            //   fit: BoxFit.cover,
            //   image: NetworkImage(_img),
            // ),
            boxShadow: [
              BoxShadow(color: Colors.white, offset: Offset(5,5), blurRadius: 1.2, spreadRadius: 5.0
            )],
          ),

          child: Text(
            "The Fuck You",
            style: TextStyle(
              fontSize: 60,
              letterSpacing: 3,
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );

  get _buildDrawer => Drawer();

  get _buildBottom => BottomAppBar(
        color: Colors.amber.withOpacity(0.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.play_circle_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.group),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
            ),
          ],
        ),
      );
}

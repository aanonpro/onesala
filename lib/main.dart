import 'dart:math';

import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody,
      drawer: _buildDrawer,
      bottomNavigationBar: _buildBottomNav,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        foregroundColor: Colors.yellowAccent,
        child: Icon(Icons.add),
        onPressed: (){
          print("Add");
        },
      ),
    );
  }

  get _buildBottomNav => BottomNavigationBar(
    currentIndex: 0,
      onTap: (int index) {

      },
      backgroundColor: Colors.grey[200],
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.deepPurple,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline),
              label: "Play"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings"),
        ],
      );

  // method private
  get _buildAppBar {
    String logo =
        "https://www.pngarts.com/files/3/Logo-PNG-Transparent-Image.png";
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
          onPressed: () {},
        ),
      ],
    );
  }

  get _buildBody {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      child: Text('this is container'),
    );
  }

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

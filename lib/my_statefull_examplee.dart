import 'package:flutter/material.dart';

class MyStatefulExample extends StatefulWidget {
  const MyStatefulExample({Key? key}) : super(key: key);

  @override
  State<MyStatefulExample> createState() => _MyStatefulExampleState();
}

class _MyStatefulExampleState extends State<MyStatefulExample> {

  bool _dark = false;
  bool _show = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: Container(
        color: _dark ? Colors.grey : Colors.white,
      ),
      floatingActionButton: _show ? _buildFloating : null,
    );
  }
  
  get _buildFloating => FloatingActionButton(
    onPressed: (){
      print("floating");
    },
    child: Icon(Icons.home),
  );

  get _buildAppBar => AppBar(
    backgroundColor: _dark == true ? Colors.indigo : Colors.lime,
    title: Text("Stateful example"),
    actions: [
      IconButton(icon: Icon(Icons.settings),onPressed:(){
        print("setting click");
        setState(() {
          _show = !_show;
        });
      },),
      IconButton(icon: Icon(Icons.play_circle_outline),onPressed:(){
        setState(() {
          // if(_dark == true){
          //   _dark = false;
          // }else{
          //   _dark = true;
          // }
          _dark = !_dark;
        });
      },),
    ],
  );
}

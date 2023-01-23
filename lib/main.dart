import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttericon/fontelico_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:onesala_flutter/login_page.dart';
import 'package:onesala_flutter/main_page.dart';

import 'banner_page.dart';
import 'my_home.dart';
import 'my_statefull_examplee.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}



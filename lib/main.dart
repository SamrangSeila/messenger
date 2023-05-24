import 'package:flutter/material.dart';
import 'package:messenger/ListGenerate/Views/list_generate.dart';

import 'Bottomnavigator.dart';
import 'Facebook.dart';
import 'Setting.dart';
import 'TapViewFacebook.dart';
import 'View/screens/Counter_Screen_reactive.dart';
import 'View/screens/counter_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:    FacebookView(),
    );
  }
}


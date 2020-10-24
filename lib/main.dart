import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/drawer.dart';
import 'package:flutter_app/page2.dart';
import 'package:http/http.dart';

import 'listview.dart';

Map map;
List name;
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        'About':(context)=>Page2(),
        'HomePage':(context)=>MyHomePage(),
      },

    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Nav(),
      appBar: AppBar(
        title: Text('HOME'),
        backgroundColor: Colors.deepPurple[400],
      ),
      body: SingleChildScrollView(
        child: flower(),
      ),

    );
  }
}



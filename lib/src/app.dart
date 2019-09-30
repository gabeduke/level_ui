import 'package:flutter/material.dart';
import 'package:level_ui/src/resources/config.dart';
import 'package:level_ui/src/home_page.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return new MaterialApp(
      title: config.appName,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}
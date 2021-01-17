import 'package:compareapp/My.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'compareApp',
      home: My(),
      debugShowCheckedModeBanner: false,
    );
  }
}

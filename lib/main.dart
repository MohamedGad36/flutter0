import 'package:flutter/material.dart';
import 'FirstImage.dart';
import 'StartPage.dart';
import 'Videos.dart';
import 'bluePage.dart';


void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WALK',
      home: Start(),
    );
  }
}

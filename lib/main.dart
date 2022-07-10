import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/homeScreen.dart';
import 'package:flutter_application_1/screens/licious.dart';
import 'package:flutter_application_1/screens/liciousBidding.dart';
import 'package:flutter_application_1/screens/sectionPage.dart';
import 'package:flutter_application_1/screens/startingPage.dart';
import 'package:flutter_application_1/screens/startupList.dart';
import 'package:flutter_application_1/screens/startupend.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
          //primarySwatch: Colors.blue,
          ),
      home: const homeScreen(),
    );
  }
}

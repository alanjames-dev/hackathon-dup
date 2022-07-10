import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screens/homeScreen.dart';

class idea extends StatefulWidget {
  const idea({Key? key}) : super(key: key);

  @override
  State<idea> createState() => _ideaState();
}

class _ideaState extends State<idea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            'Give wings to your idea',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              margin: const EdgeInsets.only(right: 10, left: 10),
              child: new TextField(
                decoration: new InputDecoration(
                  hintText: 'Abstract',
                ),
              )),
          SizedBox(
            height: 50,
          ),
          Container(
              margin: const EdgeInsets.only(right: 10, left: 10),
              child: new TextField(
                decoration: new InputDecoration(
                  hintText: 'Capital',
                ),
              )),
          SizedBox(
            height: 50,
          ),
          Container(
              margin: const EdgeInsets.only(right: 10, left: 10),
              child: new TextField(
                decoration: new InputDecoration(
                  hintText: 'Idea Name',
                ),
              )),
          SizedBox(
            height: 50,
          ),
          Container(
              margin: const EdgeInsets.only(right: 10, left: 10),
              child: new TextField(
                decoration: new InputDecoration(
                  hintText: 'Segment',
                ),
              )),
          SizedBox(
            height: 50,
          ),
          Container(
              margin: const EdgeInsets.only(right: 10, left: 10),
              child: new TextField(
                decoration: new InputDecoration(
                  hintText: 'Pitch',
                ),
              )),
          SizedBox(
            height: 40,
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.black45,
                minimumSize: Size(300, 55),
                textStyle: const TextStyle(fontSize: 20, color: Colors.black),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const homeScreen()),
                );
              },
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
    )));
  }
}

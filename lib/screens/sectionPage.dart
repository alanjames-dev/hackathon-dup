import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/startupList.dart';

class section extends StatefulWidget {
  const section({Key? key}) : super(key: key);

  @override
  State<section> createState() => _sectionState();
}

class _sectionState extends State<section> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 55,
          ),
          Text(
            'Explore and Invest                                 ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
                child: TextField(
              decoration: InputDecoration(
                  hintText: "startup,ideas", border: OutlineInputBorder()),
            )),
          ),
          SizedBox(
            height: 45,
          ),
          Text(
            'Start-Ups                                                 ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 25,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 4),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            child: Image(
              image: AssetImage('assets/images/Vectorsss.png'),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const startups()),
              );
            },
          ),
          SizedBox(
            height: 45,
          ),
          Image(image: AssetImage('assets/images/Vector-6.png')),
        ],
      )),
    );
  }
}

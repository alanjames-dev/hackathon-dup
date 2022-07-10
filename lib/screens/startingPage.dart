import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screens/addIdea.dart';
import 'package:flutter_application_1/screens/sectionPage.dart';

class startingPage extends StatefulWidget {
  const startingPage({Key? key}) : super(key: key);

  @override
  State<startingPage> createState() => _startingPageState();
}

class _startingPageState extends State<startingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Invest")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(''),
            ),
            ListTile(
              title: const Text('Seek funds for your idea'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const idea()),
                );
              },
            ),
            ListTile(
              title: const Text('Seek funds for your start up'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Our terms and conditions'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                    height: 40,
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "startup,ideas",
                          border: OutlineInputBorder()),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black26,
              border: Border.all(
                color: Colors.black54,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Its a good day to start investing               ',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    'Make your first investment                ',
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 17, vertical: 4),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: const Text(
                          'Start here',
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const section()),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Image(
              image: AssetImage('assets/images/Vector.png'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Image(
              image: AssetImage('assets/images/Vector-3.png'),
            ),
          )
        ],
      )),
    );
  }
}

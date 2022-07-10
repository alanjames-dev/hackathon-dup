import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/startingPage.dart';

class startupend extends StatefulWidget {
  const startupend({Key? key}) : super(key: key);

  @override
  State<startupend> createState() => _startupendState();
}

class _startupendState extends State<startupend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 30),
              child: Image(
                image: AssetImage('assets/images/Vector19.png'),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 4),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Container(
                margin: EdgeInsets.only(left: 30, bottom: 10, top: 10),
                width: double.infinity,
                child: Image(
                  image: AssetImage('assets/images/Vector20.png'),
                  width: 500,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const startingPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

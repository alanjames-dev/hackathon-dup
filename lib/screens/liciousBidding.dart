import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/startupend.dart';

class bidding extends StatefulWidget {
  const bidding({Key? key}) : super(key: key);

  @override
  State<bidding> createState() => _biddingState();
}

class _biddingState extends State<bidding> {
  double _value = 134;
  double _nos = 122;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              child: Image(
                image: AssetImage('assets/images/Vector14.png'),
                width: 500,
                height: 150,
              ),
              margin: EdgeInsets.only(
                bottom: 20,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Image(
              image: AssetImage('assets/images/Vector15.png'),
              width: 500,
              height: 80,
            ),
            Container(
              child: Slider(
                min: 118.0,
                max: 150.0,
                divisions: 10,
                value: _value,
                label: _value.round().toString(),
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Image(
              image: AssetImage('assets/images/Vector16.png'),
              width: 500,
              height: 80,
            ),
            Container(
              child: Slider(
                min: 100.0,
                max: 1000.0,
                divisions: 45,
                value: _nos,
                label: _nos.round().toString(),
                onChanged: (value) {
                  setState(() {
                    _nos = value;
                  });
                },
              ),
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
                  image: AssetImage('assets/images/Vector17.png'),
                  width: 300,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const startupend()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/liciousBidding.dart';

class licious extends StatefulWidget {
  const licious({Key? key}) : super(key: key);

  @override
  State<licious> createState() => _liciousState();
}

class _liciousState extends State<licious> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
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
                    image: AssetImage('assets/images/Vector 10.png'),
                    width: 500,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const bidding()),
                  );
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}

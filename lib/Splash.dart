import 'dart:async';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), (() {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyHomePage()));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Color(0xFFF4F4F4),
            child: Column(
              children: [
                // Top bar with time and icons
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '11:30 PM MTN',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(Icons.wifi),
                          SizedBox(width: 8),
                          Icon(FontAwesomeIcons.signal, size: 17),
                          SizedBox(width: 8),
                          Icon(FontAwesomeIcons.batteryThreeQuarters),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 200),
                // Center(child: Image.asset("assets/images/bticket.jpeg")),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assets/images/bticket.jpeg',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            )));
  }
}

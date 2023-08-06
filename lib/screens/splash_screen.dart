import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'coin_listing_screen.dart';

class SplashScreen extends StatefulWidget{

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
  //redirect to screen after delay of 2 seconds
    Timer( Duration(seconds: 2), (){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => CoinListingScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlueAccent,
      ),
    );
  }
}
import 'dart:async';

import 'package:flutter/material.dart';

import 'nexts.dart';

class alldonep extends StatefulWidget {
  const alldonep({Key? key}) : super(key: key);

  @override
  State<alldonep> createState() => _alldonepState();
}

class _alldonepState extends State<alldonep> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {

      Navigator.push(context, MaterialPageRoute(builder: (context) {
       return nexts();
      },));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/done.gif",height: 500,width: 800,),
      ),
    );
  }
}



import 'dart:async';

import 'package:first_shopeproject/finalscreen.dart';
import 'package:first_shopeproject/shopingp.dart';
import 'package:flutter/material.dart';

class nexts extends StatefulWidget {
  const nexts({Key? key}) : super(key: key);

  @override
  State<nexts> createState() => _nextsState();
}

class _nextsState extends State<nexts> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 6), () {

      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return thirds();
      },));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blueAccent[200],
      body: Center(
        child:
          Image.asset("assets/alldone.gif",height: 500,width: 800,),

      ),
    );
  }
}
class thirds extends StatefulWidget {
  const thirds({Key? key}) : super(key: key);

  @override
  State<thirds> createState() => _thirdsState();
}

class _thirdsState extends State<thirds> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {

      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return shopp();
      },));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Center(
          child: Card(child: Image.asset("assets/delivary.gif"))
        ),
          Text("πππ’π πΌπ‘ππ π·ππππ£πππ¦ π΄ππππ£πππ ππππ π΄π‘\n                  πππ’π π΄πππππ π ",style: TextStyle(fontSize: 25,color: Colors.deepPurpleAccent),)
        ]
      ),

    );
  }
}


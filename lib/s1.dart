import 'package:first_shopeproject/adform.dart';
import 'package:first_shopeproject/paymentc.dart';
import 'package:flutter/material.dart';

class s1 extends StatefulWidget {
  const s1({Key? key}) : super(key: key);

  @override
  State<s1> createState() => _s1();
}

class _s1 extends State<s1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.deepPurple,
        elevation: 6,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("ππ³πΆπͺπ΅π΄ & ππππ"
            ""),
        backgroundColor: Colors.tealAccent[400],
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 258,
                width: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.cyan, width: 1)),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return adform();
                          },
                        ));
                      },
                      child: Image.asset(
                        "assets/frut/greps.jpeg",
                        height: 165,
                      ),
                    ),
                    Text(
                      "πΊππππ \n\$100/-",
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
              Container(
                height: 258,
                width: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.cyan, width: 1)),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return adform();
                        },
                      ));},
                      child: Image.asset("assets/frut/kelaa.jpg", height: 166),
                    ),
                    Text(
                      "π΅πππππ\n\$200/-",
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 258,
                width: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.cyan, width: 1)),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return adform();
                        },
                      ));},
                      child: Image.asset(
                        "assets/frut/kivi.jpeg",
                        height: 175,
                      ),
                    ),
                    Text(
                      "  πΎππ£π\n\$300/-",
                      style: TextStyle(fontSize: 24,),
                    ),
                  ],
                ),
              ),
              Container(
                height: 258,
                width: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.cyan, width: 1)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return adform();
                          },
                        ));},
                        child:
                            Image.asset("assets/frut/santra.jpeg", height: 175),
                      ),
                      Text(
                        "ππππππ\n\$400/-",
                        style: TextStyle(fontSize: 24, ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 258,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.cyan, width: 1)),
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return adform();
                          },
                        ));},
                        child: Image.asset(
                          "assets/frut/sobery.jpeg",
                          height: 175,
                        ),
                      ),
                      Text(
                        "π π‘ππππππ¦\n\$500/-",
                        style: TextStyle(fontSize: 24, ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 258,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.cyan, width: 1)),
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return adform();
                          },
                        ));},
                        child:
                            Image.asset("assets/frut/tarbuc.jpeg", height: 175),
                      ),
                      Text(
                        "πππ‘πππππππ\n    \$600/-",
                        style: TextStyle(fontSize: 24, ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ])),
    );
  }
}

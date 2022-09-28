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
        title: Text("𝘍𝘳𝘶𝘪𝘵𝘴 & 𝑀𝑜𝑟𝑒"
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
                      "𝐺𝑟𝑒𝑝𝑠\n\$100/-",
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
                      "𝐵𝑎𝑛𝑎𝑛𝑎\n\$200/-",
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
                      "  𝐾𝑖𝑣𝑖\n\$300/-",
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
                        "𝑂𝑟𝑎𝑛𝑔𝑒\n\$400/-",
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
                        "𝑠𝑡𝑜𝑏𝑒𝑟𝑟𝑦\n\$500/-",
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
                        "𝑊𝑎𝑡𝑒𝑟𝑚𝑒𝑙𝑜𝑛\n    \$600/-",
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

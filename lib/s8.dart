import 'package:first_shopeproject/s1.dart';
import 'package:first_shopeproject/s2.dart';
import 'package:flutter/material.dart';

import 'adform.dart';

class s8 extends StatefulWidget {
  const s8({Key? key}) : super(key: key);

  @override
  State<s8> createState() => _s8();
}

class _s8 extends State<s8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.deepPurple,
        elevation: 6,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("𝘚𝘱𝘰𝘳𝘵𝘴 & 𝑀𝑜𝑟𝑒"),
        backgroundColor: Colors.tealAccent[400],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 258,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber, width: 1)),
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
                            "assets/sport/8pool.jpg",
                            height: 175,
                          ),
                        ),
                        Text(
                          " 𝑃𝑜𝑜𝑙𝑠\n\$100/-",
                          style: TextStyle(fontSize: 24, ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 258,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber, width: 1)),
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
                          child:
                              Image.asset("assets/sport/bet.png", height: 175),
                        ),
                        Text(
                          "   𝐵𝑒𝑡\n\$200/-",
                          style: TextStyle(fontSize: 24,),
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
                        border: Border.all(color: Colors.amber, width: 1)),
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
                            "assets/sport/boll.jpg",
                            height: 175,
                          ),
                        ),
                        Text(
                          "𝐹𝑜𝑡𝑡 𝐵𝑎𝑙𝑙\n  \$300/-",
                          style: TextStyle(fontSize: 24, ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 258,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber, width: 1)),
                    child: SingleChildScrollView(
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
                            child: Image.asset("assets/sport/chess.jpg",
                                height: 175),
                          ),
                          Text(
                            "𝐶ℎ𝑒𝑠𝑠\n\$400/-",
                            style: TextStyle(fontSize: 24,),
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
                        border: Border.all(color: Colors.amber, width: 1)),
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
                            "assets/sport/hockey.jpg",
                            height: 175,
                          ),
                        ),
                        Text(
                          "𝐻𝑜𝑐𝑘𝑒𝑦\n\$500/-",
                          style: TextStyle(fontSize: 24,),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 258,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber, width: 1)),
                    child: SingleChildScrollView(
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
                            child: Image.asset("assets/sport/ttanis.jpg",
                                height: 175),
                          ),
                          Text(
                            "𝐵𝑎𝑑𝑚𝑖𝑛𝑡𝑜𝑛\n    \$600/-",
                            style: TextStyle(fontSize: 24, ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

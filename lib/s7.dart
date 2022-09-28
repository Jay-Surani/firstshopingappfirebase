import 'package:first_shopeproject/s1.dart';
import 'package:first_shopeproject/s2.dart';
import 'package:flutter/material.dart';

import 'adform.dart';

class s7 extends StatefulWidget {
  const s7({Key? key}) : super(key: key);

  @override
  State<s7> createState() => _s7();
}

class _s7 extends State<s7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.deepPurple,
        elevation: 6,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("𝘒𝘪𝘵𝘤𝘩𝘦𝘯 & 𝑀𝑜𝑟𝑒"),
        backgroundColor: Colors.tealAccent[400],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingleChildScrollView(
                      child: Container(
                    height: 258,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.pinkAccent, width: 1)),
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return adform();
                                },
                              ));
                            },
                            child: Image.asset(
                              "assets/kitchen/chacku.jpg",
                              height: 175,
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          child: Text(
                            "𝐾𝑛𝑖𝑣𝑒\n\$100/-",
                            style: TextStyle(fontSize: 24, ),
                          ),
                        ),
                      ],
                    ),
                  )),
                  Container(
                    height: 258,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.pinkAccent, width: 1)),
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
                          child: Image.asset("assets/kitchen/miniown.jpg",
                              height: 175),
                        ),
                        Text(
                          " 𝑂𝑤𝑛\n\$200/-",
                          style: TextStyle(fontSize: 24, ),
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
                        border: Border.all(color: Colors.pinkAccent, width: 1)),
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
                            "assets/kitchen/plates.jpg",
                            height: 175,
                          ),
                        ),
                        Text(
                          "𝑃𝑙𝑎𝑡𝑒𝑠\n \300/-",
                          style: TextStyle(fontSize: 24, ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 258,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.pinkAccent, width: 1)),
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
                            child: Image.asset("assets/kitchen/rakabi.jpg",
                                height: 175),
                          ),
                          Text(
                            "𝑇𝑒𝑎 𝐶𝑢𝑝\n  \$400/-",
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
                        border: Border.all(color: Colors.pinkAccent, width: 1)),
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
                            "assets/kitchen/spoon.jpg",
                            height: 175,
                          ),
                        ),
                        Text(
                          "𝑆𝑝𝑜𝑜𝑛𝑠\n \$500/-",
                          style: TextStyle(fontSize: 24, ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 258,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.pinkAccent, width: 1)),
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
                          child: Image.asset("assets/kitchen/vclaner.jpg",
                              height: 175),
                        ),
                        Text(
                          "𝑉𝑎𝑐𝑢𝑢𝑚 𝐶𝑙𝑒𝑎𝑛𝑒𝑟\n         \$600/-",
                          style: TextStyle(fontSize: 24, ),
                        ),
                      ],
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

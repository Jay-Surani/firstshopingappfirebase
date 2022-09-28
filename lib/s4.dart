import 'package:first_shopeproject/s1.dart';
import 'package:first_shopeproject/s2.dart';
import 'package:flutter/material.dart';

import 'adform.dart';

class s4 extends StatefulWidget {
  const s4({Key? key}) : super(key: key);

  @override
  State<s4> createState() => _s4();
}

class _s4 extends State<s4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.amber,
        elevation: 6,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("𝘙𝘦𝘧𝘳𝘪𝘨𝘦𝘳𝘢𝘵𝘰𝘳 & 𝑀𝑜𝑟𝑒"),
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
                          border: Border.all(color: Colors.blueGrey, width: 1)),
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
                              "assets/friz/friz1.jpg",height: 175,
                            ),
                          ),
                          Text(
                            "𝑊ℎ𝑖𝑟𝑙𝑝𝑜𝑜𝑙\n   \$100/-",
                            style: TextStyle(fontSize: 24, ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 258,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey, width: 1)),
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
                              Image.asset("assets/friz/friz2.jpg", height: 171),
                        ),
                        Text(
                          "𝐺𝑜𝑑𝑟𝑒𝑗\n\$200/-",
                          style: TextStyle(fontSize: 26,),
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
                        border: Border.all(color: Colors.blueGrey, width: 1)),
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return adform();
                            },
                          ));},
                          child: Image.asset(
                            "assets/friz/friz3.jpg",
                            height: 175,
                          ),
                        ),
                        Text(
                          "  𝐿𝐺\n\$300/-",
                          style: TextStyle(
                              fontSize: 24,
                             ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 258,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey, width: 1)),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return adform();
                              },
                            ));},
                            child: Image.asset("assets/friz/friz4.jpg",
                                height: 175),
                          ),
                          Text(
                            "𝑆𝑎𝑚𝑠𝑢𝑛𝑔\n  \$400/-",
                            style: TextStyle(
                                fontSize: 24,
                           ),
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
                        border: Border.all(color: Colors.blueGrey, width: 1)),
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return adform();
                            },
                          ));},
                          child: Image.asset(
                            "assets/friz/friz5.jpg",
                            height: 175,
                          ),
                        ),
                        Text(
                          "𝑉𝑖𝑑𝑒𝑜𝑐𝑜𝑛\n  \$500/-",
                          style: TextStyle(
                              fontSize: 24,
                   ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 258,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey, width: 1)),
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return adform();
                            },
                          ));},
                          child:
                              Image.asset("assets/friz/friz6.jpg", height: 175),
                        ),
                        Text(
                          "𝑃𝑎𝑛𝑎𝑠𝑜𝑛𝑖𝑐\n   \$600/-",
                          style: TextStyle(
                              fontSize: 24,
                      ),
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

import 'package:first_shopeproject/s1.dart';
import 'package:first_shopeproject/s2.dart';
import 'package:flutter/material.dart';

import 'adform.dart';

class s5 extends StatefulWidget {
  const s5({Key? key}) : super(key: key);

  @override
  State<s5> createState() => _s5();
}

class _s5 extends State<s5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.deepPurple,
        elevation: 6,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("𝘊𝘭𝘰𝘢𝘵𝘩𝘴 & 𝑀𝑜𝑟𝑒"),
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
                      height: 259,
                      width: 200,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.redAccent, width: 1)),
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
                              "assets/cloth/hudi.jpg",
                              height: 175,
                            ),
                          ),
                          Text(
                            " 𝐻𝑢𝑑𝑖\n\$100/-",
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
                        border: Border.all(color: Colors.redAccent, width: 1)),
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
                              Image.asset("assets/cloth/sadi.jpg", height: 175),
                        ),
                        Text(
                          " 𝑆𝑎𝑑𝑖\n\$200/-",
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
                        border: Border.all(color: Colors.redAccent, width: 1)),
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
                            "assets/cloth/shirt.jpg",
                            height: 175,
                          ),
                        ),
                        Text(
                          "𝐹𝑢𝑙𝑙 𝑆𝑙𝑒𝑣𝑒 𝑆ℎ𝑖𝑟𝑡\n       \$300/-",
                          style: TextStyle(fontSize: 24, ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 258,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent, width: 1)),
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
                            child: Image.asset("assets/cloth/sshirt.jpg",
                                height: 176),
                          ),
                          Text(
                            "𝐻𝑎𝑙𝑓𝑆𝑙𝑒𝑣𝑒-𝑆ℎ𝑖𝑟𝑡\n        \$400/-",
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
                        border: Border.all(color: Colors.redAccent, width: 1)),
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
                            "assets/cloth/suit.jpg",
                            height: 175,
                          ),
                        ),
                        Text(
                          "  𝑆𝑢𝑖𝑡\n\$500/-",
                          style: TextStyle(fontSize: 24,),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 258,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent, width: 1)),
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
                          child: Image.asset("assets/cloth/tshirt.jpg",
                              height: 175),
                        ),
                        Text(
                          "𝑇-𝑆ℎ𝑖𝑟𝑡\n\$600/-",
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

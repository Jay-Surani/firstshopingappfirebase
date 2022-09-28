import 'package:first_shopeproject/s1.dart';
import 'package:first_shopeproject/s2.dart';
import 'package:flutter/material.dart';

import 'adform.dart';

class s6 extends StatefulWidget {
  const s6({Key? key}) : super(key: key);

  @override
  State<s6> createState() => _s6();
}

class _s6 extends State<s6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.deepPurple,
        elevation: 6,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("𝘚𝘩𝘰𝘦𝘴 & 𝑀𝑜𝑟𝑒"),
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
                        border: Border.all(
                            color: Colors.lightBlueAccent, width: 1)),
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
                            "assets/shoe/champal.jpg",
                            height: 175,
                          ),
                        ),
                        Text(
                          "𝑆𝑎𝑛𝑑𝑎𝑙𝑠\n \$100/-",
                          style: TextStyle(fontSize: 24, ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 258,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.lightBlueAccent, width: 1)),
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
                          child: Image.asset("assets/shoe/chendal.jpg",
                              height: 175),
                        ),
                        Text(
                          "𝐶ℎ𝑎𝑝𝑝𝑎𝑙𝑠\n   \$200/-",
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
                        border: Border.all(
                            color: Colors.lightBlueAccent, width: 1)),
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
                            "assets/shoe/lshoes.jpg",
                            height: 175,
                          ),
                        ),
                        Text(
                          "𝐿𝑎𝑑𝑖𝑒'𝑠 𝑆ℎ𝑜𝑒\n     \$300/-",
                          style: TextStyle(fontSize: 24, ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 258,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.lightBlueAccent, width: 1)),
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
                            child: Image.asset("assets/shoe/shoes.jpg",
                                height: 175),
                          ),
                          Text(
                            "𝑀𝑒𝑛𝑠'𝑠 𝑆ℎ𝑜𝑒\n    \$400/-",
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
                        border: Border.all(
                            color: Colors.lightBlueAccent, width: 1)),
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
                            "assets/shoe/shoes1.jpg",
                            height: 175,
                          ),
                        ),
                        Text(
                          "𝑃𝑢𝑚𝑎 𝑆ℎ𝑜𝑒𝑠\n     \$500/-",
                          style: TextStyle(fontSize: 24, ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 258,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.lightBlueAccent, width: 1)),
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
                          child: Image.asset("assets/shoe/shoes3.jpg",
                              height: 175),
                        ),
                        Text(
                          "𝐹𝑎𝑛𝑐𝑦 𝑆ℎ𝑜𝑒𝑠\n    \$600/-",
                          style: TextStyle(fontSize: 24,),
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

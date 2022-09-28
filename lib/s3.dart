import 'package:first_shopeproject/s1.dart';
import 'package:first_shopeproject/s2.dart';
import 'package:flutter/material.dart';

import 'adform.dart';

class s3 extends StatefulWidget {
  const s3({Key? key}) : super(key: key);

  @override
  State<s3> createState() => _s3();
}

class _s3 extends State<s3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        shadowColor: Colors.deepPurple,
        elevation: 6,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("𝘔𝘰𝘣𝘪𝘭𝘦𝘴 & 𝑀𝑜𝑟𝑒"),
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
                        border: Border.all(color: Colors.deepPurpleAccent, width: 1)),
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
                            "assets/mobile/apple.jpg",height: 175,
                          ),
                        ),
                        Text(
                          "𝐼𝑝ℎ𝑜𝑛𝑒\n\$100/-",
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
                        border: Border.all(color: Colors.deepPurpleAccent, width: 1)),
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
                              Image.asset("assets/mobile/mi.jpg", height: 175),
                        ),
                        Text(
                          "𝑅𝑒𝑎𝑙𝑚𝑒\n \$200/-",
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 258,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepPurpleAccent, width: 1)),
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return adform();
                            },
                          ));},
                          child: Image.asset(
                            "assets/mobile/one.jpg",
                            height: 175,
                          ),
                        ),
                        Text(
                          "𝑂𝑛𝑒 𝑃𝑙𝑢𝑠\n  \$300/-",
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
                        border: Border.all(color: Colors.deepPurpleAccent, width: 1)),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return adform();
                              },
                            ));},
                            child: Image.asset("assets/mobile/oppo.jpg",
                                height: 175),
                          ),
                          Text(
                            " 𝑂𝑝𝑝𝑜\n\$400/-",
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
                        border: Border.all(color: Colors.deepPurpleAccent, width: 1)),
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return adform();
                            },
                          ));},
                          child: Image.asset(
                            "assets/mobile/samsung.jpg",
                            height: 175,
                          ),
                        ),
                        Text(
                          "𝑆𝑎𝑚𝑠𝑢𝑛𝑔\n  \$500/-",
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
                        border: Border.all(color: Colors.deepPurpleAccent, width: 1)),
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return adform();
                            },
                          ));},
                          child: Image.asset("assets/mobile/vivio.jpg",
                              height: 175),
                        ),
                        Text(
                          "   𝑉𝑖𝑣𝑜"
                              "\n \$100/-",
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

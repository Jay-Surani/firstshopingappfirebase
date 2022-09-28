import 'package:first_shopeproject/s1.dart';
import 'package:flutter/material.dart';

import 'adform.dart';

class s2 extends StatefulWidget {
  const s2({Key? key}) : super(key: key);

  @override
  State<s2> createState() => _s2();
}

class _s2 extends State<s2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.deepPurple,
        elevation: 6,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("𝘝𝘦𝘨𝘪𝘵𝘢𝘣𝘭𝘦𝘴 & 𝑀𝑜𝑟𝑒"
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
                        border: Border.all(color: Colors.greenAccent, width: 1)),
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
                            "assets/veg/bataku.jpg",
                            height: 173,
                          ),
                        ),
                        Text(
                          "𝑃𝑜𝑡𝑎𝑡𝑜\n\$100/-",
                          style: TextStyle(
                              fontSize: 24, ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 258,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.greenAccent, width: 1)),
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return adform();
                            },
                          ));},
                          child: Image.asset("assets/veg/dudhi.jpg", height: 173),
                        ),
                        Text(
                          " 𝑀𝑖𝑙𝑘𝑦\n\$200/-",
                          style: TextStyle(
                              fontSize: 24, ),
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
                        border: Border.all(color: Colors.greenAccent, width: 1)),
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return adform();
                            },
                          ));},
                          child: Image.asset(
                            "assets/veg/gajar.jpg",
                            height: 175,
                          ),
                        ),
                        Text(
                          "𝐶𝑎𝑟𝑟𝑜𝑡\n\$300/-",
                          style: TextStyle(
                              fontSize: 24, ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 258,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.greenAccent, width: 1)),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return adform();
                              },
                            ));},
                            child: Image.asset("assets/veg/kanda.jpg", height: 175),
                          ),
                          Text(
                            "𝑂𝑛𝑖𝑜𝑛\n\$400/-",
                            style: TextStyle(
                                fontSize: 24, ),
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
                          border: Border.all(color: Colors.greenAccent, width: 1)),
                      child: Column(
                        children: [
                          TextButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return adform();
                              },
                            ));},
                            child: Image.asset(
                              "assets/veg/marcha.jpg",
                              height: 175,
                            ),
                          ),
                          Text(
                            "𝐶ℎ𝑖𝑙𝑖𝑠\n\$500/-",
                            style: TextStyle(
                                fontSize: 24, ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 258,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.greenAccent, width: 1)),
                      child: Column(
                        children: [
                          TextButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return adform();
                              },
                            ));},
                            child: Image.asset("assets/veg/tomato.jpg", height: 175),
                          ),
                          Text(
                            "𝑇𝑜𝑚𝑎𝑡𝑜\n\$600/-",
                            style: TextStyle(
                                fontSize: 24,),
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

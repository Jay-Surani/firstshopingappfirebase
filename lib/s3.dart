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
        title: Text("ππ°π£πͺπ­π¦π΄ & ππππ"),
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
                          "πΌπβπππ\n\$100/-",
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
                          "ππππππ\n \$200/-",
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
                          "πππ πππ’π \n  \$300/-",
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
                            " ππππ\n\$400/-",
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
                          "ππππ π’ππ\n  \$500/-",
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
                          "   πππ£π"
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

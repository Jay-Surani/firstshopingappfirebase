import 'package:first_shopeproject/adform.dart';
import 'package:first_shopeproject/s1.dart';
import 'package:first_shopeproject/s2.dart';
import 'package:first_shopeproject/s3.dart';
import 'package:first_shopeproject/s4.dart';
import 'package:first_shopeproject/s5.dart';
import 'package:first_shopeproject/s6.dart';
import 'package:first_shopeproject/s7.dart';
import 'package:first_shopeproject/s8.dart';
import 'package:first_shopeproject/search.dart';
import 'package:flutter/material.dart';

class shopp extends StatefulWidget {
  const shopp({Key? key}) : super(key: key);

  @override
  State<shopp> createState() => _shopp();
}

class _shopp extends State<shopp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    drweer();
  }
  drweer(){
  Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.lightGreen),
            child: Text("Drwer"),
          ),
          ListTile(
            title: Text("1"),
            leading: Icon(Icons.add),
          )
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.deepPurple,
        elevation: 6,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("𝑆ℎ𝑜𝑝 𝑁𝑜𝑤"),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
           onPressed: () => showSearch(context: context, delegate: Search()),
          ),
        ],
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
                            return s1();
                          },
                        ));
                      },
                      child: Image.asset(
                        "assets/frut.gif",
                        height: 173,
                      ),
                    ),
                    Text(
                      "𝐹𝑟𝑢𝑖𝑡'𝑠 &\n𝑀𝑜𝑟𝑒",
                      style: TextStyle(fontSize: 24),
                    )
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
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return s2();
                          },
                        ));
                      },
                      child: Image.asset("assets/vegs.gif", height: 173),
                    ),
                    Text(
                      "𝑉𝑒𝑔𝑒𝑡𝑎𝑏𝑙𝑒'𝑠 &\n     𝑀𝑜𝑟𝑒",
                      style: TextStyle(fontSize: 24),
                    )
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
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return s3();
                          },
                        ));
                      },
                      child: Image.asset(
                        "assets/mobile.gif",
                        height: 174,
                      ),
                    ),
                    Text(
                      "𝑀𝑜𝑏𝑖𝑙𝑒𝑠'𝑠 & \n    𝑀𝑜𝑟𝑒",
                      style: TextStyle(fontSize: 24),
                    )
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
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return s4();
                            },
                          ));
                        },
                        child: Image.asset("assets/friz.gif", height: 175),
                      ),
                      Text(
                        "𝑅𝑒𝑓𝑟𝑖𝑔𝑒𝑟𝑎𝑡𝑜𝑟'𝑠 \n      𝑀𝑜𝑟𝑒",
                        style: TextStyle(fontSize: 24),
                      )
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
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return s5();
                            },
                          ));
                        },
                        child: Image.asset(
                          "assets/cloth.gif",
                          height: 174,
                        ),
                      ),
                      Text(
                        "𝐶𝑙𝑜𝑡ℎ𝑒'𝑠 & \n 𝑀𝑜𝑟𝑒",
                        style: TextStyle(fontSize: 24),
                      )
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
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return s6();
                            },
                          ));
                        },
                        child: Image.asset("assets/shoes.gif", height: 174),
                      ),
                      Text(
                        "𝑆ℎ𝑜𝑒𝑠'𝑠 & \n"
                        " 𝑀𝑜𝑟𝑒",
                        style: TextStyle(fontSize: 24),
                      )
                    ],
                  ),
                ),
              ],
            )),
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
                              return s7();
                            },
                          ));
                        },
                        child: Image.asset(
                          "assets/kitchena.gif",
                          height: 134,
                        ),
                      ),
                      Text(
                        "       𝐾𝑖𝑡𝑐ℎ𝑒𝑛   \n  𝐴𝑝𝑝𝑙𝑖𝑎𝑛𝑐𝑒𝑠'𝑠 & \n        𝑀𝑜𝑟𝑒",
                        style: TextStyle(fontSize: 24),
                      )
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
                            return s8();
                          },
                        ));},
                        child: Image.asset("assets/sport.gif", height: 174),
                      ),
                      Text(
                        "𝑆𝑝𝑜𝑟𝑡'𝑠 & \n 𝑀𝑜𝑟𝑒",
                        style: TextStyle(fontSize: 24),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ],),),drawer: Drawer(backgroundColor: Colors.black,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text("Drwer"),
          ),
          ListTile(
            title: Text("1"),
            leading: Icon(Icons.add),
          )
        ],
      ),
    ),
    );
  }
}


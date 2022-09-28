import 'package:first_shopeproject/shopingp.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum BestTutorSite { javatpoint, w3schools, tutorialandexample }

class firstp extends StatefulWidget {
  const firstp({Key? key}) : super(key: key);

  @override
  State<firstp> createState() => _firstpState();
}

class _firstpState extends State<firstp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkuser();
  }

  checkuser()
  async {

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('checkusers', true);


  }

  Color ncolor = Colors.greenAccent;
  bool food = false;
  bool tour = false;
  bool smartmobile = false;
  bool baby = false;
  bool comic = false;
  bool car = false;
  bool sd = false;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    height: 86,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Colors.tealAccent[400],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black)),
                    child: Text(
                      "        𝐶ℎ𝑜𝑜𝑠𝑒 𝑌𝑜𝑢𝑟 𝐹𝑎𝑣𝑜𝑟𝑖𝑡𝑒\n                𝐶𝑎𝑡𝑒𝑔𝑜𝑟𝑖𝑒𝑠          ",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  CheckboxListTile(
                    secondary: Icon(Icons.fastfood_sharp,color: Colors.pink,),
                    subtitle: Text(
                      "& 𝑀𝑜𝑟𝑒... 𝑟𝑒𝑙𝑒𝑡𝑒𝑑 𝑖𝑡𝑒𝑚𝑠",
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Text(
                      "𝐹𝑎𝑠𝑡 𝐹𝑜𝑜𝑑",
                      style: TextStyle(color: Colors.pink),
                    ),
                    value: food,
                    onChanged: (bool? value) {
                      setState(() {
                        food = !food;
                      });
                    },
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  CheckboxListTile(
                    secondary: Icon(Icons.airplanemode_active,color: Colors.greenAccent[400],),
                    subtitle: Text(
                      "& 𝑀𝑜𝑟𝑒... 𝑟𝑒𝑙𝑒𝑡𝑒𝑑 𝑖𝑡𝑒𝑚𝑠",
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Text(
                      "𝑇𝑜𝑢𝑟 & 𝑇𝑟𝑎𝑣𝑒𝑙𝑠",
                      style: TextStyle(color: Colors.greenAccent[700]),
                    ),
                    value: tour,
                    onChanged: (bool? value) {
                      setState(() {
                        tour = !tour;
                      });
                    },
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  CheckboxListTile(
                    secondary: Icon(Icons.smartphone,color: Colors.deepPurpleAccent,),
                    subtitle: Text(
                      "& 𝑀𝑜𝑟𝑒... 𝑟𝑒𝑙𝑒𝑡𝑒𝑑 𝑖𝑡𝑒𝑚𝑠",
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Text(
                      "𝑆𝑚𝑎𝑟𝑡 𝑀𝑜𝑏𝑖𝑙𝑒𝑠",
                      style: TextStyle(color: Colors.deepPurpleAccent),
                    ),
                    value: smartmobile,
                    onChanged: (bool? value) {
                      setState(() {
                        smartmobile = !smartmobile;
                      });
                    },
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  CheckboxListTile(
                    secondary: Icon(Icons.toys,color: Colors.lightBlue,),
                    subtitle: Text(
                      "& 𝑀𝑜𝑟𝑒... 𝑟𝑒𝑙𝑒𝑡𝑒𝑑 𝑖𝑡𝑒𝑚𝑠",
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Text(
                      "𝐵𝑎𝑏𝑦 𝑇𝑜𝑦𝑠",
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    value: baby,
                    onChanged: (bool? value) {
                      setState(() {
                        baby = !baby;
                      });
                    },
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  CheckboxListTile(
                    secondary: Icon(Icons.menu_book_sharp,color: Colors.deepOrange),
                    subtitle: Text(
                      "& 𝑀𝑜𝑟𝑒... 𝑟𝑒𝑙𝑒𝑡𝑒𝑑 𝑖𝑡𝑒𝑚𝑠",
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Text(
                      "𝐶𝑜𝑚𝑖𝑐 𝐵𝑜𝑜𝑘𝑠",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.deepOrange),
                    ),
                    value: comic,
                    onChanged: (bool? value) {
                      setState(() {
                        comic = !comic;
                      });
                    },
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  CheckboxListTile(
                    secondary: Icon(Icons.directions_car_filled_sharp,color: Colors.indigoAccent),
                    subtitle: Text(
                      "& 𝑀𝑜𝑟𝑒... 𝑟𝑒𝑙𝑒𝑡𝑒𝑑 𝑖𝑡𝑒𝑚𝑠",
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Text(
                      "𝐶𝑎𝑟 𝐴𝑐𝑐𝑒𝑠𝑠𝑜𝑟𝑖𝑒𝑠",
                      style: TextStyle(color: Colors.indigoAccent),
                    ),
                    value: car,
                    onChanged: (bool? value) {
                      setState(() {
                        car = !car;
                      });
                    },
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  CheckboxListTile(
                    secondary: Icon(Icons.sd_card,color: Colors.amber[700]),
                    subtitle: Text(
                      "& 𝑀𝑜𝑟𝑒... 𝑟𝑒𝑙𝑒𝑡𝑒𝑑 𝑖𝑡𝑒𝑚𝑠",
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Text(
                      "𝑆𝑑 𝐶𝑎𝑟𝑑𝑠 & 𝑃𝑒𝑛𝑑𝑟𝑖𝑣𝑒𝑠",
                      style: TextStyle(color: Colors.amber),
                    ),
                    value: sd,
                    onChanged: (bool? value) {
                      setState(() {
                        sd = !sd;
                      });
                    },
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 60,
                  )
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 20,
                  shape: StadiumBorder(),
                  shadowColor: Colors.cyan,

                  surfaceTintColor: Colors.amber,
                  primary: Colors.indigoAccent,
                  fixedSize: Size(155, 55),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return shopp();
                    },
                  ));
                },
                child: Text(
                  "𝐿𝑒𝑡'𝑠 𝑆𝑡𝑎𝑟𝑡",
                  style: TextStyle(fontSize: 22),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

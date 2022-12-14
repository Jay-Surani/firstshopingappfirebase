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
                      "        πΆβπππ π πππ’π πΉππ£ππππ‘π\n                πΆππ‘πππππππ           ",
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
                      "& ππππ... πππππ‘ππ ππ‘πππ ",
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Text(
                      "πΉππ π‘ πΉπππ",
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
                      "& ππππ... πππππ‘ππ ππ‘πππ ",
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Text(
                      "πππ’π & ππππ£πππ ",
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
                      "& ππππ... πππππ‘ππ ππ‘πππ ",
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Text(
                      "πππππ‘ πππππππ ",
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
                      "& ππππ... πππππ‘ππ ππ‘πππ ",
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Text(
                      "π΅πππ¦ πππ¦π ",
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
                      "& ππππ... πππππ‘ππ ππ‘πππ ",
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Text(
                      "πΆππππ π΅ππππ ",
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
                      "& ππππ... πππππ‘ππ ππ‘πππ ",
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Text(
                      "πΆππ π΄ππππ π πππππ ",
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
                      "& ππππ... πππππ‘ππ ππ‘πππ ",
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Text(
                      "ππ πΆππππ  & πππππππ£ππ ",
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
                  "πΏππ‘'π  ππ‘πππ‘",
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

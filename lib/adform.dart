import 'package:first_shopeproject/addresspage.dart';
import 'package:first_shopeproject/paymentc.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';


class adform extends StatefulWidget {
  const adform({Key? key}) : super(key: key);

  @override
  State<adform> createState() => _adformState();
}

class _adformState extends State<adform> {


  var checkform = GlobalKey<FormState>();
  var states = {"Gujrat", "Maharstra", "Rajsthan"};
  var now = "Gujrat";

  var city = {"Surat", "Vapi", "Kach"};
  var nowc = "Surat";

  TextEditingController oname = TextEditingController();
  TextEditingController oemail = TextEditingController();
  TextEditingController onumber = TextEditingController();
  TextEditingController oaddress = TextEditingController();
  TextEditingController opincode = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            "𝐃𝐞𝐥𝐢𝐯𝐞𝐫𝐲 𝐈𝐧𝐟𝐨𝐫𝐦𝐚𝐭𝐢𝐨𝐧",
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
                height: 200,
                width: 600,
                child: Image.asset("assets/earth.gif")),
            Form(
                key: checkform,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Plese Enter name";
                              } else {
                                return null;
                              }
                            },
                            controller: oname,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                  BorderSide(color: Colors.blueAccent)),
                              labelText: "Enter Name",
                              hintText: "Name",
                              suffixIcon: Icon(Icons.person),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 1),
                      SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Plese Enter Email";
                              } else {
                                return null;
                              }
                            },
                            controller: oemail,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide:
                                    BorderSide(color: Colors.blueAccent)),
                                labelText: "Enter Email",
                                hintText: "Email",
                                suffixIcon: Icon(Icons.email)),
                          ),
                        ),
                      ),
                      SizedBox(height: 1),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: TextFormField(
                          controller: onumber,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                  BorderSide(color: Colors.blueAccent)),
                              labelText: "Enter Number",
                              hintText: "Number",
                              suffixIcon: Icon(Icons.phone)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Plese Enter Number";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 75,
                          ),
                          DropdownButton(
                            icon: Icon(Icons.restart_alt_outlined),
                            style: TextStyle(color: Colors.blue),
                            value: now,
                            items: states.map((String states) {
                              return DropdownMenuItem(
                                  value: states, child: Text(states));
                            }).toList(),
                            onChanged: (String? nvalue) {
                              setState(() {
                                now = nvalue!;
                              });
                            },
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          DropdownButton(
                            icon: Icon(Icons.restart_alt_outlined),
                            style: TextStyle(color: Colors.blue),
                            value: nowc,
                            items: city.map((String city) {
                              return DropdownMenuItem(
                                  value: city, child: Text(city));
                            }).toList(),
                            onChanged: (String? ncity) {
                              setState(() {
                                nowc = ncity!;
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 1),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: opincode,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                  BorderSide(color: Colors.blueAccent)),
                              labelText: "Enter Pincode",
                              hintText: "Pincode",
                              suffixIcon:
                              Icon(Icons.person_pin_circle_rounded)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Pincode";
                            } else if (value!.length == 5) {
                              return "Plese Enter 6 Digit Pin Code";
                            } else if (value!.length < 5) {
                              return "Plese Enter 6 Digit Pin Code";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 1),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: TextFormField(
                          controller: oaddress,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                  BorderSide(color: Colors.blueAccent)),
                              labelText: "Enter Your Address",
                              hintText: "Adress",
                              suffixIcon: Icon(Icons.home)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Your Address";
                            } else {
                              return null;
                            }
                          },
                          obscureText: true,
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(height: 15),
            SingleChildScrollView(
              child: SizedBox(
                height: 40,
                width: 250,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurpleAccent[400],
                        shadowColor: Colors.blue,
                        surfaceTintColor: Colors.blue,
                        shape: StadiumBorder()),
                    onPressed: () async {
                      final isvalid = checkform.currentState!.validate();
                      if (!isvalid) {
                        return;
                      } else {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return addp(name: oname.text,
                                email: oemail.text,
                                number: onumber.text,
                                pincode: opincode.text,
                                address: oaddress.text);
                          },
                        ));
                      }
                    },
                    child: Center(
                      child: Text(
                        "𝐋𝐞𝐭'𝐬 𝐏𝐚𝐲𝐦𝐞𝐧𝐭",
                        style: TextStyle(fontSize: 18),
                      ),
                    )),
              ),
            ),
          ]),
        ));
  }
}


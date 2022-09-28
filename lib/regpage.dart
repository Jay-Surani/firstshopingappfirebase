import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_shopeproject/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class regp extends StatefulWidget {
  @override
  State<regp> createState() => _regp();
}

class _regp extends State<regp> {
  var checkform = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.tealAccent,
                child: Container(
                  height: 40,
                  width: 250,
                  child: Text(
                    "   𝑅𝑒𝑔𝑖𝑠𝑡𝑟𝑎𝑡𝑖𝑜𝑛 𝑃𝑎𝑔𝑒",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: 224,
                width: 250,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Image.asset("assets/regs.png"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(margin: EdgeInsets.all(12),
                child: Form(
                    key: checkform,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Plese Enter name";
                            }
                            return null;
                          },
                          controller: name,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: Colors.blueAccent),),
                            labelText: "Enter Name",
                            hintText: "Name",
                            suffixIcon: Icon(Icons.person),
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Plese Enter Email";
                            }
                          },
                          controller: email,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.blueAccent)),
                              labelText: "Enter Email",
                              hintText: "Email",
                              suffixIcon: Icon(Icons.email)),
                        ),
                        SizedBox(height: size.height * 0.03),
                        TextFormField(
                          controller: number,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.blueAccent)),
                              labelText: "Enter Mobile Number",
                              hintText: "Mobile Number",
                              suffixIcon: Icon(Icons.phone)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Plese Enter Mobile Number";
                            }
                          },
                        ),
                        SizedBox(height: size.height * 0.03),
                        TextFormField(
                          controller: password,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.blueAccent)),
                              labelText: "Enter Password",
                              hintText: "Password",
                              suffixIcon: Icon(Icons.remove_red_eye)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Password";
                            } else if (value!.length < 8) {
                              return "Enter Minimum 8 Value";
                            } else {
                              return null;
                            }
                          },
                          obscureText: true,
                        ),
                      ],
                    )),
              ),
              SizedBox(height: 6),
              ElevatedButton(
                  onPressed: () async {
                    final isvalid = checkform.currentState!.validate();
                    try {
                      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: email.text,
                        password: password.text,
                      ).then((value){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return HomePage();
                        },));
                      });
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        print('The password provided is too weak.');
                      } else if (e.code == 'email-already-in-use') {
                        print('The account already exists for that email.');
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                  child: Center(
                    child: Text("Sing Up"),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

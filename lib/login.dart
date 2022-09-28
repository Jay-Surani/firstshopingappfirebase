import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_shopeproject/firstpage.dart';
import 'package:first_shopeproject/regpage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool chekusers = false;
  @override
  void initState() {
// TODO: implement initState
    super.initState();
    checkuser();
  }

  checkuser() async {
    final prefs = await SharedPreferences.getInstance();

    chekusers = prefs.getBool('checkuser')!;

    if (chekusers == true) {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return firstp();
        },
      ));
    }
  }



  TextEditingController lemail = TextEditingController();
  TextEditingController lpassword = TextEditingController();
  var checkform = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [Colors.blue, Colors.cyan, Colors.deepPurpleAccent],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                      child: Text(
                    "𝐿𝑜𝑔𝑖𝑛 𝑃𝑎𝑔𝑒",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: Text(
                    "𝑊𝑒𝑙𝑐𝑜𝑚𝑒",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  )),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.tealAccent[100],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 60,
                          ),
                          Container(padding: EdgeInsets.all(8),
                            height: 148,
                            width: 500,
                            decoration: BoxDecoration(
                                color: Colors.tealAccent,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(225, 555, 27, .3),
                                      blurRadius: 20,
                                      offset: Offset(0, 10))
                                ]),
                            child: SingleChildScrollView(
                              child: Column(children: <Widget>[
                                Form(
                                  key: checkform,
                                  child: Column(
                                    children: [
                                      TextFormField(
                                          controller: lemail,
                                          decoration: InputDecoration(

                                              focusColor: Colors.black,
                                              fillColor: Colors.lightBlue,filled: true,
                                              hoverColor: Colors.black,
                                              suffixIcon: Icon(
                                                Icons.email,
                                                color: Colors.black,
                                              ),
                                              hintText: "   Email ",
                                              labelText: "   Enter Email  ",
                                              labelStyle:
                                                  TextStyle(color: Colors.black),
                                              hintStyle:
                                                  TextStyle(color: Colors.black),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(18)
                                              )),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              Fluttertoast.showToast(
                                                  msg: "Plese Enter Your Email",
                                                  toastLength: Toast.LENGTH_LONG,
                                                  gravity: ToastGravity.BOTTOM,
                                                  timeInSecForIosWeb: 1,
                                                  backgroundColor: Colors.red,
                                                  textColor: Colors.white,
                                                  fontSize: 17);
                                            } else if (value.length <= 8) {
                                              Fluttertoast.showToast(
                                                  msg:
                                                      "Use Atleast 8 Values In Email",
                                                  toastLength: Toast.LENGTH_LONG,
                                                  gravity: ToastGravity.BOTTOM,
                                                  timeInSecForIosWeb: 1,
                                                  backgroundColor: Colors.red,
                                                  textColor: Colors.white,
                                                  fontSize: 17);
                                            } else {
                                              return null;
                                            }
                                          }),SizedBox(height: 10,),
                                      TextFormField(
                                          controller: lpassword,
                                          obscureText: true,
                                          decoration: InputDecoration(
                                              suffixIcon: Icon(Icons.remove_red_eye,
                                                  color: Colors.black),
                                              hintText: "   Password",
                                              fillColor: Colors.greenAccent,filled: true,
                                              labelText: "   Enter Password",
                                              labelStyle:
                                                  TextStyle(color: Colors.black),
                                              hintStyle:
                                                  TextStyle(color: Colors.black),
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(18)
                                              )),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              Fluttertoast.showToast(
                                                  msg: "Plese Enter Your Password",
                                                  toastLength: Toast.LENGTH_LONG,
                                                  gravity: ToastGravity.BOTTOM,
                                                  timeInSecForIosWeb: 1,
                                                  backgroundColor: Colors.red,
                                                  textColor: Colors.white,
                                                  fontSize: 17);
                                            } else {
                                              return null;
                                            }
                                          }),
                                    ],
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return regp();
                                    },
                                  ));
                                },
                                child: Text(
                                  "𝘚𝘪𝘯𝘨 𝘜𝘱",
                                  style: TextStyle(fontSize: 22),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  shape:
                                      MaterialStateProperty.all(StadiumBorder()),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.deepPurpleAccent)),
                              onPressed: () async {
                                if (checkform.currentState!.validate()) {}
                                try {
                                  final credential = await FirebaseAuth.instance
                                      .signInWithEmailAndPassword(
                                          email: lemail.text,
                                          password: lpassword.text)
                                      .then((value) {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return firstp();
                                      },
                                    ));
                                  });
                                } on FirebaseAuthException catch (e) {
                                  if (e.code == 'user-not-found') {
                                    Fluttertoast.showToast(
                                        msg: "No user found for that email.",
                                        toastLength: Toast.LENGTH_LONG,
                                        gravity: ToastGravity.BOTTOM,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.red,
                                        textColor: Colors.white,
                                        fontSize: 17);
                                  } else if (e.code == 'wrong-password') {
                                    Fluttertoast.showToast(
                                        msg: "Wrong Password Provide Via User.",
                                        toastLength: Toast.LENGTH_LONG,
                                        gravity: ToastGravity.BOTTOM,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.red,
                                        textColor: Colors.white,
                                        fontSize: 17);
                                  } else if (e.code == 'Credntial Verified') {
                                    Fluttertoast.showToast(
                                        msg: "Credntial Verified",
                                        toastLength: Toast.LENGTH_LONG,
                                        gravity: ToastGravity.BOTTOM,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.tealAccent,
                                        textColor: Colors.white,
                                        fontSize: 17);
                                  }
                                }
                              },
                              child: Text(
                                "      𝐿𝑜𝑔𝑖𝑛      ",
                                style: TextStyle(fontSize: 35),
                              )),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "𝐶𝑜𝑛𝑡𝑖𝑛𝑢𝑒 𝑤𝑖𝑡ℎ 𝑠𝑜𝑐𝑖𝑎𝑙 𝑚𝑒𝑑𝑖𝑎",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            height: 2,
                            color: Colors.black,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 40,
                                ),
                                TextButton(
                                    onPressed: () {
                                      signup(context);
                                    },
                                    child: Image.asset(
                                      "assets/gogglep.png",
                                      height: 80,
                                      width: 70,
                                    )),
                                SizedBox(
                                  width: 70,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Expanded(
                                    child: TextButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50)))),
                                      onPressed: () {},
                                      child: Center(
                                          child: Image.asset(
                                        "assets/facebook.png",
                                        height: 70,
                                        width: 70,
                                      )),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// function to implement the google signin

// creating firebase instance
final FirebaseAuth auth = FirebaseAuth.instance;

Future<void> signup(BuildContext context) async {
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
  if (googleSignInAccount != null) {
    final GoogleSignInAuthentication googleSignInAuthentication =
    await googleSignInAccount.authentication;
    final AuthCredential authCredential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    // Getting users credential
    UserCredential result = await auth.signInWithCredential(authCredential);
    User? user = result.user;

    if (result != null) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => firstp()));
    }  // if result not null we simply call the MaterialpageRoute,
    // for go to the HomePage screen
  }
}

import 'package:first_shopeproject/paymentc.dart';
import 'package:flutter/material.dart';

class addp extends StatelessWidget {
  var name, email, number, pincode, address;

  addp(
      {required this.name,
      required this.email,
      required this.number,
      required this.pincode,
      required this.address});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("πΆππππππ πΌπππππππ‘πππ"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/earth.gif"),Divider(
              height: 8,
              thickness: 2,color: Colors.greenAccent,
            ),

            Container(
            transformAlignment: Alignment.topCenter,
            margin: EdgeInsets.all(10),
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.blue)),
              alignment: Alignment.center,
              child: Text(
                "ππππ :\n${name} ",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              height: 8,
              thickness: 2,
            ),
            Container(margin: EdgeInsets.all(10),
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.blueAccent)),
              alignment: Alignment.center,
              child: Text(
                "  πΈππππ πΌπ :\n  ${email} ",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              height: 8,color: Colors.greenAccent,
              thickness: 2,
            ),
            Container(height: 60,width: 690,
            margin: EdgeInsets.all(10),
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.blueAccent)),

              alignment: Alignment.center,
              child: Text(
                " ππ’ππππ :"
                "\n ${number} ",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              height: 8,
              thickness: 2,color: Colors.greenAccent,
            ),
            Container(margin: EdgeInsets.all(10),
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.blueAccent)),
              alignment: Alignment.center,
              child: Text(
                "  πππ πΆπππ :"
                " \n  ${pincode} ",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              height: 8,
              thickness: 2,color: Colors.greenAccent,
            ),
            Container(height: 80,margin: EdgeInsets.all(10),
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.blueAccent)),
              alignment: Alignment.center,
              child: Text(
                "      πππ’π π΄πππππ π  :"
                "  \n       ${address} ",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(
              height: 7,
              thickness: 2,color: Colors.greenAccent,
            ),SizedBox(height: 10,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent[400],
                    shadowColor: Colors.blue,
                    surfaceTintColor: Colors.blue,
                    shape: StadiumBorder()),
                onPressed: () async {

                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return payment();
                      }));

                },
                child: Center(
                  child: Text(
                    "πΆππππππ πππ’π πΌπππππππ‘πππ",
                    style: TextStyle(fontSize: 18),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

import 'package:first_shopeproject/addresspage.dart';
import 'package:flutter/material.dart';

import 'ccard.dart';

class payment extends StatefulWidget {
  const payment({Key? key}) : super(key: key);

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  bool paylatter = false;
  bool phonepe = false;
  bool creditcard = true;
  bool netbanking = false;
  bool cod = false;
  bool emi = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(
          "πππ¦ππππ‘π ",
          style: TextStyle(fontSize: 22),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 3,
            ),
            CheckboxListTile(checkboxShape: RoundedRectangleBorder(),
              subtitle: Text(
                "ππππ£πππ πΆπ’πππππ‘ππ¦  π΄π£πππππππ",
                style: TextStyle(fontSize: 16),
              ),
              title: Text(
                "Shopee Pay-Later",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              value: paylatter,
              onChanged: (bool? value) {
                setState(() {});
              },
            ),
            SizedBox(
              height: 3,
            ),
            Divider(
              height: 2,
              color: Colors.black,
            ),
            CheckboxListTile(
              subtitle: Text(
                "ππππ£πππ πΆπ’πππππ‘ππ¦ πππ‘ π΄π£πππππππ",
                style: TextStyle(fontSize: 16),
              ),
              title: Text("PhonePe",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              value: phonepe,
              onChanged: (bool? value) {
                setState(() {});
              },
            ),
            SizedBox(
              height: 3,
            ),
            Divider(
              height: 2,
              color: Colors.black,
            ),
            CheckboxListTile(
              subtitle: Text(
                "ππ£π‘π? ππππ¨ πππ§π«πππ πΎπͺπ§π§ππ£π©π‘π? πΌπ«πππ‘πππ‘π -",
                style: TextStyle(fontSize: 16),
              ),
              title: Text("Credit Card",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              value: creditcard,
              onChanged: (bool? value) {
                setState(() {});
              },
            ),
            SizedBox(
              height: 3,
            ),
            Divider(
              height: 2,
              color: Colors.black,
            ),
            CheckboxListTile(
              subtitle: Text(
                "ππππ£πππ πΆπ’πππππ‘ππ¦ πππ‘ π΄π£πππππππ",
                style: TextStyle(fontSize: 16),
              ),
              title: Text("Net Banking",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              value: netbanking,
              selected: false,
              onChanged: (bool? value) {
                setState(() {});
              },
            ),
            SizedBox(
              height: 3,
            ),
            Divider(
              height: 2,
              color: Colors.black,
            ),
            CheckboxListTile(
              subtitle: Text(
                "ππππ£πππ πΆπ’πππππ‘ππ¦ πππ‘ π΄π£πππππππ",
                style: TextStyle(fontSize: 16),
              ),
              title: Text(
                "Cash On Delivery",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              value: cod,
              onChanged: (bool? value) {
                setState(() {});
              },
            ),
            SizedBox(
              height: 3,
            ),
            Divider(
              height: 2,
              color: Colors.black,
            ),
            CheckboxListTile(
              subtitle: Text(
                "ππππ£πππ πΆπ’πππππ‘ππ¦ πππ‘ π΄π£πππππππ",
                style: TextStyle(fontSize: 16),
              ),
              title: Text("EMI", style: TextStyle(fontWeight: FontWeight.w500)),
              value: emi,
              onChanged: (bool? value) {
                setState(() {});
              },
            ),
            SizedBox(
              height: 3,
            ),
            Divider(
              height: 2,
              color: Colors.black,
            ),
            SizedBox(
              height: 60,
            ),ElevatedButton(
                style: ElevatedButton.styleFrom(elevation: 15,
                    primary: Colors.indigoAccent[400],
                    shadowColor: Colors.blue,
                    surfaceTintColor: Colors.blue,
                    shape: StadiumBorder()),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return cardpay();
                      }));
            }, child: Text("πΏππ‘'π  πππ¦ππππ‘",style: TextStyle(fontSize: 30),))
          ],
        ),
      ),
    );
  }
}

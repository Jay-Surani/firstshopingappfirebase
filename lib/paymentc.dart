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
          "𝑃𝑎𝑦𝑚𝑒𝑛𝑡𝑠",
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
                "𝑆𝑒𝑟𝑣𝑖𝑐𝑒 𝐶𝑢𝑟𝑟𝑒𝑛𝑡𝑙𝑦  𝐴𝑣𝑎𝑖𝑙𝑎𝑏𝑙𝑒",
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
                "𝑆𝑒𝑟𝑣𝑖𝑐𝑒 𝐶𝑢𝑟𝑟𝑒𝑛𝑡𝑙𝑦 𝑁𝑜𝑡 𝐴𝑣𝑎𝑖𝑙𝑎𝑏𝑙𝑒",
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
                "𝙊𝙣𝙡𝙮 𝙏𝙝𝙞𝙨 𝙎𝙚𝙧𝙫𝙞𝙘𝙚 𝘾𝙪𝙧𝙧𝙚𝙣𝙩𝙡𝙮 𝘼𝙫𝙖𝙞𝙡𝙖𝙗𝙡𝙚 -",
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
                "𝑆𝑒𝑟𝑣𝑖𝑐𝑒 𝐶𝑢𝑟𝑟𝑒𝑛𝑡𝑙𝑦 𝑁𝑜𝑡 𝐴𝑣𝑎𝑖𝑙𝑎𝑏𝑙𝑒",
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
                "𝑆𝑒𝑟𝑣𝑖𝑐𝑒 𝐶𝑢𝑟𝑟𝑒𝑛𝑡𝑙𝑦 𝑁𝑜𝑡 𝐴𝑣𝑎𝑖𝑙𝑎𝑏𝑙𝑒",
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
                "𝑆𝑒𝑟𝑣𝑖𝑐𝑒 𝐶𝑢𝑟𝑟𝑒𝑛𝑡𝑙𝑦 𝑁𝑜𝑡 𝐴𝑣𝑎𝑖𝑙𝑎𝑏𝑙𝑒",
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
            }, child: Text("𝐿𝑒𝑡'𝑠 𝑃𝑎𝑦𝑚𝑒𝑛𝑡",style: TextStyle(fontSize: 30),))
          ],
        ),
      ),
    );
  }
}

import 'package:ethiocart/Screens/payement/editwallet.dart';
import 'package:ethiocart/Screens/payement/payment_confirmation.dart';
import 'package:ethiocart/Screens/pin/pin._page.dart';
import 'package:flutter/material.dart';

class CardInfoConfirmation extends StatefulWidget {
  const CardInfoConfirmation({Key? key}) : super(key: key);

  @override
  State<CardInfoConfirmation> createState() => _CardInfoConfirmationState();
}

class _CardInfoConfirmationState extends State<CardInfoConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.teal.shade800,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Text(
              'Confirm Your',
              style: TextStyle(fontSize: 22, color: Colors.teal.shade900),
            ),
            Text(
              'Card Information',
              style: TextStyle(fontSize: 22, color: Colors.teal.shade900),
            ),
            CardInfoHighLight(),
            Text('', style: TextStyle(fontSize: 16, color: Colors.teal.shade900),),
            WalletButton(),
            Text('', style: TextStyle(fontSize: 16, color: Colors.teal.shade900),),
            ConfirmPayment(),
            ConfirmPaymentbutton()
          ],
        ),
      ),
    );
  }

  Widget CardInfoHighLight() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 20),
            child: Text(
              'Card Name',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10),
                child: Text(
                  'Andrew Ansley',
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
                ),
              )),
          Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text('Card Number',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10),
                child: Text(
                  '2672 4738 7837',
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
                ),
              )),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text('Balance',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10),
                child: Text(
                  '1000 birr',
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
                ),
              ))
        ],
      ),
    );
  }

  Widget WalletButton() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      height: height * 0.06,
      width: width * 0.5,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            foregroundColor: MaterialStateProperty.all(Colors.black),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.teal.shade900)))),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditWallet()),
          );
        },
        child: Text(
          'Wallet',
          style: TextStyle(fontSize: 18, color: Colors.teal.shade900),
        ),
      ),
    );
  }

  Widget ConfirmPaymentbutton() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      height: height * 0.05,
      width: width * 0.52,
      child: ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(Colors.teal.shade800),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ))),
        onPressed: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context)=>PaymentConfirmation()));
        },
        child: Text(
          'Confirm',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  Widget ConfirmPayment() {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(top: 0.0, left: 10, right: 5),
                child: Row(
                  children: [
                    Text(
                      'Number of seats',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    Spacer(),
                    Text(
                      '5',
                      style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
                    ),
                  ],
                ),
              )),
          Padding(padding: EdgeInsets.only(top: 5, bottom: 5)),
          Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(top: 0.0, left: 10, right: 5),
                child: Row(
                  children: [
                    Text(
                      'Event Date',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    Spacer(),
                    Text(
                      'December 2023',
                      style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
                    ),
                  ],
                ),
              )),
          Padding(padding: EdgeInsets.only(top: 5, bottom: 5)),
          Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(top: 0.0, left: 10, right: 5),
                child: Row(
                  children: [
                    Text(
                      'Event Location',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    Spacer(),
                    Text(
                      'Hawasa',
                      style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
                    ),
                  ],
                ),
              )),
          Container(
            padding: EdgeInsets.only(top: 20),
            width: double.infinity,
            color: Colors.white,
            child: Center(
              child: Text(
                'Total Amount : 1250 birr',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

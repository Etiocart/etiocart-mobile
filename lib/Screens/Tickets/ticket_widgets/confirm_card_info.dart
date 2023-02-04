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
        color: Colors.white,
        padding: EdgeInsets.only(left: 5, right: 5),
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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 0, bottom: 10),
            child: Text(
              'Card Name',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
              width: double.infinity,
              height: height*0.05,
              padding: EdgeInsets.only(top: 10, left: 5),
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                'Andrew Ansley',
                style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
              )),
          Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text('Card Number',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
          Container(
              width: double.infinity,
              height: height*0.05,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 5),
                child: Text(
                  '2672 4738 7837',
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
                ),
              )),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text('Balance',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
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
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
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
      padding: EdgeInsets.only(top: 6, bottom: 6),
      height: height * 0.08,
      width: width * 0.8,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            foregroundColor: MaterialStateProperty.all(Colors.black),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.teal.shade900)))),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditWallet()),
          );
        },
        child: Text(
          'Wallet',
          style: TextStyle(fontSize: 17, color: Colors.teal.shade900),
        ),
      ),
    );
  }

  Widget ConfirmPaymentbutton() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      height: height * 0.08,
      width: width * 0.8,
      child: ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(Colors.teal.shade800),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ))),
        onPressed: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context)=>PaymentConfirmation()));
        },
        child: Text(
          'Confirm',
          style: TextStyle(fontSize: 17),
        ),
      ),
    );
  }

  Widget ConfirmPayment() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      width: double.infinity,
      height: height*0.3,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: double.infinity,
              height: height*0.06,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100
                  , borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(top: 0.0, left: 10, right: 5),
                child: Row(
                  children: [
                    Text(
                      'Number of seats',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Spacer(),
                    Text(
                      '5',
                      style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                    ),
                  ],
                ),
              )),
          Padding(padding: EdgeInsets.only(top: 5, bottom: 5)),
          Container(
              width: double.infinity,
              height: height*0.06,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(top: 0.0, left: 10, right: 5),
                child: Row(
                  children: [
                    Text(
                      'Event Date',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Spacer(),
                    Text(
                      'December 2023',
                      style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                    ),
                  ],
                ),
              )),
          Padding(padding: EdgeInsets.only(top: 5, bottom: 5)),
          Container(
              width: double.infinity,
              height: height*0.06,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(top: 0.0, left: 10, right: 5),
                child: Row(
                  children: [
                    Text(
                      'Event Location',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Spacer(),
                    Text(
                      'Hawasa',
                      style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                    ),
                  ],
                ),
              )),
          Container(
            padding: EdgeInsets.only(top: 10),
            width: double.infinity,
            color: Colors.white,
            child: Center(
              child: Text(
                'Total Amount : 1250 birr',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16,color: Colors.teal.shade900),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

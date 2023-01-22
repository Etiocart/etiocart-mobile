import 'package:ethiocart/Screens/payement/editwallet.dart';
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
              'Confirm Your Card Information',
              style: TextStyle(fontSize: 16),
            ),
            ConfirmationCard(),
            Text('If You Want to edit your wallet information'),
            EditWalletInfo(),
            Text('If you are satisfied'),
            ConfirmPayment(),
            ConfirmPaymentbutton()
          ],
        ),
      ),
    );
  }

  Widget ConfirmationCard() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 20),
            child: Text(
              'Card Name',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                  style: TextStyle(fontSize: 16),
                ),
              )),
          Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text('Card Number',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
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
                  style: TextStyle(fontSize: 16),
                ),
              )),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text('Balance',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
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
                  style: TextStyle(fontSize: 16),
                ),
              ))
        ],
      ),
    );
  }

  Widget EditWalletInfo() {
    return Container(
      margin: EdgeInsets.only(bottom: 20, top: 10),
      width: 200,
      height: 40,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            foregroundColor: MaterialStateProperty.all(Colors.black),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.teal.shade800)))),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditWallet()),
          );
        },
        child: Text(
          'Wallet',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  Widget ConfirmPaymentbutton() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: 200,
      height: 40,
      child: ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            // backgroundColor: MaterialStateProperty.all(Colors.teal.shade800),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ))),
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('AlertDialog Title'),
            content: const Text('AlertDialog description'),
            elevation: 0,
            // shape: ShapeBorder.BorderRadius.all(10),
            actions: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                width: 300,
                height: 200,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextField(

                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 40,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextField(

                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 40,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextField(

                          ),
                        ),
                        Spacer(),
                        Container(

                          width: 40,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextField(
                            style: TextStyle(),

                          ),
                        )
                      ],
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel', style: TextStyle(fontSize: 16),),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK', style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        child: Text(
          'Confirm',
          style: TextStyle(fontSize: 16),
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
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10),
                child: Row(
                  children: [
                    Text(
                      'Number of seats',
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      '5',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              )),
          Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10),
                child: Row(
                  children: [
                    Text(
                      'Event Date',
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      'December 2023',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              )),
          Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10),
                child: Row(
                  children: [
                    Text(
                      'Event Location',
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      'Hawasa',
                      style: TextStyle(fontSize: 16),
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

import 'package:ethiocart/Screens/payement/pending_payments.dart';
import 'package:ethiocart/Screens/payement/transaction_detail.dart';
import 'package:flutter/material.dart';

class paymentWallet extends StatefulWidget {
  const paymentWallet({super.key});

  @override
  State<paymentWallet> createState() => _paymentWalletState();
}

class _paymentWalletState extends State<paymentWallet> {
  void changeView() {
    setState(() {
      AlertDialog(
        title: const Text('AlertDialog Title'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('This is a demo alert dialog.'),
              Text('Would you like to approve of this message?'),
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            Text(
              'Wallet',
              style: TextStyle(),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.teal.shade800,
      ),
      body: Material(
        child: SafeArea(
          child: Center(
            child: walletDes(context),
            // child: ElevatedButton(
            //
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            //
            // ),
          ),
        ),
      ),
    );
  }

  Widget walletDes(context) {
    bool colorValue = true;
    var new_red = Colors.blue;
    return ListView(
      children: [
        Column(
          children: [
            creditCard(),
            Padding(padding: EdgeInsets.only(top: 0)),
            Container(
              margin: EdgeInsets.only(bottom: 15,top: 10),
                child: Text(
              'Pending Payments',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            )),
            pendingPaymentCard(),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
              'Transaction History',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            )),
            for (var i = 0; i < 6; i++)
              Container(
                //transaction History
                padding: EdgeInsets.only(bottom: 0),
                height: 140,
                width: 400,
                margin: EdgeInsets.only(bottom: 10, top: 10),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => detailTransactions()),
                    );
                  },
                  child: Row(
                    children: [
                      Material(
                        elevation: 0,
                        borderRadius: BorderRadius.circular(35),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.deepPurpleAccent,
                          child: Icon(Icons.person, size: 30, color: Colors.white,),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 30, left: 10),
                              child: Text('Jorka Events',
                                  style: TextStyle(fontSize: 20))),
                          Container(
                              margin: EdgeInsets.only(left: 10, top: 20),
                              child: Text('July,3,2022',
                                  style: TextStyle(fontSize: 18))),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 100, top: 20),
                          child:
                              Text('100 birr', style: TextStyle(fontSize: 20))),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }

  Container creditCard() {
    return Container(
      height: 240,
      width: 400,
      decoration: BoxDecoration(
        color: Color(0xffE55C20),
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.only(bottom: 20, top: 20),
      child: Material(
        color: Color(0xff046B40),
        borderRadius: BorderRadius.circular(15),
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Awash Bank',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Spacer(),
                  Text('credit',
                      style: TextStyle(fontSize: 35, color: Colors.white)),
                ],
              ),
              Row(
                children: [
                  Text('2', style: TextStyle(fontSize: 18, color: Colors.white))
                ],
              ),
              Row(
                children: [
                  Text('3000 birr',
                      style: TextStyle(fontSize: 18, color: Colors.white))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Andrew Ansley',
                      style: TextStyle(fontSize: 25, color: Colors.white))
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Text(
                    '013200********00',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Spacer(),
                  Text(
                    '12/23',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Spacer(),
                  Stack(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50)),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget pendingPaymentCard() {
    return Material(
      elevation: 0,
      child: Container(
        width: 400,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.only(left: 20, top: 10),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Pending !',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.w600),
              )
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('Payment takes two business days to process',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      overflow: TextOverflow.ellipsis))
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('you can Proceed to Your Payments',
                    style: TextStyle(fontSize: 16, color: Colors.black))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => pendingPayment()),
                      );
                    },
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => pendingPayment()),
                        );
                      },
                      child: Text(
                        'Proceed',
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          shadowColor: MaterialStateProperty.all(Colors.black),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.deepPurpleAccent),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side:
                                      BorderSide(color: Colors.deepPurpleAccent)))),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget transactionDialog(context) {
    return GestureDetector(
      onTap: () {
        AlertDialog(
          elevation: 5,
          title: const Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

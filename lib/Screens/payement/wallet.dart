import 'package:ethiocart/Screens/payement/editwallet.dart';
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
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              'wallet',
              style: TextStyle(fontSize: 20),
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
          ),
        ),
      ),
    );
  }

  Widget walletDes(context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditWallet()),
                    );
                  },
                  child: creditCard()

              ),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                'Transaction History',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              )),
              Container(
                height: height*0.65,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom:5, top: 5),
                    child: TransactionHistory(context),
                  );
                },),
              )
            ],
          ),
        ),
      ],
    );
  }

  Container TransactionHistory(context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
              height: height*0.14,
              padding: EdgeInsets.only(left: 5, right: 5),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.teal.shade600,
                        child: Icon(Icons.person, size: 30, color: Colors.white,),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 30, left: 10),
                            child: Text('Jorka Events',
                                style: TextStyle(fontSize: 20))),
                        Container(
                            padding: EdgeInsets.only(left: 10, top: 20),
                            child: Text('July,3,2022',
                                style: TextStyle(fontSize: 18))),
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 100, top: 20),
                        child:
                            Text('100 birr', style: TextStyle(fontSize: 20))),
                  ],
                ),
              ),
            );
  }

  Container creditCard() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height*0.2,
      width: width*0.95,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Awash Bank',
                  style: TextStyle(fontSize: 18, color: Colors.teal.shade700),
                ),
                Spacer(),
                Text('credit',
                    style: TextStyle(fontSize: 30, color: Colors.black,
                    fontWeight: FontWeight.w600
                    )),
              ],
            ),
            Row(
              children: [
                Text('Current Balance',
                    style: TextStyle(fontSize: 18, color: Colors.black))
              ],
            ),
            Row(
              children: [
                Text('3000.54 birr ',
                    style: TextStyle(fontSize: 20,
                        color: Colors.teal.shade800,
                        fontWeight: FontWeight.w500
                    ))
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('andrew Ansley',
                    style: TextStyle(fontSize: 22,
                        color: Colors.black))
              ],
            ),
            Row(
              children: [
                Text(
                  '0132 0043 967 2300',
                  style: TextStyle(color: Colors.teal.shade800,
                      fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),
                ),
                Spacer(),
                Text(
                  '12/25',
                  style: TextStyle(color: Colors.teal.shade700,
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:ethiocart/Screens/payement/editwallet.dart';
import 'package:ethiocart/Screens/payement/transaction_detail.dart';
import 'package:flutter/material.dart';

class PaymentWallet extends StatefulWidget {
  const PaymentWallet({super.key});

  @override
  State<PaymentWallet> createState() => _PaymentWalletState();
}

class _PaymentWalletState extends State<PaymentWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'wallet',
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.teal.shade800,
      ),
      body: Material(
        color: Colors.white,
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
                      MaterialPageRoute(builder: (context) => const EditWallet()),
                    );
                  },
                  child: creditCard()),
              Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: const Text(
                    'Transaction History',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  )),
              SizedBox(
                  width: width * 0.8,
                  height: height * 0.06,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: const MaterialStatePropertyAll(0),
                        backgroundColor: MaterialStatePropertyAll(
                            Colors.deepPurpleAccent.shade700),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailTransactions()),
                      );
                    },
                    child: const Text(
                      'Transactions',
                      style: TextStyle(fontSize: 18),
                    ),
                  ))
            ],
          ),
        ),
      ],
    );
  }

  Container creditCard() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.6,
      width: width * 0.95,
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
                const Spacer(),
                const Text('credit',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w600)),
              ],
            ),
            Row(
              children: const [
                Text('Current Balance',
                    style: TextStyle(fontSize: 18, color: Colors.black))
              ],
            ),
            Row(
              children: [
                Text('3000.54 birr ',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.teal.shade800,
                        fontWeight: FontWeight.w500))
              ],
            ),
            SizedBox(
                child: Image.asset('assets/images/Wallet-bro.png')),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text('andrew Ansley',
                    style: TextStyle(fontSize: 22, color: Colors.black))
              ],
            ),
            Row(
              children: [
                Text(
                  '0132 0043 967 2300',
                  style: TextStyle(
                      color: Colors.teal.shade800,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Text(
                  '12/25',
                  style: TextStyle(
                      color: Colors.teal.shade700,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

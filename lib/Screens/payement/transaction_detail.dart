import 'package:flutter/material.dart';
class DetailTransactions extends StatelessWidget {
  const DetailTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.teal.shade800,
        title: const Text('Transactions', style: TextStyle(fontSize: 22),),
      ),
      body: transactionHistory(context),
    );
  }

  Widget transactionHistory(context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height*0.14,
      padding: const EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.teal.shade600,
              child: const Icon(Icons.person, size: 30, color: Colors.white,),
            ),
          ),
          Column(
            children: [
              Container(
                  padding: const EdgeInsets.only(top: 30, left: 10),
                  child: const Text('Jorka Events',
                      style: TextStyle(fontSize: 20))),
              Container(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: const Text('July,3,2022',
                      style: TextStyle(fontSize: 18))),
            ],
          ),
          Container(
              padding: const EdgeInsets.only(left: 100, top: 20),
              child:
              const Text('100 birr', style: TextStyle(fontSize: 20))),
        ],
      ),
    );
  }
}


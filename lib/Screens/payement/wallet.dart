import 'package:flutter/material.dart';

class paymentWallet extends StatelessWidget {
  const paymentWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        title: Row(
          children: [

            Text(
              'Profile',
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
            Text(
              'Wallet',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        backgroundColor:Color(0xff428678),
        foregroundColor: Colors.white,
      ),
      body: Material(
        child: SafeArea(
          child: Center(
            child: walletDes(),
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

  Widget walletDes() {
    return ListView(
      children: [
        Column(
          children: [
            Container(
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
                              style:
                                  TextStyle(fontSize: 35, color: Colors.white)),
                        ],
                      ),
                      Row(
                        children: [
                          Text('2',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white))
                        ],
                      ),
                      Row(
                        children: [
                          Text('3000 birr',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Andrew Ansley',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white))
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
            ),
            Padding(padding: EdgeInsets.only(top: 0)),
            Container(
                child: Text(
              'Pending Payments',
              style: TextStyle(fontSize: 20),
            )),
            Container(
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                  color: Color(0xfff2f2ed),
                  borderRadius: BorderRadius.circular(15)),
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
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Proceed',
                            style: TextStyle(fontSize: 16),
                          ),
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(12),
                              shadowColor:
                                  MaterialStateProperty.all(Colors.black),
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.deepPurpleAccent),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(
                                          color: Colors.deepPurpleAccent)))),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
                child: Text(
              'Transaction History',
              style: TextStyle(fontSize: 20),
            )),
            for (var i = 0; i < 6; i++)
              Container(
                //transaction History
                padding: EdgeInsets.only(bottom: 0),
                height: 100,
                width: 400,
                margin: EdgeInsets.only(bottom: 10, top: 10),
                decoration: BoxDecoration(
                    color: Color(0xffE0EBE3),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.blueAccent,
                    ),
                    Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 30, left: 10),
                            child: Text('Jorka Events',
                                style: TextStyle(fontSize: 20))),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text('July,3,2022',
                                style: TextStyle(fontSize: 18))),
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 100),
                        child:
                            Text('100 birr', style: TextStyle(fontSize: 20))),
                  ],
                ),
              ),
          ],
        ),
      ],
    );
  }
}

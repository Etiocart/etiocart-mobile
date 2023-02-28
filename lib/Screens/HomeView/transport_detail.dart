import 'package:ethiocart/Screens/transport/transport_booking.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import '../payement/payment_confirmation.dart';

class TransportDetail extends StatefulWidget {
  const TransportDetail({Key? key}) : super(key: key);

  @override
  State<TransportDetail> createState() => _TransportDetailState();
}

class _TransportDetailState extends State<TransportDetail> {
  @override
  Widget build(BuildContext context) {
    return transportPage();
  }

  Widget transportPage() {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Transport',
          style: TextStyle(),
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: body(context),
    );
  }

  Widget body(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: Colors.grey.shade200,
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Travel Detail',
                                style: TextStyle(
                                    fontSize: 22),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text('Thursday, july 16, 2020',
                                  style: TextStyle(fontSize: 18)),
                              Container(
                                  margin: const EdgeInsets.only(left: 25, right: 25),
                                  child: const Icon(
                                    CupertinoIcons.bus,
                                    color: Colors.grey,
                                  )),
                              const Text('Addis Ababa',
                                  style: TextStyle(fontSize: 18))
                            ],
                          ),
                          Column(
                            children: [
                              const Text('Departure'),
                              Container(
                                margin: const EdgeInsets.only(top: 5, bottom: 5),
                                height: 60,
                                width: 2,
                                color: Colors.black54,
                              ),
                              const Text('Destination')
                            ],
                          ),
                          Row(
                            children: [
                              const Text('Saturday, july 18, 2020',
                                  style: TextStyle(fontSize: 18)),
                              Container(
                                  margin: const EdgeInsets.only(left: 20, right: 20),
                                  child: const Icon(CupertinoIcons.location_fill,
                                      color: Colors.grey)),
                              const Text('Adama', style: TextStyle(fontSize: 18))
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '1250 ETB',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, bottom: 5),
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 50),
                              ),
                              const Text(
                                'Baggae Allowance',
                                style: TextStyle(fontSize: 18),
                              ),
                              const Spacer(),
                              Container(
                                height: 20,
                                width: 1,
                                color: Colors.black,
                              ),
                              const Spacer(),
                              const Text('No additional fee upto',
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'SFPro'))
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                          ),
                          Row(
                            children: const [
                              Text('Provider', style: TextStyle(fontSize: 18)),
                              Spacer(),
                              Text('selam sc.', style: TextStyle(fontSize: 18))
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 1,
                                width: 360,
                                color: Colors.black54,
                              )
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                          ),
                          Row(
                            children: const [
                              Text('No Baggage fee upto',
                                  style: TextStyle(fontSize: 18)),
                              Spacer(),
                              Text('10 Kilograms.',
                                  style: TextStyle(fontSize: 18))
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 1,
                                width: 360,
                                color: Colors.black54,
                              )
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                          ),
                          Row(
                            children: const [
                              Text('Refund', style: TextStyle(fontSize: 18)),
                              Spacer(),
                              Text('No Refund.', style: TextStyle(fontSize: 18))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
          ),
          confirmButton()
        ],
      ),
    );
  }


  Widget confirmButton(){
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width*0.8,
      height: height*0.06,
      child: ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(
                Colors.deepPurpleAccent.shade700),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ))),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const TransportBooking()),
          );
        },
        child: const Text('Buy Ticket', style: TextStyle(fontSize: 18),),
      ),
    );
  }
}

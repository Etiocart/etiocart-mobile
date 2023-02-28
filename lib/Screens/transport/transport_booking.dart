import 'package:ethiocart/Screens/payement/payment_confirmation.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class TransportBooking extends StatefulWidget {
  const TransportBooking({Key? key}) : super(key: key);

  @override
  State<TransportBooking> createState() => _TransportBookingState();
}

int price = 10;

int counter = 10;

int seats = 1;

generalAddcounter() {
  price = counter + price;
  seats = seats + 1;
}

generalSubCounter() {
  while (true) {
    if (price != 10) {
      price = price - 10;
    } else {
      return price;
    }
    break;
  }
  seats = seats - 1;
}

class _TransportBookingState extends State<TransportBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking'),
        elevation: 0,
        foregroundColor: Colors.teal.shade900,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.grey.shade200,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: passengerBookingDetail(),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                // child: PassengerLuggageDetail(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: otherPaymentOptions(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: confirmButton(),
              ),

            ],
          )),
    );
  }

  Widget passengerBookingDetail(){
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.3,
      width: width * 1.0,
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text('Destination:', style: TextStyle(fontSize: 18),),
              ),
              Padding(padding: EdgeInsets.only(right: 40)),
              Text('Mekele', style: TextStyle(fontSize: 18),)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      generalSubCounter();
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.blueAccent)),
                    child: const Center(
                        child: Text(
                          '-',
                          style: TextStyle(fontSize: 35, color: Colors.grey),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Text('$seats'),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      generalAddcounter();
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.blueAccent)),
                    child: const Center(
                        child: Text(
                          '+',
                          style: TextStyle(fontSize: 35, color: Colors.grey),
                        )),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: const [
                Text('Total Price :', style: TextStyle(fontSize: 18),),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('1200', style: TextStyle(fontSize: 18),),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: const [
                Text('Departure time :', style: TextStyle(fontSize: 18),),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('12:00 AM, Monday Jan 22 ', style: TextStyle(fontSize: 18),),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: const [
                Text('Confirmation', style: TextStyle(fontSize: 18),),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(': Waiting', style: TextStyle(fontSize: 18, color: Colors.grey),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget passengerLuggageDetail(){
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.1,
      width: width * 1.0,
      color: Colors.white,
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: const [
                Text('Luggage :', style: TextStyle(fontSize: 18),),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('No', style: TextStyle(fontSize: 18),),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: const [
                Text('Special Accomodations :', style: TextStyle(fontSize: 18),),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('Yes', style: TextStyle(fontSize: 18),),
                )
              ],
            ),
          ),
          Center(
            child: QrImage(
              data: "1234567890",
              version: QrVersions.auto,
              size: 100,
            ),
          ),
        ],
      ),
    );
  }

  Widget otherPaymentOptions(){
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.3,
      width: width * 1.0,
      color: Colors.white,
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: const [
                Text('Luggage :', style: TextStyle(fontSize: 18),),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('No', style: TextStyle(fontSize: 18),),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: const [
                Text('Special Accomodations :', style: TextStyle(fontSize: 18),),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('Yes', style: TextStyle(fontSize: 18),),
                )
              ],
            ),
          )
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
                builder: (context) => const PaymentConfirmation()),
          );
        },
        child: const Text('Make Pay', style: TextStyle(fontSize: 18),),
      ),
    );
  }
}

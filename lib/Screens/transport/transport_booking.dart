import 'package:ethiocart/Screens/payment/payment_confirmation.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class TransportBooking extends StatefulWidget {
  const TransportBooking({Key? key}) : super(key: key);

  @override
  State<TransportBooking> createState() => _TransportBookingState();
}

class _TransportBookingState extends State<TransportBooking> {

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  int price = 1200;
  int counter = 1;
  int seats = 1;
  int totalPrice =0;

  generalAddcounter() {
    setState(() {
      seats = seats+1;
      totalPrice=price*seats;
    });
  }

  generalSubCounter() {
    while (seats!=0) {
      setState(() {
        seats = seats-1;
        price=price*seats;
      });
    }
  }

  priceCounter(){
    setState(() {
      price=totalPrice;
    });
  }

  //  priceCounter() {
  //   if(generalAddcounter()==true){
  //     counter = counter+counter;
  //     var amount =counter*price;
  //     String amountp = amount.toString();
  //     return amountp;
  //   }
  //   else{
  //     counter=counter-counter;
  //     var amount =counter*price;
  //     String amountp = amount.toString();
  //     return amountp;
  //   }
  // }


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
                padding: const EdgeInsets.only(top: 10),
                child: otherPaymentOptions(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: priceDetail(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: passengerBookingDetail(),
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
      height: height * 0.34,
      width: width * 1.0,
      decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(15)
      ),
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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                QrImage(
                  data: "fuckyou",
                  version: QrVersions.auto,
                  size: 120,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 5),
            child: Center(child: Text('ET456797874754', style: TextStyle(fontSize: 18),)),
          ),
        ],
      ),
    );
  }

  Padding counterButtons() {
    return Padding(
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
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.blueAccent)),
                  child: const Center(
                      child: Text(
                        '-',
                        style: TextStyle(fontSize: 25, color: Colors.grey),
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
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.blueAccent)),
                  child: const Center(
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 25, color: Colors.grey),
                      )),
                ),
              )
            ],
          ),
        );
  }

  Widget otherPaymentOptions(){
    //the first container that contains the avatar
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.2,
      width: width * 1.0,
      decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.circular(15)
      ),
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          const Text('customer detail', style: TextStyle(fontSize: 18),),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children:  [
                 Column(children:  [
                   CircleAvatar(radius: 45,
                backgroundColor:const Color(0xff394f6b).withOpacity(0.6),
                   )
                 ],),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10, right: 10
                  ),
                  child: Container(width: width*0.004, height: height*0.12,
                      color:const Color(0xff394f6b).withOpacity(0.6),),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                  Text('mr abebe kebede', style: TextStyle(fontSize: 18),),
                  Text('+251 912 914 554', style: TextStyle(fontSize: 18),),
                  Text('Bole, addis ababa, ethiopia', style: TextStyle(fontSize: 18),),
                  Text('ET139278274', style: TextStyle(fontSize: 18),)
                ],)
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget priceDetail(){
    //the first coontainer that contains the avatar
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.2,
      width: width * 1.0,
      decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(15)
      ),
      padding: const EdgeInsets.only(top: 10),
      child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
              child: Row(
                children: const [
                  Text(
                    'city',
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Text('city',style: TextStyle(fontSize: 20),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
              child: Row(
                children:  [const Text('Tickets',style: TextStyle(fontSize: 17, color: Colors.grey),),
                  const Spacer(),counterButtons(),],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
              child: Row(
                children:  [Text('Unit Price',style: TextStyle(fontSize: 17),), Spacer(),
                  Text('1200',style: TextStyle(fontSize: 17),)],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
              child: Row(
                children:  [
                  Container(width: width*0.9,
                  height: height*0.002,
                    color: Colors.grey,
                  )
                ],
              ),
            ),Padding(
              padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
              child: Row(
                children:  [Text('total',style: TextStyle(fontSize: 17),),
                  Spacer(), Text(price.toString(),style: TextStyle(fontSize: 17),)],
              ),
            ),

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



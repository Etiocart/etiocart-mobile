import 'package:ethiocart/Screens/Events/event_repo/event_model.dart';
import 'package:ethiocart/Screens/Tickets/tickets_repo/event_tickets_model.dart';
import 'package:ethiocart/Screens/tickets/ticket_widgets/ticket_confirmation.dart';
import 'package:ethiocart/Screens/payment/payment_confirmation.dart';
// import 'package:ethiocart/Screens/tickets/tickets_screen.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../tickets_repo/event_tickets_servics.dart';

class BuyTickets extends StatefulWidget {
  final Events data;
  final int id;
  const BuyTickets({Key? key, required this.data, required this.id})
      : super(key: key);

  @override
  State<BuyTickets> createState() => _BuyTicketsState();
}

class _BuyTicketsState extends State<BuyTickets> {
  bool confirmed = true;

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

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   Future future;
  //   future.then((value) {
  //     Navigator.pushNamed(context, "/foo");
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    Future<List<Tickets>> _futurticket =
        EventTicketServics().fetchPrices(widget.id);
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 15),
                child: Center(
                  child: Text(
                    'Confirm Your Information',
                    style: TextStyle(fontSize: 22, color: Colors.teal.shade900),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FutureBuilder<List<Tickets>>(
                  future: _futurticket,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      Center(
                        child: Text('${snapshot.error}'),
                      );
                    }
                    if (snapshot.hasData) {
                      return Container(
                        height: height * 0.5,
                        child: ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              return buyTicketModule(snapshot.data, index);
                            }),
                      );
                    }
                    return Center(child: CircularProgressIndicator());
                  },
                  // child: buyTicketModule()
                ),
              ),
              Spacer(),
              bookingDetail(),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: addToCartButton(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: confirmPaymentbutton(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buyTicketModule(List<Tickets>? data, int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5, right: 10),
          child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.1)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                    child: Text(
                      '${data![index].ticketType!.name}',
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                    child: Text(
                      // 'Ticket Price'
                      '${data[index].priceBirr}',
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                    child: Text(
                      // 'discountedPrice',
                      '${data[index].discount}',
                      style: const TextStyle(
                          fontSize: 18, decoration: TextDecoration.lineThrough),
                    ),
                  ),
                  const Spacer(),
                  plusMinusCounter()
                ],
              )),
        ),
        // Row(
        //   children: const [
        //     Text('Buyer'),
        //   ],
        // ),
        // ticketStandardChoosing('standard', 300, 150),
        // Row(
        //   children: const [
        //     Text('Buyer'),
        //   ],
        // ),
        // ticketStandardChoosing('VIP', 800, 400),
        // // Row(
        // //   children: const [
        // //     Text('Buyer'),
        // //   ],
        // // ),
        // ticketStandardChoosing('VVIP', 1000, 600),
        // // Row(
        // //   children: const [
        // //     Text('Buyer2'),
        // //   ],
        // // ),
        // ticketStandardChoosing('Tour', 1200, 800),
        // Padding(
        //   padding: const EdgeInsets.only(top: 30),
        //   child: bookingDetail(data, index),
        // )
      ],
    );
  }

  Widget bookingDetail() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'event Location: ',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 40)),
              Text(
                // 'Bole millenium hall',
                '${widget.data.location}',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: [
                Text(
                  'Total Price :',
                  style: TextStyle(fontSize: 18),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    '1200',
                    // ' ${data![index].priceBirr}',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: const [
                Text(
                  'event time :',
                  style: TextStyle(fontSize: 18),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    '12:00 AM, Monday Jan 22 ',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child:
                      //    if the variable confirmed is true then show waiting
                      //    if not show the qr bar
                      (confirmed)
                          ? Text(
                              ': Waiting',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            )
                          : SizedBox(
                              child: Center(
                                child: QrImage(
                                  data: "1234567890",
                                  version: QrVersions.auto,
                                  size: 150,
                                ),
                              ),
                            ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget confirmPaymentbutton() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.06,
      width: width * 0.8,
      child: ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(Colors.green.shade800),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ))),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PaymentConfirmation()));
        },
        child: const Text(
          'Confirm',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  Widget addToCartButton() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.06,
      width: width * 0.8,
      child: ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(Colors.green.shade800),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ))),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PaymentConfirmation()));
        },
        child: const Text(
          'Add to Cart',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  plusMinusCounter() {
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
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.blueAccent)),
              child: const Center(
                  child: Text(
                '-',
                style: TextStyle(fontSize: 30, color: Colors.grey),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text('$seats'),
          ),
          InkWell(
            onTap: () {
              setState(() {
                generalAddcounter();
              });
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.blueAccent)),
              child: const Center(
                  child: Text(
                '+',
                style: TextStyle(fontSize: 30, color: Colors.grey),
              )),
            ),
          )
        ],
      ),
    );
  }

  ticketStandardChoosing(String standard, int price, int discounted) {
    String tickStandard = standard;
    int ticketPrice = price;
    int discountedPrice = discounted;
    return Padding(
      padding: const EdgeInsets.only(top: 5, right: 10),
      child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.1)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                child: Text(
                  tickStandard,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                child: Text(
                  '$ticketPrice',
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                child: Text(
                  '$discountedPrice',
                  style: const TextStyle(
                      fontSize: 18, decoration: TextDecoration.lineThrough),
                ),
              ),
              const Spacer(),
              plusMinusCounter()
            ],
          )),
    );
  }
}

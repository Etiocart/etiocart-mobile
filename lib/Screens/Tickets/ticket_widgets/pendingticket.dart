import 'package:ethiocart/Screens/Tickets/ticket_widgets/confirm_card_info.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PendingTickets extends StatefulWidget {
  PendingTickets({Key? key}) : super(key: key);

  @override
  State<PendingTickets> createState() => _PendingTicketsState();
}

class _PendingTicketsState extends State<PendingTickets> {
  int price = 10;

  int counter = 10;

  int seats = 1;

  generalAddcounter() {
    price = counter + price;
    int newPrice = price;
    seats = seats + 1;
  }

  generalSubCounter() {
    while (true) {
      if (price != 10)
        price = price - 10;
      else
        return price;
      break;
    }
    seats = seats - 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.teal.shade800,
        backgroundColor: Colors.white,
        title: Text('Pay'),
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              'Choose number of seats',
              style: TextStyle(fontSize: 18),
            ),
            Padding(
                padding: EdgeInsets.only(left: 130, top: 30), child: Booking()),
            Spacer(),
            TermsService(),
            ContinueButton()
          ],
        ),
      ),
    );
  }

  Widget Booking() {
    return Container(
      child: Row(
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
              child: Center(
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
              child: Center(
                  child: Text(
                '+',
                style: TextStyle(fontSize: 35, color: Colors.grey),
              )),
            ),
          )
        ],
      ),
    );
  }

  Widget ContinueButton() {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      width: 200,
      height: 40,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),

                )
            )
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CardInfoConfirmation()),
          );
        },
        child: Text('Continue', style: TextStyle(fontSize: 18),),
      ),
    );
  }
  Widget TermsService(){
    return Container(
      padding: EdgeInsets.only(left: 20, bottom: 20),
      child: Text.rich(
        maxLines: 3,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16),
        TextSpan(
          children: [
            TextSpan(text: 'I accepet the event\'s'),
            TextSpan(
              recognizer: new TapGestureRecognizer(),
              text: 'Terms of Service, Community Guidelines,',
              style: TextStyle(fontWeight: FontWeight.normal, color: Colors.blue),
            ),
            TextSpan(text: 'and'),
            TextSpan(
              text: 'Privacy Policy',
              style: TextStyle(fontWeight: FontWeight.normal, color: Colors.blue),
            ),
            TextSpan(text: '(Required)'),
          ],
        ),
      ),
    );
  }
}

import 'package:ethiocart/Screens/Events/event_repo/event_model.dart';
// import 'package:ethiocart/Screens/Tickets/ticket_widgets/buy_tickets.dart';
// import 'package:ethiocart/Screens/tickets/ticket_widgets/buy_tickets.dart';
import 'package:ethiocart/Screens/Tickets/ticket_widgets/buy_tickets.dart';
// import 'package:ethiocart/Screens/tickets/ticket_widgets/buy_tickets.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../tickets_repo/event_tickets_model.dart';
import '../tickets_repo/event_tickets_servics.dart';

class TicketInformationDetail extends StatefulWidget {
  final int id;
  final Events data;
  const TicketInformationDetail({
    Key? key,
    required this.data,
    required this.id,
  }) : super(key: key);

  @override
  State<TicketInformationDetail> createState() =>
      _TicketInformationDetailState();
}

class _TicketInformationDetailState extends State<TicketInformationDetail> {
  @override
  Widget build(BuildContext context) {
    // Future<List<Ticketss>> _futurticket =
    //     EventTicketServics().fetchPrices(widget.id);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          foregroundColor: Colors.teal.shade800,
          backgroundColor: Colors.white,
          title: Text("${widget.data.organizer!.name}"),
        ),
        body: ListView(
          children: [
            eventPhotoCard(),
            termsService(),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: bookEventButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget bookEventButton() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.06,
      width: width * 0.8,
      child: ElevatedButton(
        style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            backgroundColor: MaterialStateProperty.all(Colors.green.shade800),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ))),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      BuyTickets(data: widget.data, id: widget.id)));
        },
        child: const Text(
          'Book Event',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  Widget termsService() {
    return Container(
      padding: const EdgeInsets.only(left: 20, bottom: 20),
      child: Text.rich(
        maxLines: 3,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
        TextSpan(
          children: [
            const TextSpan(text: 'I accepet the event\'s'),
            TextSpan(
              recognizer: TapGestureRecognizer(),
              text: 'Terms of Service, Community Guidelines,',
              style: const TextStyle(
                  fontWeight: FontWeight.normal, color: Colors.blue),
            ),
            const TextSpan(text: 'and'),
            const TextSpan(
              text: 'Privacy Policy',
              style:
                  TextStyle(fontWeight: FontWeight.normal, color: Colors.blue),
            ),
            const TextSpan(text: '(Required)'),
          ],
        ),
      ),
    );
  }

  Widget eventPhotoCard() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: height * 0.39,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/540.png'),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: width * 0.73,
                        top: height * 0.015,
                        child: Container(
                          height: 65,
                          width: 65,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.green.shade800,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                              child: Text(
                            'DEC 30 ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )),
                        ),
                      ),
                      eventInformation(height, width),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Container(
              padding: const EdgeInsets.only(top: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About event',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.teal.shade900,
                    ),
                  ),
                  Text(
                    " ${widget.data.description}",
                    // 'Lorem Ipsum has been the industry standard dummy text ever since the 1500s to make a type specimen book',
                    softWrap: true,
                    maxLines: 4,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  )
                ],
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            padding: const EdgeInsets.only(),
            width: double.infinity,
            height: height * 0.1,
            decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/382.png'),
                ),
                color: Colors.deepPurpleAccent.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5)),
          )
        ],
      ),
    );
  }

  Positioned eventInformation(double height, double width) {
    return Positioned(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.transparent, Colors.grey.shade800]),
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(15),
                bottomLeft: Radius.circular(15))),
        height: height * 0.38,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                width: width * 0.6,
                height: height * 0.07,
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  'Tomorrowland ${widget.data.organizer!.name}',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 5, left: 10, right: 10),
              child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: const Icon(
                        Icons.watch_later_outlined,
                        color: Colors.white,
                      )),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10, left: 10),
                    child: Text(
                      '4pm - 12pm',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: const Icon(
                        Icons.calendar_month_rounded,
                        color: Colors.white,
                      )),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10, left: 5),
                    child: Text(
                      '25- 26 feb, 2023',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

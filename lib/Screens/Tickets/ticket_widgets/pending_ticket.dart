import 'package:ethiocart/Screens/Tickets/ticket_widgets/confirm_pay_info.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PendingTickets extends StatefulWidget {
  const PendingTickets({Key? key}) : super(key: key);

  @override
  State<PendingTickets> createState() => _PendingTicketsState();
}

class _PendingTicketsState extends State<PendingTickets> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          foregroundColor: Colors.teal.shade800,
          backgroundColor: Colors.white,
          title: const Text('Pay'),
        ),
        body: ListView(
            children: [
              EventInfoCard(),
              const Spacer(),
              TermsService(),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: BookEventButton(),
              ),
            ],
        ),
      ),
    );
  }

  Widget BookEventButton() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.06,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent.shade700),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ))),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PayInfoConfirm()),
          );
        },
        child: const Text(
          'Book Event',
          style: TextStyle(fontSize: 17),
        ),
      ),
    );
  }

  Widget TermsService() {
    return Container(
      padding: const EdgeInsets.only(left: 20, bottom: 20),
      child: Text.rich(
        maxLines: 3,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
        TextSpan(
          children: [
            const TextSpan(text: 'I accepet the event\'s'),
            TextSpan(
              recognizer: TapGestureRecognizer(),
              text: 'Terms of Service, Community Guidelines,',
              style:
                  const TextStyle(fontWeight: FontWeight.normal, color: Colors.blue),
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

  Widget EventInfoCard() {
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
                color: Colors.white,),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/540.png'),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left:width*0.73,
                        top: height*0.015,
                        child: Container(
                          height: 65,
                          width: 65,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.teal.shade700,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                              child: Text(
                            'DEC 30 ',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'SFPro'),
                          )),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: <Color>[
                                    Colors.transparent,
                                    Colors.grey.shade800
                                  ]),
                              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))),
                          height: height*0.38,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Container(
                                  width: width*0.6,
                                  height: height*0.07,
                                  padding: const EdgeInsets.only(left: 10, top: 10),
                                  child: const Text(
                                    'Tomorrowland',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontFamily: 'SFPro'),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(bottom: 5, left: 10, right: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      padding:const EdgeInsets.only(bottom: 10),
                                      child: const Icon(
                                        Icons.watch_later_outlined,
                                        color: Colors.white,
                                      )
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 10, left: 10),
                                      child: Text(
                                        '4pm - 12pm',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontFamily: 'SFPro'),
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                        padding:const EdgeInsets.only(bottom: 10),
                                        child: const Icon(
                                          Icons.calendar_month_rounded,
                                          color: Colors.white,
                                        )
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 10, left: 5),
                                      child: Text(
                                        '25- 26 feb, 2023',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontFamily: 'SFPro'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10, right: 10),
            child: Container(
              padding: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: height * 0.12,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Description', style: TextStyle(fontSize: 18,color: Colors.teal.shade900, fontWeight: FontWeight.w600),),
                  Text('simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
                    softWrap: true,
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade900),
                  )
                ],
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top:10)),
          Padding(
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: Container(
              padding: const EdgeInsets.only(),
              width: double.infinity,
              height: height * 0.2,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/382.png'),
                  ),
                  color: Colors.teal.shade900, borderRadius: BorderRadius.circular(20)),
            ),
          )
        ],
      ),
    );
  }
}

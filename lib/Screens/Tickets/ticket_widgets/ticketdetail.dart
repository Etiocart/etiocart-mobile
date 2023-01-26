import 'package:ethiocart/Screens/Tickets/ticket_widgets/confirm_card_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PendingTickets extends StatefulWidget {
  PendingTickets({Key? key}) : super(key: key);

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
          title: Text('Pay'),
        ),
        body: Container(
          child: Column(
            children: [
              EventInfoCard(),
              Spacer(),
              TermsService(),
              BookEventButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget BookEventButton() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      width: width * 0.6,
      height: height * 0.05,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.teal.shade800),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ))),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CardInfoConfirmation()),
          );
        },
        child: Text(
          'Book Event',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  Widget TermsService() {
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
              style:
                  TextStyle(fontWeight: FontWeight.normal, color: Colors.blue),
            ),
            TextSpan(text: 'and'),
            TextSpan(
              text: 'Privacy Policy',
              style:
                  TextStyle(fontWeight: FontWeight.normal, color: Colors.blue),
            ),
            TextSpan(text: '(Required)'),
          ],
        ),
      ),
    );
  }

  Widget EventInfoCard() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
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
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/540.png'),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left:310,
                        top: 15,
                        child: Container(
                          height: 65,
                          width: 65,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.teal.shade700,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
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
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))),
                          height: 165,
                          margin: EdgeInsets.only(top: 170),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Container(
                                  width: width*0.6,
                                  height: height*0.07,
                                  padding: EdgeInsets.only(left: 25),
                                  child: Text(
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
                                margin: EdgeInsets.only(bottom: 5, left: 10, right: 30),
                                child: Row(
                                  children: [
                                    Container(
                                      padding:EdgeInsets.only(bottom: 10),
                                      child: Icon(
                                        Icons.watch_later_outlined,
                                        color: Colors.white,
                                      )
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 10, left: 10),
                                      child: Text(
                                        '4pm - 12pm',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontFamily: 'SFPro'),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                        padding:EdgeInsets.only(bottom: 10),
                                        child: Icon(
                                          Icons.calendar_month_rounded,
                                          color: Colors.white,
                                        )
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 10, left: 10),
                                      child: Text(
                                        '25- 26 feb, 2023',
                                        style: TextStyle(
                                            fontSize: 18,
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
              padding: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: height * 0.12,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Description', style: TextStyle(fontSize: 20,color: Colors.teal.shade900, fontWeight: FontWeight.w600),),
                  Text('simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
                    softWrap: true,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade900),
                  )
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top:0)),
          Padding(
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: Container(
              padding: EdgeInsets.only(),
              width: double.infinity,
              height: height * 0.15,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/382.png'),
                  ),
                  color: Colors.teal.shade800, borderRadius: BorderRadius.circular(25)),
            ),
          )
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:flutter/material.dart';
import 'ticket_confirmation.dart';
import 'tickets_widget.dart';

class Completed extends StatefulWidget {
  const Completed({Key? key}) : super(key: key);

  @override
  State<Completed> createState() => _CompletedState();
}

class _CompletedState extends State<Completed> {

  late bool _isloading = false;
  @override
  void initState() {
    _isloading = true;
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isloading = false;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    if(_isloading) {
      return Container(
        height: height*0.804,
      padding: EdgeInsets.all(0),
      child: ListView.builder(
        itemCount: 5,
      itemBuilder: (context, index) {
        return CompletedTicketSkeleton(context);
      },
      ),
    );
    } else {
      return Container(
        height: height*0.804,
        padding: EdgeInsets.all(0),
        child: RefreshIndicator(
          displacement: height*0.05,
          edgeOffset: height*0.005,
          onRefresh: () async {
            await Future.delayed(Duration(milliseconds: 1500));
            setState(() {

            });
          },
          child: ListView.builder(
            physics: ScrollPhysics(parent: BouncingScrollPhysics()),
            itemCount: 5,
            itemBuilder: (context, index) {
              return CompletedTicket(context);
            },
          ),
        ),
      );
    }
  }
}

Widget CompletedTicket(context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return Expanded(
    child: Container(
      width: double.infinity,
      height: height * 0.18,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only( left: 5, right: 10, top: 8),
                child: Container(
                  height: height * 0.16,
                  width: width * 0.35,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TicketDetail()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Container(
                            child: Text(
                              'Prepared by',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 16,
                                  fontWeight: FontWeight.w400, color: Colors.grey.shade500),
                            )),
                      ),
                      Flexible(
                        child: Container(
                          child: Text('Concert prepared',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.teal.shade900,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Text('Sunday Dec 30',
                          style: TextStyle(
                              fontSize: 16)),
                      Row(
                        children: [
                          Text('Millenium Hall',
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 18, color: Colors.grey.shade500)),
                          // Icon(Icons.location_on_sharp,
                          //   color: Colors.deepOrange,),

                        ],
                      ),
                    ],
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget CompletedTicketSkeleton(context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return Expanded(
    child: Container(
      width: double.infinity,
      height: height * 0.18,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only( left: 5, right: 10, top: 8),
                child: Container(
                  height: height * 0.16,
                  width: width * 0.35,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.06),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: width*0.2,
                  height: height*0.02,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.08)),
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Container(
                  width: width*0.5,
                  height: height*0.03,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.08)),
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Container(
                  width: width*0.25,
                  height: height*0.02,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.08)),
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Container(
                  width: width*0.3,
                  height: height*0.02,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.08)),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

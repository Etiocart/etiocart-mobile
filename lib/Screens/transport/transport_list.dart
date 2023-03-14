import 'package:ethiocart/Screens/transport/transport_detail.dart';
import 'package:flutter/material.dart';

class TransportList extends StatelessWidget {
  const TransportList({Key? key}) : super(key: key);

  final List daysList = const ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          title: const Text(''),
        ),
        body: Column(
          children: [
            Padding(padding: const EdgeInsets.only(left: 0, right: 5),
            child: dateView(context),
            ),
            Container(
              color: Colors.grey[200],
              padding: EdgeInsets.only(top: 5),
              child: SizedBox(
                height: height * 0.75,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context, index) => listView(context),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  dateView(context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Text(
          'Available Tickets ',
          style: TextStyle(fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.teal.shade800),
        ),
        SizedBox(
          width: width * 1,
          height: height * 0.1,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 7,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: width * 0.18,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff394f6b).withOpacity(0.6),
                  ),
                    color:  Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Builder(
                    builder: (
                        BuildContext context) =>  const Text('Days'),
                  ),
                )
              ),
            ),
          ),
        )
      ],
    );
  }

  listView(context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const TransportDetail()),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
        child: Container(
          height: height * 0.16,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0), color: Colors.white),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
                child: Row(
                  children: const [
                    Text(
                      'Addis Ababa',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Text('Nekemt',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
                child: Row(
                  children: const [Text('depart',style: TextStyle(fontSize: 17, color: Colors.grey),),
                    Spacer(), Text('destination',style: TextStyle(fontSize: 17, color: Colors.grey),)],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
                child: Row(
                  children: const [Text('11:00 am',style: TextStyle(fontSize: 17),), Spacer(),
                    Text('1:00 pm',style: TextStyle(fontSize: 17),)],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
                child: Row(
                  children: const [Text('March 10',style: TextStyle(fontSize: 17),),
                    Spacer(), Text('March 10',style: TextStyle(fontSize: 17),)],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text('ODAA BUS',style: TextStyle(fontSize: 20),)],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ListView.builder(
// itemBuilder: (context, index) =>Center(child: Text('Mon', style: TextStyle(fontSize: 18),)) ,)

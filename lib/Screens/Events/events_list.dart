import 'package:ethiocart/Screens/search/search_delegate.dart';
import 'package:ethiocart/Screens/tickets/ticket_widgets/ticket_info_detail.dart';
import 'package:flutter/material.dart';

class EventsList extends StatefulWidget {
  const EventsList({Key? key}) : super(key: key);

  @override
  State<EventsList> createState() => _EventsListState();
}

class _EventsListState extends State<EventsList>with SingleTickerProviderStateMixin {
  final List daysList = const ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: DefaultTabController(
        length: 7,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.green.shade900,
            elevation: 0,
            title: Text('Explore', style: TextStyle(fontSize: 18),),
            actions: [

              IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: CustomSearch());
                },
                icon: ImageIcon(
                    color: Colors.green.shade800,
                    size: 22,
                    const AssetImage('assets/icons/Search.png',
                    )
                )
            ),],
            bottom:  TabBar(
              isScrollable: true,
                tabs: [
              Tab(child: SizedBox(width: width*0.1, child: Text('1', style: TextStyle(color: Colors.green.shade900),)),),
              Tab(child: SizedBox(width: width*0.1, child: Text('2', style: TextStyle(color: Colors.green.shade900),)),),
              Tab(child: SizedBox(width: width*0.1, child: Text('3', style: TextStyle(color: Colors.green.shade900),)),),
              Tab(child: SizedBox(width: width*0.1, child: Text('4', style: TextStyle(color: Colors.green.shade900),)),),
              Tab(child: SizedBox(width: width*0.1, child: Text('5', style: TextStyle(color: Colors.green.shade900),)),),
              Tab(child: SizedBox(width: width*0.1, child: Text('6', style: TextStyle(color: Colors.green.shade900),)),),
              Tab(child: SizedBox(width: width*0.1, child: Text('7', style: TextStyle(color: Colors.green.shade900),)),),

            ]),
          ),
          body: TabBarView(
            children: [
              eventListView(height, 2),
              eventListView(height,3),
              eventListView(height,2),
              eventListView(height,3),
              eventListView(height,7),
              eventListView(height,1),
              eventListView(height,8),
            ],
          ),
        ),
      )
    );
  }

   eventListView(double height, int count) {
    var tcount = count;
    return SizedBox(
      height: height * 0.83,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: tcount,
        itemBuilder: (context, index) => listView(context),
      ),
    );
  }


  listView(context) {
    // var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TicketInformationDetail()),
      ),
      child: Padding(padding: const EdgeInsets.all(10), child: feedView(context)),
    );
  }

  Widget feedView(context) {
    // var size = MediaQuery.of(context).size.aspectRatio;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.95,
      height: height * 0.16,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: width * 0.35,
                height: height * 0.14,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('assets/images/concerto.png')),
                    color: const Color(0xff394f6b).withOpacity(0.3),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
              )
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 5, top: 0),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 0),
                  child: Expanded(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 120),
                          child: Text(
                            'organizer',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey.shade500),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.verified,
                              color: Colors.blue,
                            ))
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, bottom: 0),
                    child: Text(
                      'date and time',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, bottom: 0),
                    child: Text(
                      'Event Location',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 130),
                  child: Row(
                    children: [
                      Text(
                        '400 birr',
                        style: TextStyle(
                            fontSize: 16, color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'discounted',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16, color: Colors.blue.shade700),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '3m ago',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade700),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

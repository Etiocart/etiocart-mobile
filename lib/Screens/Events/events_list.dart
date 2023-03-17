import 'package:ethiocart/Screens/Events/event_repo/event_model.dart';
import 'package:ethiocart/Screens/Events/event_repo/event_servics.dart';
import 'package:ethiocart/Screens/Tickets/ticket_widgets/ticket_info_detail.dart';
import 'package:ethiocart/Screens/search/search_delegate.dart';
import 'package:flutter/material.dart';

class EventsList extends StatefulWidget {
  const EventsList({Key? key}) : super(key: key);

  @override
  State<EventsList> createState() => _EventsListState();
}

class _EventsListState extends State<EventsList>
    with SingleTickerProviderStateMixin {
  final List daysList = const ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  final Future<List<Events>> _futureItems = GetAllServics().fetchItems();

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
          title: Text(
            'Explore',
            style: TextStyle(fontSize: 18),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: CustomSearch());
                },
                icon: ImageIcon(
                    color: Colors.green.shade800,
                    size: 22,
                    const AssetImage(
                      'assets/icons/Search.png',
                    ))),
          ],
          bottom: TabBar(isScrollable: true, tabs: [
            Tab(
              child: SizedBox(
                  width: width * 0.1,
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.green.shade900),
                  )),
            ),
            Tab(
              child: SizedBox(
                  width: width * 0.1,
                  child: Text(
                    '2',
                    style: TextStyle(color: Colors.green.shade900),
                  )),
            ),
            Tab(
              child: SizedBox(
                  width: width * 0.1,
                  child: Text(
                    '3',
                    style: TextStyle(color: Colors.green.shade900),
                  )),
            ),
            Tab(
              child: SizedBox(
                  width: width * 0.1,
                  child: Text(
                    '4',
                    style: TextStyle(color: Colors.green.shade900),
                  )),
            ),
            Tab(
              child: SizedBox(
                  width: width * 0.1,
                  child: Text(
                    '5',
                    style: TextStyle(color: Colors.green.shade900),
                  )),
            ),
            Tab(
              child: SizedBox(
                  width: width * 0.1,
                  child: Text(
                    '6',
                    style: TextStyle(color: Colors.green.shade900),
                  )),
            ),
            Tab(
              child: SizedBox(
                  width: width * 0.1,
                  child: Text(
                    '7',
                    style: TextStyle(color: Colors.green.shade900),
                  )),
            ),
          ]),
        ),
        body: FutureBuilder<List<Events>>(
          future: _futureItems,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Events>? event = snapshot.data;

              return TabBarView(
                children: [
                  eventListView(height, event, 2),
                  eventListView(height, event, 3),
                  eventListView(height, event, 2),
                  eventListView(height, event, 3),
                  eventListView(height, event, 7),
                  eventListView(height, event, 1),
                  eventListView(height, event, 100),
                ],
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    ));
  }

  eventListView(double height, List<Events>? event, int count) {
    var tcount = count;
    return SizedBox(
      height: height * 0.83,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: tcount,
        itemBuilder: (_, index) => listView(context, event, index),
      ),
    );
  }

  listView(context, List<Events>? event, int index) {
    // var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TicketInformationDetail(
                  data: event![index],
                  id: event[index].id!,
                )),
      ),
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: feedView(context, event, index)),
    );
  }

  Widget feedView(context, List<Events>? event, int index) {
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
                            'organizer  ${event![index].title}  ${event[index].id}',
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
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, bottom: 0),
                    child: Text(
                      ' ${event[index].eventStart.toString()}',
                      // 'date and time'
                      // FontSize changed from 18 to 10 due to long text
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, bottom: 0),
                    child: Text(
                      '${event[index].location}',
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

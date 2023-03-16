import 'package:ethiocart/Screens/profile/profiles_widget/separator.dart';
import 'package:ethiocart/Screens/profile/profiles_widget/ticket_widget.dart';

import 'package:flutter/material.dart';


class MyTik extends StatefulWidget {
  const MyTik({Key? key}) : super(key: key);

  @override
  State<MyTik> createState() => _MyTikState();
}

class _MyTikState extends State<MyTik> {
  List<String> items = [
    'item1',
    'item2',
    'item3',
    'item4',
    'item5',
    'item6',
  ];

  Future refresh() async {
    setState(() {
      items = [
        'item7',
        'item65',
        'item34',
        'item24',
        'item15',
        'item56',
      ];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: const Color(0xFF374b3f),
          leading: const BackButton(),
          title: const Text('My ticket'),
        ),
        body: Stack(
          // fit: StackFit.passthrough,
          children: [
            Center(
              child: SizedBox(
                width: width * 0.75,
                height: double.infinity,
                child: RefreshIndicator(
                  onRefresh: refresh,
                  child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (BuildContext context, int index) {
                        final item = items[index];
                        return Padding(
                          padding: const EdgeInsets.only(top: 85),
                          child: FlutterTicketWidget(
                              isCornerRounded: true,
                              // color: Colors.red,
                              width: width * 0.75,
                              height: height * 0.55,
                              child: Stack(
                                children: [
                                  Positioned(
                                      top: 0,
                                      right: 20,
                                      child: ClipPath(
                                        clipper: CustomClipDesign(),
                                        child: Container(
                                          alignment: Alignment.topCenter,
                                          height: 50,
                                          width: 35,
                                          decoration: const BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight:
                                                      Radius.circular(5))),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 2),
                                            child: Column(
                                              children: const [
                                                Text(
                                                  'Jan\n 12',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )),
                                  const Positioned(
                                      // left: 200,
                                      // right: ,
                                      // top: 500,
                                      child: Center(child: MySeparator()
                                          // Divider(
                                          //   color: Colors.red,
                                          //   thickness: 4,
                                          // ),
                                          )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Padding(
                                      //   padding: const EdgeInsets.only(right: 20),
                                      //   child: Row(
                                      //     mainAxisAlignment: MainAxisAlignment.end,
                                      //     crossAxisAlignment: CrossAxisAlignment.start,
                                      //     children: [
                                      //       Stack(
                                      //         children: [
                                      //           Icon(
                                      //             Icons.bookmark_border,
                                      //             size: 50,
                                      //             color: Colors.amber,
                                      //           ),
                                      //           Column(
                                      //             mainAxisAlignment: MainAxisAlignment.center,
                                      //             crossAxisAlignment: CrossAxisAlignment.center,
                                      //             children: [
                                      //               Center(
                                      //                 child: Text(
                                      //                   'JAN',
                                      //                   // textScaleFactor: ,
                                      //                   textAlign: TextAlign.center,
                                      //                   style: TextStyle(),
                                      //                 ),
                                      //               ),
                                      //             ],
                                      //           )
                                      //         ],
                                      //       ),
                                      //     ],
                                      //   ),
                                      // ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Center(
                                        child: Column(
                                          children: [
                                            CircleAvatar(
                                              // maxRadius: 10,
                                              backgroundColor: Colors.amber,
                                              radius: 60,
                                              child: Container(
                                                  // height: 200,
                                                  // width: 200,
                                                  // color: Colors.red,
                                                  decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      gradient: LinearGradient(
                                                          begin: Alignment
                                                              .centerLeft,
                                                          end: Alignment
                                                              .topRight,
                                                          stops: [
                                                            0.0,
                                                            0.4
                                                          ],
                                                          colors: [
                                                            Colors.teal,
                                                            Colors.white
                                                          ])),
                                                  child: Center(
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.white,
                                                      radius: 52,
                                                      child: CircleAvatar(
                                                          radius: 45,
                                                          child: Container(
                                                            // color: Colors.black,

                                                            decoration:
                                                                const BoxDecoration(
                                                                    image: DecorationImage(
                                                                        image: AssetImage(
                                                                            'assets/images/548.png'),
                                                                        fit: BoxFit
                                                                            .cover),

                                                                    // color:
                                                                    //     Colors.blueGrey,
                                                                    borderRadius:
                                                                        BorderRadius.all(
                                                                            Radius.circular(150))),
                                                          )),
                                                    ),
                                                  )),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              item,
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      // Divider()
                                    ],
                                  ),
                                  Positioned(
                                    // left: 0,
                                    top: 250,
                                    // bottom: 0,
                                    // right: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                        width: 270,
                                        height: height * .19,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                // decoration: BoxDecoration(
                                                //     image: DecorationImage(
                                                //         image: AssetImage(
                                                //             'assets/images/qrr.png'))),
                                                color: Colors.teal,
                                                // decoration: BoxDecoration(
                                                //   image: DecorationImage(
                                                //     fit: ,
                                                //     image:
                                                //   )
                                                // ),
                                                height: 120,
                                                width: 120,
                                                child:
                                                    const Center(child: Text('QR')),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.only(
                                                        left: 5),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                  children: [
                                                    Row(
                                                      children: const [
                                                        Icon(
                                                          Icons.location_on,
                                                          color: Colors.teal,
                                                          size: 20,
                                                        ),
                                                        Text(
                                                          "Fana Park",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: const [
                                                        Icon(Icons.timer,
                                                            color:
                                                                Colors.teal,
                                                            size: 20),
                                                        Text(
                                                            "12:00 Pm 14:00Pm",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            maxLines: 1,
                                                            softWrap: false,
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold))
                                                      ],
                                                    ),
                                                    Row(
                                                      children: const [
                                                        Icon(
                                                            Icons
                                                                .arrow_upward,
                                                            color:
                                                                Colors.teal,
                                                            size: 20),
                                                        Text("Reguar",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold))
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        );
                      }),
                ),
              ),
            ),
          ],
        ));
  }
}

class CustomClipDesign extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double h = size.height;
    double w = size.width;

    path.lineTo(0, h - 15);
    path.lineTo(w / 50, h);
    path.lineTo(w / 2, h - 15);
    path.lineTo(w / 1, h);
    path.lineTo(w, h - 15);
    path.lineTo(w, 0);

    // TODO: implement getClip
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

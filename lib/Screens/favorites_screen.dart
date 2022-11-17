import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class favoritesHome extends StatelessWidget {
  const favoritesHome({Key? key}) : super(key: key);

  // static const iconList = <IconData>[
  // Icons.music_note_sharp,
  // Icons.palette_sharp,
  // Icons.workspace_premium_sharp
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.only(top: 0, left: 10, right: 10),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              favTab(),
              viewsbutton(),
              Column(children:
              [Row(children: [eventsGrid(),eventsGrid()],),
                Row(children: [eventsGrid(),eventsGrid()],),
                Row(children: [eventsGrid(),eventsGrid()],)],)
            ],
          ),
        ),
      ),
    );
  }

  Widget favTab() {
    return Container(
      width: double.infinity,
      height: 60,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.refresh_sharp,
                color: Colors.deepPurple,
                size: 40,
                textDirection: TextDirection.ltr,
              )),
          Text('Favourites'),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_outlined,
                color: Colors.black,
                size: 40,
                textDirection: TextDirection.ltr,
              )),
        ],
      ),
    );
  }

  Widget viewsbutton() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: double.infinity,
      height: 80,
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            custombutton(),
            custombutton(),
            custombutton(),
            custombutton(),
            custombutton(),
            custombutton(),
          ],
        ),
      ),
    );
  }

  Widget custombutton() {
    return Container(
      child: OutlinedButton(
          onHover: (value) {
            Colors.blue;
          },
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(
                        width: 50.0,
                        color: Colors.blue,
                        style: BorderStyle.solid,
                      )))),
          onPressed: () {},
          child: Row(
            children: [Icon(Icons.music_note_sharp), Text('Music')],
          )),
    );
  }



  Widget eventsGrid() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: 180,
        height: 240,
        margin: EdgeInsets.only(right: 0, bottom: 10, left: 10, top: 0),
        padding: EdgeInsets.only(top: 0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                  color: Colors.indigoAccent, borderRadius: BorderRadius.circular(25)),
            ),
            Container(
              margin: EdgeInsets.only(left: 5, right: 5),
              child: Text(
                'Mural art festival',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'SFCompact',
                    fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 5),
              child: Text(
                'Wed Dec 2022 18:00 - 22:00asssssssssssss',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.indigo,
                    fontFamily: 'SFCompact', fontSize: 16),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_sharp,
                  color: Colors.indigoAccent,
                  size: 25,
                ),
                Spacer(),
                Text('Central Park'),
                Spacer(),
                Icon(
                  Icons.favorite_border_sharp,
                  color: Colors.indigoAccent,
                  size: 25,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

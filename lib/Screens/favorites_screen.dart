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
    return Material(
      // color: Color(0xffededed),
      color: Colors.white,
      child: Container(
        color: Colors.transparent,
        margin: EdgeInsets.only(top: 5, left: 0, right: 0, bottom: 10),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                favTab(),
                viewsbutton(),
                Container(
                  //number favorites list label
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                  margin: EdgeInsets.only(bottom: 5, left: 10, right: 10, top: 5),
                  padding: EdgeInsets.only(left: 10, top: 5),
                  child: Text(
                    '44 Favorites',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: 'SFCompact'),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [eventsGrid(), eventsGrid()],
                    ),
                    Row(
                      children: [eventsGrid(), eventsGrid()],
                    ),
                    Row(
                      children: [eventsGrid(), eventsGrid()],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget favTab() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.only(bottom: 0, ),
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.refresh_sharp,
                color: Colors.deepPurple,
                size: 35,
                textDirection: TextDirection.ltr,
              )),
          Text(
            'Favourites',
            textAlign: TextAlign.center,
          ),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_outlined,
                color: Colors.black,
                size: 35,
                textDirection: TextDirection.ltr,
              )),
        ],
      ),
    );
  }

  Widget viewsbutton() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 5),
      padding: EdgeInsets.only(left: 10),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            custombutton(),
            custombutton(),
          ],
        ),
      ),
    );
  }

  Widget custombutton() {
    const int i = 0;
    const _iconTypes = <IconData>[
      Icons.music_note_sharp,
      Icons.add_location_sharp,
    ];
    return Container(
      child: OutlinedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(
                        width: 15.0,
                        color: Colors.red,
                      )))),
          onPressed: () {},
          child: Row(
            children: [Icon(_iconTypes[i]), Text('Music')],
          )),
    );
  }

  Widget customButton2(context) {
    void onPressed() {}
    return IconButton(
      icon: const Icon(Icons.filter_drama),
      onPressed: onPressed,
      style: IconButton.styleFrom(
        focusColor: Colors.black,
        highlightColor: Colors.blue,
        side: onPressed == null
            ? BorderSide(
                color:
                    Theme.of(context).colorScheme.onSurface.withOpacity(0.12))
            : BorderSide(color: Colors.deepOrange),
      ).copyWith(
        foregroundColor:
            MaterialStateProperty.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.indigo;
          }
          return null;
        }),
      ),
    );
  }

  Widget eventsGrid() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Flexible(
        child: Container(
          width: 180,
          height: 260,
          margin: EdgeInsets.only(right: 10, bottom: 15, left: 15, top: 5),
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
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/image2.jpg'),
                    ),
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25)),
              ),
              Container(
                decoration: BoxDecoration(),
                margin: EdgeInsets.only(left: 5, right: 5),
                child: Text(
                  'Mural art festival',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'SFCompact',
                      fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5, right: 5),
                child: Text(
                  'Wed Dec 2022 18:00 - 22:00asssssssssssss',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.indigo,
                      fontFamily: 'SFCompact',
                      fontSize: 16),
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
                  Container(
                    width: 90,
                    child: Flexible(
                      child: Text(
                        'Central Park',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.indigo,
                            fontFamily: 'SFCompact',
                            fontSize: 15),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border_sharp),
                    color: Colors.indigoAccent,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import 'for_you_class.dart';
import 'foryou_provider.dart';

class ForYou extends StatefulWidget {
  const ForYou({Key? key}) : super(key: key);

  @override
  State<ForYou> createState() => _ForYouState();
}

class _ForYouState extends State<ForYou> with SingleTickerProviderStateMixin {
  bool isSelected = false;

  double viewportFraction = 0.2;
// PageController pageController;
  final _controller = PageController(viewportFraction: 1);
  List<String> dataImage = [
    'https://cdn.dribbble.com/users/3281732/screenshots/16533701/media/590b31c6713f29bcbf2c59f009f5bee6.jpg?compress=1&resize=1200x900',
    'https://cdn.dribbble.com/users/63407/screenshots/16529140/media/59de9aff1992883d6ee58050e81cf4ae.png?compress=1&resize=1200x900',
    'https://cdn.dribbble.com/users/2028818/screenshots/16529592/media/72113f440d7b279051986a90f86f3d97.png?compress=1&resize=1200x900',
    'https://cdn.dribbble.com/users/1821976/screenshots/16529589/media/8897229f9cf915dab7c044757e5886dd.jpg?compress=1&resize=1200x900',
    'https://cdn.dribbble.com/users/5638/screenshots/16531842/media/b0ccd9201138ce19a3ecaa80aa579fc3.jpg?compress=1&resize=1200x900',
    'https://cdn.dribbble.com/users/2367334/screenshots/16528111/media/5595dc6b8830140e8b69efcda9c7ba46.png?compress=1&resize=1200x900',
  ];
  late AnimationController _animationController;

  @override
  int selectedPage = 0;
  late PageController pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState(
        );
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    // var fav = context.watch<title>();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final favoriteProvider = Provider.of<FavoriteProvider>(context);
    return Scaffold(
      body: Stack(
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 800),
            child: Container(
              key: ValueKey(dataImage[selectedPage]),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                    ),
                  ],
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(Fav1.image[selectedPage]))),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  color: Colors.black.withOpacity(0.2),
                ),
              ),
            ),
          ),
          PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  selectedPage = value;
                });
              },
              controller: _controller,
              scrollDirection: Axis.vertical,
              itemCount: Fav1.title.length,
              itemBuilder: (context, index) {
                final title4 = Fav1.title2[index];
                // double scale = max(viewportFra)
                return Consumer<FavoriteProvider>(
                  builder: (context, value, child) {
                    return Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 120, bottom: 20),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                  });
                                },
                                child: Container(
                                  height: height * 0.6,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(.3),
                                        ),
                                      ],
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              NetworkImage(Fav1.image[index]))),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 90,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                  Colors.black.withOpacity(0.0),
                                  Colors.black.withOpacity(0.2),
                                  Colors.black.withOpacity(0.4),
                                  Colors.black.withOpacity(0.6),
                                  // Colors.black
                                ])),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 20, right: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Jazz After Work",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),
                                      GestureDetector(
                                        onTap: () {
                                          // Share.share('ok');
                                        },
                                        child: Icon(
                                          MdiIcons.shareVariant,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 20, right: 15),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            Fav1.title2[index],
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            Fav1.title[index],
                                            style: TextStyle(
                                              fontSize: 12,
                                              wordSpacing: 3,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                      Spacer(),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            favoriteProvider
                                                .toggleFavorite(title4);
                                            // isSelected = !isSelected;
                                          });
                                        },
                                        child: Icon(
                                          favoriteProvider.isExcist(title4)
                                              ? MdiIcons.heart
                                              : MdiIcons.heartOutline,
                                          color:
                                              favoriteProvider.isExcist(title4)
                                                  ? Colors.red
                                                  : Colors.white,
                                          size: 30,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  // child:
                );
              }),

        ],
      ),
    );
  }
}

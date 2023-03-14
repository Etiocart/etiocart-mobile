import 'package:ethiocart/Screens/notification/notification.dart';
import 'package:ethiocart/Screens/profile/profile_export.dart';
import 'package:ethiocart/Screens/authentication/login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size.aspectRatio;

    bool animationKey=true;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: CustomScrollView(
            // physics: NeverScrollableScrollPhysics(),
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: SafeArea(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Notifications()),
                                );
                              },
                              icon:  ImageIcon(
                                  color: Colors.black,
                                  size: 30,
                                (animationKey==true)?AssetImage('assets/icons/notification.png')
                                :AssetImage('assets/icons/bell.gif')
                              )
                          ),
                        ],
                      ),
                      FittedBox(
                        child: Stack(
                          children: [
                            Container(
                              width: size * 330,
                              height: size * 330,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(360),
                                color: Colors.grey.shade600.withOpacity(0.2),
                              ),
                              child: Center(
                                  child: Icon(
                                FontAwesomeIcons.user,
                                color: Colors.black,
                                size: size * 75,
                              )),
                            ),
                            Positioned(
                              left: size * 210,
                              top: size * 220,
                              child: Container(
                                width: width * 0.12,
                                height: width * 0.12,
                                decoration: BoxDecoration(
                                    color: Colors.green.shade700.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(360)),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const editProfile()),
                                      );
                                    },
                                    icon: const Icon(
                                      FontAwesomeIcons.pencil,
                                      size: 20,
                                      color: Colors.white,
                                    )),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Text(
                        'Andrew Ansley',
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: TabBar(
                  indicatorColor: Colors.grey.withOpacity(0.3),
                  tabs: [
                    Tab(
                        child: Text('Settings',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.green.shade900,
                                fontWeight: FontWeight.w400))),
                    Tab(
                        child: Text('Memories',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.green.shade900,
                                fontWeight: FontWeight.w400))),
                  ],
                ),
              ),
              SliverFillRemaining(
                child: TabBarView(
                  children: [
                    ListView(
                      children: <Widget>[
                        SizedBox(height: height * 0.55, child: ProfileView()),
                        SizedBox(height: height * 0.05, child: settingsView(context)),
                      ],
                    ),
                    momentsGridView(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget momentsGridView(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    // var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return GridView.builder(
      itemCount: 21,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (orientation == Orientation.portrait) ? 3 : 3),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(2),
          child:  Container(
            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
          ),
        );
      },
    );
  }

  Widget settingsView(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      },
      child: Text(
        'Logout',
        style: TextStyle(fontSize: 20, color: Colors.red.shade900),
      ),
    );
  }
}

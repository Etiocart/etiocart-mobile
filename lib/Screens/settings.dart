import 'package:ethiocart/Screens/Profile/choose_theme.dart';
import 'package:ethiocart/Screens/Profile/profile_export.dart';
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
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.grey.shade400)),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.notifications, size: size*75,
            color: Colors.teal.shade800,
            ))],
          ),
          body: CustomScrollView(
            physics: NeverScrollableScrollPhysics(),
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: SafeArea(
                  child: Column(
                    children: [
                      FittedBox(
                        child:Stack(
                          children: [
                            Container(
                              width: size*330,
                              height: size*330,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(360),
                                color: Colors.teal.shade50,
                              ),
                              child: Center(
                                  child: Icon(
                                    FontAwesomeIcons.user,
                                    color: Colors.black,
                                    size: 35,
                                  )),
                            ),
                            Positioned(
                              left: 100,
                              top: 100,
                              child: Container(
                                width: width * 0.12,
                                height: width * 0.12,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(360)),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => editProfile()),
                                      );
                                    },
                                    icon: Icon(
                                      FontAwesomeIcons.pencil,
                                      size: 25,
                                      color: Colors.white,
                                    )),
                              ),
                            )
                          ],
                        ),
                      ),
                      Text('Andrew Ansley', style: TextStyle(fontSize: 18),),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: TabBar(
                  tabs: [
                    Tab(
                        child: Text('settings',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey.shade900,
                              fontWeight: FontWeight.w400
                            ))),
                    Tab(
                        child: Text('moments',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w400

                            ))),
                  ],
                ),
              ),
              SliverFillRemaining(
                child: TabBarView(
                  children: [
                    ListView(
                      physics: NeverScrollableScrollPhysics(),
                      children: <Widget>[
                        SizedBox(height: height * 0.68, child: profileView()),
                      ],
                    ),
                    ListView(
                      children: <Widget>[
                        SizedBox(
                            height: height*0.92,
                            width: width*0.9,
                            child: momentsGridView(context))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget momentsGridView(BuildContext context)
  {
    final orientation = MediaQuery.of(context).orientation;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GridView.builder(
    itemCount: 20,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: (orientation == Orientation.portrait) ? 3 : 3),
    itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: const EdgeInsets.all(2),
        child: new Container(
          // width: width*0.1,
          // height: width*0.1,
          decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
        ),
      );
    },
  );}

  Widget settingsView(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.only(left: 10, right: 10),
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: SizedBox(height: height * 0.67, child: profileView())),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              height: height * 0.3,
              width: width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: SizedBox(
              child: Container(
                width: width * 0.9,
                height: height * 0.06,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    'Logout',
                    style: TextStyle(fontSize: 20, color: Colors.red.shade900),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

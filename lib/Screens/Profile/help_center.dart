import 'package:flutter/material.dart';
import 'profile_export.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return helpCenterTab(context);
  }

  Widget helpCenterTab(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              iconSize: 20.0,
              color: Colors.teal.shade800,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            // automaticallyImplyLeading: false,
            title: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileView()),
                  );
                },
                child: Text('Help center', style: TextStyle(fontSize: 22, color: Colors.teal.shade800),)),
            backgroundColor:Colors.white,
            foregroundColor: Colors.black,
            bottom:  TabBar(
              unselectedLabelColor: Colors.grey.shade400,
              labelColor: Colors.teal.shade800,
              tabs: const [
                Tab(
                    child: Text(
                  'FAQ',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.bold),
                )),
                Tab(
                    child: Text('Contact Us',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.bold))),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Help !',
                      style: TextStyle(color: Colors.deepOrange, fontSize: 35),
                    ),
                    Text(
                      'Help Page is Loading',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

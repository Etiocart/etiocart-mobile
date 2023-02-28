import 'package:ethiocart/Screens/HomeView/settings1.dart/buttomwidget.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Settings',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            AccountList(icon: Icons.abc, text: "Changed Password", press: () {})
          ],
        ),
      ),
    );
  }
}

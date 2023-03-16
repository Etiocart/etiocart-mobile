import 'package:flutter/material.dart';

class AppLock extends StatefulWidget {
  const AppLock({super.key});

  @override
  State<AppLock> createState() => _AppLockState();
}

class _AppLockState extends State<AppLock> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text("app pass"),
    ));
  }
}

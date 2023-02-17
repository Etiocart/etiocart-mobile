import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class appLock extends StatefulWidget {
  const appLock({super.key});

  @override
  State<appLock> createState() => _appLockState();
}

class _appLockState extends State<appLock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("app pass"),
    ));
  }
}

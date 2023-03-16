import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        elevation: 0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Etio', style: TextStyle(fontSize: 32, ),),
            Text('Cart', style: TextStyle(fontSize: 30, color: Colors.blueAccent),),
          ],
        ),
      ),
    );
  }
}

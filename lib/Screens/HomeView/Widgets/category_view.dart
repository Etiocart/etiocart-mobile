import 'package:flutter/material.dart';

class categoryViewScreen extends StatelessWidget {
  const categoryViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return categoryView();
  }
}

Container categoryView() {
  return Container(
    margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
    child: Row(
      children: [
        Text(
          'Featured',
          style:
          TextStyle(fontFamily: 'Gotham', letterSpacing: -1, fontSize: 20),
        ),
        Spacer(),
        Text(
          'See All',
          style: TextStyle(
              fontFamily: 'Gotham',
              letterSpacing: -1,
              fontSize: 20,
              color: Colors.indigoAccent),
        ),
      ],
    ),
  );
}
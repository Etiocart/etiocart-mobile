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
    margin: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 0),
    child: Row(
      children: [
        Text(
          'Featured',
          style:
          TextStyle(letterSpacing: -1, fontSize: 20),
        ),
        Spacer(),
        Text(
          'See All',
          style: TextStyle(
              letterSpacing: -1,
              fontSize: 20,
              color: Color(0xff004d40),),
        ),
      ],
    ),
  );
}
import 'package:flutter/material.dart';

class PopularEvents extends StatelessWidget {
  PopularEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return events();
  }
  Widget events() {
    return Container(
      width: 90,
        margin: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 5,
            foregroundColor: Colors.white,
            backgroundColor: Colors.teal.shade900,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          child: const Text(
            'event',
            style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white,),
          ),
          onPressed: () => {},
        ));
  }
}

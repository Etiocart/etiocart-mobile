import 'package:flutter/material.dart';
class EventTypesScreen extends StatelessWidget {
  const EventTypesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return eventTypes();
  }

Widget eventTypes() {
  return Material(
    elevation: 0,
    borderRadius: BorderRadius.circular(10),
    child: Container(
      height: 30,
      width: 110,
      color: Colors.white,
      margin: const EdgeInsets.only(top: 0, left: 15, right: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text('Popular',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Gotham',
                      fontSize: 20)),
              const Spacer(),
              Text(
                'see all',
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Gotham',
                    fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

}

import 'package:flutter/material.dart';
class eventTypesScreen extends StatelessWidget {
  const eventTypesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return event_types();
  }

Widget event_types() {
  return Material(
    elevation: 0,
    borderRadius: BorderRadius.circular(10),
    child: Container(
      height: 30,
      width: 110,
      color: Colors.white,
      margin: EdgeInsets.only(top: 0, left: 15, right: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text('Popular',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Gotham',
                      fontSize: 20)),
              Spacer(),
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

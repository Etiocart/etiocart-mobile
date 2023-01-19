import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const List<String> list = <String>[
  'male',
  'female',
];

void main() => runApp(const DropdownButtonApp());

class DropdownButtonApp extends StatelessWidget {
  const DropdownButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // color: Color(0xffE0EBE3),
          width: 370,
          margin: EdgeInsets.only(left: 10, top: 20),
          child: DropdownButton<String>(
            value: dropdownValue,
            isExpanded: true,
            elevation: 0,
            style: TextStyle(color:Colors.teal.shade800),
            underline: Container(
              height: 0,
              color: Colors.white,
            ),
            onChanged: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                dropdownValue = value!;
              });
            },
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value, style: TextStyle(fontSize: 18),),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

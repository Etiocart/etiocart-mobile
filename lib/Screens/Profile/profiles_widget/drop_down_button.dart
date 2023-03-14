import 'package:flutter/material.dart';

const List<String> list = <String>[
  'male',
  'female',
];

void main() => runApp(const DropdownButtonApp());

class DropdownButtonApp extends StatelessWidget {
  const DropdownButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
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
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: width*0.9,
          padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
          child: DropdownButton<String>(
            value: dropdownValue,
            isExpanded: true,
            elevation: 0,
            style: const TextStyle(color:Colors.black87),
            underline: Container(
              height: 0,
              color: Colors.white,
            ),
            onChanged: (String? value) {
              setState(() {
                dropdownValue = value!;
              });
            },
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value, style: const TextStyle(fontSize: 18),),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

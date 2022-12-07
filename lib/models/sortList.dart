import 'package:flutter/material.dart';

class SortNames extends StatefulWidget {
  SortNames({super.key});

  @override
  State<SortNames> createState() => _SortNamesState();
}

class _SortNamesState extends State<SortNames> {
  bool isDescending = false;
  List<String> items = [
    'Abebe',
    'Bekele',
    'Chala',
    'Zeyneb',
    'Dabala',
    'Yonas',
    'Tolosa',
    'Soreti',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [Center(child: sortingButton())]),
      body: sortByAlpha(items),
    );
  }

  Widget sortByAlpha(List ListItem) => ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        // final SortedItems= isDescending? items.reversed.toList(): items;
        final items = ListItem;
        final SortedItems = items
          ..sort(
            (item1, item2) =>
                isDescending ? item2.compareTo(item1) : item1.compareTo(item2),
          );
        final item = SortedItems[index];
        return ListTile(
          leading: Container(
            margin: EdgeInsets.only(top: 5),
            child: CircleAvatar(
              //added it: just to play around with it
              backgroundColor:
                  isDescending ? Colors.blueAccent : Colors.deepOrange,
              radius: 50,
            ),
          ),
          trailing: Text(
            item,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        );
      });

  sortingButton() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          isDescending = !isDescending;
        });
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          foregroundColor: MaterialStateProperty.all(Colors.black)),
      child: Text(isDescending ? 'Descending' : 'Ascending'),
    );
  }


}

import 'package:ethiocart/Screens/register.dart';
import 'package:ethiocart/pages/details_screen.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "category 1",
    "category 2",
    "category 3",
    "category 4"
  ];
  List<Widget> PagesList = [details_screen(), register()];

  int selectedIndex = 0;

  _CategoriesState();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
          height: 25,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: ((context, index) => buildCategory(index)),
          )),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => TabPage())));
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'SFCompact',
                wordSpacing: -1.5,
                color: selectedIndex == index ? Colors.black : Colors.grey,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 2,
              width: 65,
              color: selectedIndex == index ? Colors.grey : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}

Widget TabPage() {
  return Container(
    height: 50,
    width: 50,
    color: Colors.blue,
  );
}

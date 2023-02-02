import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'iconwidget.dart';

class AccountList extends StatelessWidget {
  const AccountList({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String text;
  final dynamic icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    var icons;
    return Padding(
      padding: EdgeInsets.symmetric(

          // horizontal: 5, vertical: 0

          ),
      child: TextButton(
        onPressed: press,
        style: ButtonStyle(
          // backgroundColor: MaterialStateProperty.all(Colors.green[700]),
          // backgroundColor: MaterialStateProperty(Color: col),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const SizedBox(
            //   width: 10,
            // ),
            // IconWidget(
            //   // color: Colors.black,
            //   icon: icon,
            // ),
            SizedBox(
              width: 50,
            ),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Icon(FontAwesomeIcons.angleRight,
                color: Theme.of(context).backgroundColor),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final IconData icon;
  // final Color color;

  const IconWidget({
    Key? key,
    required this.icon,
    // required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: Theme.of(context).iconTheme.color),
        child: Icon(icon, size: 18, color: Theme.of(context).backgroundColor),
      );
}

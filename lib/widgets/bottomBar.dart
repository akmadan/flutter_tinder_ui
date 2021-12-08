import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      // color: Colors.green,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        buttonWidget(Icons.refresh, Colors.amber),
        buttonWidget(Icons.close, Colors.red),
        buttonWidget(Icons.star, Colors.blue),
        buttonWidget(Icons.favorite_outline_outlined, Colors.pink),
        buttonWidget(Icons.bolt, Colors.purple)
      ]),
    );
  }
}

Widget buttonWidget(IconData icon, Color color) {
  return Container(
    height: 60,
    width: 60,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(color: color)),
    child: Icon(
      icon,
      color: color,
      size: 30,
    ),
  );
}

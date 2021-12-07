import 'package:flutter/material.dart';
import 'package:flutter_tinder/widgets/bottomButtons.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          imageWidget('assets/image1.jpeg'),
          imageWidget('assets/images.jpeg'),
          buttonWidget(Icons.star, Colors.amber),
          buttonWidget(Icons.notifications, Colors.grey.shade400),
        ],
      ),
    );
  }
}

Widget imageWidget(String image) {
  return Container(
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
    height: 50,
    width: 50,
    // padding: EdgeInsets.all(5),
  );
}

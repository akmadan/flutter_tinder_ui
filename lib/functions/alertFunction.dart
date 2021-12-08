import 'package:flutter/material.dart';
import 'package:flutter_tinder/widgets/bottomBar.dart';

actions(BuildContext context, String name, type) {
  showDialog(
      context: context,
      builder: (context) {
        Future.delayed(Duration(seconds: 1), () {
          Navigator.of(context).pop(true);
        });

        return AlertDialog(
          content: buttonWidget(
              type == 'Liked'
                  ? Icons.favorite
                  : type == 'Rejected'
                      ? Icons.close
                      : Icons.star,
              type == 'Liked'
                  ? Colors.pink
                  : type == 'Rejected'
                      ? Colors.red
                      : Colors.blue),
          title: Text(
            'You ${type} ${name}',
            style: TextStyle(
                color: type == 'Liked'
                    ? Colors.pink
                    : type == 'Rejected'
                        ? Colors.red
                        : Colors.blue),
          ),
        );
      });
}

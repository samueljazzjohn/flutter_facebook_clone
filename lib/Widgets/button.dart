  import 'package:flutter/material.dart';

Widget button(
      {required IconData buttonIcon,
      required Color color,
      required String buttonLabel,
      required void  Function() buttonAction}) {
    return TextButton.icon(
        onPressed: buttonAction,
        icon: Icon(buttonIcon, color: color),
        label: Text(
          buttonLabel,
          style: const TextStyle(color: Colors.black, fontSize: 15),
        ));
  }
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/assets.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(sam, 
          width: 50,
          height: 50,
          fit: BoxFit.cover,)
          ),
          title: TextField(
            decoration: InputDecoration(
              hintText: 'Whats on your mind?',
              hintStyle: TextStyle(color: Colors.black,fontSize: 15),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none
            ),
          ),
    ));
  }
}

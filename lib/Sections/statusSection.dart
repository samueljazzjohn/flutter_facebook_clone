import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/Widgets/avatar.dart';
import 'package:flutter_facebook_clone/assets.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Avatar(displayImage: sam,displayStatus: false,),
          title: const TextField(
            decoration: InputDecoration(
              hintText: 'Whats on your mind?',
              hintStyle: TextStyle(color: Colors.black,fontSize: 15),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none
            ),
          ),
    );
  }
}

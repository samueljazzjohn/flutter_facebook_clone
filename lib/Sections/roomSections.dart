import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/Widgets/avatar.dart';

import '../assets.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          outlinedButton(),
          Avatar(displayImage: dq,displayStatus: true,),
          Avatar(displayImage: viru,displayStatus: true),
          Avatar(displayImage: sachin,displayStatus: true),
          Avatar(displayImage: sahal,displayStatus: true),
          Avatar(displayImage: cr7,displayStatus: true),
          Avatar(displayImage: messi,displayStatus: true),
        ],
      ),
    );
  }

  Widget outlinedButton() {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(width: 2, color: Color(0xFFBBDEFB)),
        shape: const StadiumBorder(),
      ),
      onPressed: () {
        print('Create room pressed');
      },
      icon: const Icon(
        Icons.video_call,
        color: Colors.red,
      ),
      label: const Text('Create \nRoom'),
    );
  }
}

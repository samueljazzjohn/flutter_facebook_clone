import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/Widgets/avatar.dart';
import 'package:flutter_facebook_clone/Widgets/circularButton.dart';
import 'package:flutter_facebook_clone/assets.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String avatar;
  final String story;
  final bool storyStatus;

  const StoryCard({Key? key,required this.labelText,required this.avatar,required this.story,this.storyStatus=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      margin: EdgeInsets.only(right: 5, left: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10)),
      child: Stack(children: [
        Positioned(
            top: 3,
            left: 4,
            child: storyStatus ? CircularButton(
                buttonIcon: Icons.add,
                buttonAction: () {
                  print('Strory create pressed');
                }): Avatar(displayImage: avatar, displayStatus: false, displayBorder: true,)
                ),
        Positioned(
            bottom: 5,
            left: 10,
            child: Text(labelText,
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)))
      ]),
    );
  }
}

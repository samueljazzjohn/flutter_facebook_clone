import 'package:flutter/material.dart';

class HeaderSectionButtons extends StatelessWidget {
  HeaderSectionButtons({Key? key}) : super(key: key);

  Widget verticalDivider = VerticalDivider(
    thickness: 1,
    width: 20,
    color: Colors.grey[300],
  );

  Widget headerButton(
      {required IconData buttonIcon,
      required Color color,
      required String buttonLabel,
      required void buttonAction()}) {
    return TextButton.icon(
        onPressed: buttonAction,
        icon: Icon(buttonIcon, color: color),
        label: Text(
          buttonLabel,
          style: TextStyle(color: Colors.black, fontSize: 15),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
              buttonIcon: Icons.video_call,
              color: Colors.red,
              buttonLabel: 'live',
              buttonAction: () {
                print('Video call started');
              }),
          verticalDivider,
          headerButton(
              buttonIcon: Icons.photo_library,
              color: Colors.green,
              buttonLabel: 'photo',
              buttonAction: () {
                print('view pictures');
              }),
          verticalDivider,
          headerButton(
              buttonIcon: Icons.video_call,
              color: Colors.blue,
              buttonLabel: 'room',
              buttonAction: () {
                print('Video call started');
              }),
        ],
      ),
    );
  }
}

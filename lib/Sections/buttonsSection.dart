import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/Widgets/button.dart';

class ButtonSection extends StatelessWidget {
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;
  ButtonSection({Key? key,required this.buttonOne,required this.buttonTwo,required this.buttonThree}) : super(key: key);

  Widget verticalDivider = VerticalDivider(
    thickness: 1,
    width: 20,
    color: Colors.grey[300],
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          verticalDivider,
          buttonTwo,
          verticalDivider,
          buttonThree,
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  const AppBarWidget({ Key? key ,required this.buttonIcon,required this.buttonAction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape : BoxShape.circle,
      ),
      child: IconButton(onPressed: buttonAction,icon: Icon(buttonIcon),),

    );
  }
}
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;
  final double width;
  final double height;
  const Avatar(
      {Key? key,
      required this.displayImage,
      required this.displayStatus,
      this.width=50,
      this.height=50,
      this.displayBorder = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: displayBorder
              ? Border.all(color: Colors.blue, width: 3)
              : Border(),
        ),
        padding: EdgeInsets.only(right: 5, left: 5),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              width: width,
              height: height,
              fit: BoxFit.cover,
            )),
      ),
      displayStatus
          ? Positioned(
              bottom: 3,
              right: 3,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2)),
              ),
            )
          : SizedBox()
    ]);
  }
}

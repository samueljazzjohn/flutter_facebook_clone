import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/assets.dart';

class SuggestionCard extends StatelessWidget {
  const SuggestionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Stack(
        children: [
          suggestionImage(),
          suggestionFooter()
        ],
      ),
    );
  }

  Widget suggestionFooter() {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          height: 100,
          decoration: BoxDecoration(color: Colors.grey[100]),
        ));
  }

  Widget suggestionImage() {
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: Image.asset(
            sam,
            height: 200,
            fit: BoxFit.cover,
          ),
        ));
  }
}

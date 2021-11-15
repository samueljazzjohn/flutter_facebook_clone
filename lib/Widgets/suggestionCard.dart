import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/assets.dart';

class SuggestionCard extends StatelessWidget {
  final String displayImage;
  final String displayName;
  final String mutualFreinds;
  const SuggestionCard(
      {Key? key, required this.displayImage, required this.displayName, required this.mutualFreinds })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      width: 290,
      child: Stack(
        children: [suggestionImage(), suggestionFooter()],
      ),
    );
  }

  Widget suggestionFooter() {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
            padding: EdgeInsets.only(top: 10, left: 10),
            height: 150,
            decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(color: Color(0XFFEEEEEE))),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(displayName,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text(
                      '$mutualFreinds Mutual Friends',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                            label: Text('Add friend'),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0XFF1976D2)),
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text('Cancel',
                                  style: TextStyle(color: Colors.black)),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  side: BorderSide(color: Color(0XFF1976D2))))
                        ],
                      ))
                ])));
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
            displayImage,
            height: 200,
            fit: BoxFit.cover,
          ),
        ));
  }
}

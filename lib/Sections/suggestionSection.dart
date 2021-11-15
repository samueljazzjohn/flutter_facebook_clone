import 'package:flutter_facebook_clone/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/Widgets/suggestionCard.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:10),
      height: 450,
      child: Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
         ListTile(
            title: Text('Person you may know'),
            trailing: IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {
                print('more Button Pressed');
              },
            ),
          ),
        Container(
          height: 390,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SuggestionCard(displayImage: alansam,displayName:'Alan Sam',mutualFreinds: '20',),
              SuggestionCard(displayImage: libin,displayName:'Libin Scaria',mutualFreinds: '18'),
              SuggestionCard(displayImage: nivedh,displayName:'Nivedh Krishna',mutualFreinds: '21'),
              SuggestionCard(displayImage: rithul,displayName:'Rithul',mutualFreinds: '30')

            ],
          ),
        )
      ],
    ));
  }
}

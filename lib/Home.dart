import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/Sections/headerSectionButtons.dart';
import 'package:flutter_facebook_clone/Sections/roomSections.dart';
import 'package:flutter_facebook_clone/Sections/statusSection.dart';
import 'package:flutter_facebook_clone/Sections/storySection.dart';
import 'package:flutter_facebook_clone/Widgets/circularButton.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      const Widget thinDivider=const Divider(
              thickness: 1,
              color:Colors.grey,
            );
      Widget thickDivider=Divider(
              thickness: 10,
              color: Colors.grey[300],
            );

    return MaterialApp(
      title: 'facebook',
      theme: ThemeData(
        primarySwatch:Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title:const Text(
            'facebook',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  // print('Go to search page');
                }),
            CircularButton(
                buttonIcon: Icons.message,
                buttonAction: () {
                  // print('go to messanger');
                })
          ],
        ),
        body: ListView(
          children: [
            const  StatusSection(),
            thinDivider,
            HeaderSectionButtons(),
            thickDivider,
            const RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
          ],
        ),
      ),
    );
  }
}

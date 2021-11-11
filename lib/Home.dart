import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/Sections/headerSectionButtons.dart';
import 'package:flutter_facebook_clone/Sections/statusSection.dart';
import 'package:flutter_facebook_clone/Widgets/appBarWidget.dart';
import '';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'facebook',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'facebook',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            AppBarWidget(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print('Go to search page');
                }),
            AppBarWidget(
                buttonIcon: Icons.message,
                buttonAction: () {
                  print('go to messanger');
                })
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            HeaderSectionButtons(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}

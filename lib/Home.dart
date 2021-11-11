import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/Widgets/appBarWidget.dart';

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
      ),
    );
  }
}

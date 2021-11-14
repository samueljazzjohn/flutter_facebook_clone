import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/Sections/buttonsSection.dart';
import 'package:flutter_facebook_clone/Sections/roomSections.dart';
import 'package:flutter_facebook_clone/Sections/statusSection.dart';
import 'package:flutter_facebook_clone/Sections/storySection.dart';
import 'package:flutter_facebook_clone/Sections/suggestionSection.dart';
import 'package:flutter_facebook_clone/Widgets/button.dart';
import 'package:flutter_facebook_clone/Widgets/circularButton.dart';
import 'package:flutter_facebook_clone/Widgets/postCard.dart';
import 'package:flutter_facebook_clone/assets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Widget thinDivider = const Divider(
      thickness: 1,
      color: Colors.grey,
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );

    return MaterialApp(
      title: 'facebook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
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
            const StatusSection(),
            thinDivider,
            ButtonSection(
              buttonOne: button(
                  buttonIcon: Icons.video_call,
                  color: Colors.red,
                  buttonLabel: 'live',
                  buttonAction: () {
                    print('live button pressed');
                  }),
              buttonTwo: button(
                  buttonIcon: Icons.photo_library,
                  color: Colors.green,
                  buttonLabel: 'photo',
                  buttonAction: () {
                    print('photo gallary pressed');
                  }),
              buttonThree: button(
                  buttonIcon: Icons.video_call,
                  color: Colors.blue,
                  buttonLabel: 'room',
                  buttonAction: () {
                    print('room button pressed');
                  }),
            ),
            thickDivider,
            const RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              displayImage: sachin,
              displayName: 'Sachin Tendulkar',
              publishedAt: '5h',
              postHeading: 'Run Together Better Together',
              post: sachinPost,
              likeCount:'10k',
              commentCount:'5k',
              shareCount: '5k',
              blueTickStatus: true,
            ),
            thickDivider,
            PostCard(
              displayImage: sahal,
              displayName: 'Sahal Abdul Samad',
              publishedAt: '1 day ago',
              postHeading: 'Yennum Yellow',
              post: sahalPost,
              likeCount:'4k',
              commentCount:'1k',
              shareCount: '2.5k',
            ),
            thickDivider,
            PostCard(
              displayImage: viru,
              displayName: 'Virendra Sehwag',
              publishedAt: 'feb 20',
              postHeading: '',
              post: viruPost,
              likeCount:'10k',
              commentCount:'2k',
              shareCount: '3k',
              blueTickStatus: true,

            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(
              displayImage: cr7,
              displayName: 'Cristiano Ronaldo',
              publishedAt: 'jan 13',
              postHeading: 'Back to home',
              post: cr7Post,
              likeCount:'100k',
              commentCount:'20k',
              shareCount: '50k',
              blueTickStatus: true,

            ),
            thickDivider,
            PostCard(
              displayImage: dq,
              displayName: 'Dulquer Salman',
              publishedAt: 'nov 2',
              postHeading: 'Waiting...',
              post: dqPost,
              likeCount:'10k',
              commentCount:'5k',
              shareCount: '5k',
              blueTickStatus: true,
            ),
            thickDivider,
          ],
        ),
      ),
    );
  }
}

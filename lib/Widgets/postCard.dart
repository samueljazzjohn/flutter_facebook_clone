import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/Sections/buttonsSection.dart';
import 'package:flutter_facebook_clone/Widgets/avatar.dart';
import 'package:flutter_facebook_clone/Widgets/blueTick.dart';
import 'package:flutter_facebook_clone/Widgets/button.dart';

class PostCard extends StatelessWidget {
  final String displayImage;
  final String displayName;
  final String publishedAt;
  final String postHeading;
  final String post;
  final String likeCount;
  final String commentCount;
  final String shareCount;
  final bool blueTickStatus;
  PostCard({
    Key? key,
    required this.displayImage,
    required this.displayName,
    required this.publishedAt,
    required this.postHeading,
    required this.post,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
    this.blueTickStatus=false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        PostCardHeader(),
        postCardBody(),
        postCardFooter(),
        Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        postCardButton()
      ]),
    );
  }

  Widget PostCardHeader() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListTile(
        leading: Avatar(displayImage: displayImage, displayStatus: false),
        title: Row(
          children: [
            Text(displayName),
            SizedBox(
              width: 5,
            ),
            blueTickStatus ? BlueTick() : SizedBox()
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Row(children: [
            Text(publishedAt),
            SizedBox(
              width: 5,
            ),
            Icon(Icons.public, color: Colors.grey[700])
          ]),
        ),
        trailing: Icon(
          Icons.more_horiz,
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget postCardBody() {
    return Container(
        padding: postHeading!='' ? EdgeInsets.only(top: 10)
        : EdgeInsets.only(top: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10),
              child: Text(postHeading),
            ),
            SizedBox(height: 10),
            Image.asset(post)
          ],
        ));
  }

  Widget postCardFooter() {
    return Container(
        padding: EdgeInsets.only(top: 5),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(children: [
            Container(
              margin: EdgeInsets.only(left: 5),
              width: 15,
              height: 15,
              decoration:
                  BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              child: Icon(
                Icons.thumb_up,
                size: 10,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            displayText(label: likeCount),
            SizedBox(
              width: 3,
            ),
            displayText(label: 'Like')
          ]),
          Row(
            children: [
              displayText(label: commentCount),
              SizedBox(
                width: 3,
              ),
              displayText(label: 'Comment'),
              SizedBox(
                width: 6,
              ),
              displayText(label: shareCount),
              SizedBox(
                width: 3,
              ),
              displayText(label: 'share'),
              SizedBox(
                width: 2,
              ),
              Avatar(
                displayImage: displayImage,
                displayStatus: false,
                width: 30,
                height: 30,
              ),
              IconButton(
                  onPressed: () {
                    print('More icon pressed');
                  },
                  icon: Icon(Icons.arrow_drop_down, color: Colors.grey[700])),
            ],
          )
        ]));
  }

  Widget postCardButton() {
    return ButtonSection(
      buttonOne: button(
          buttonIcon: Icons.thumb_up_alt_outlined,
          buttonLabel: 'Like',
          buttonAction: () {
            print('Like Button Pressed');
          },
          color: Colors.grey),
      buttonTwo: button(
          buttonIcon: Icons.message_outlined,
          buttonLabel: 'Comment',
          buttonAction: () {
            print('Comment Button Pressed');
          },
          color: Colors.grey),
      buttonThree: button(
          buttonIcon: Icons.share_outlined,
          buttonLabel: 'Share',
          buttonAction: () {
            print('Share Button Pressed');
          },
          color: Colors.grey),
    );
  }

  Widget displayText({label}) {
    return Text(label);
  }
}

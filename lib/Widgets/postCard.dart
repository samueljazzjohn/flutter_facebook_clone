import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/Widgets/avatar.dart';
import 'package:flutter_facebook_clone/Widgets/blueTick.dart';

class PostCard extends StatelessWidget {
  final String displayImage;
  final String displayName;
  final String publishedAt;
  final String postHeading;
  final String post;
  PostCard({
    Key? key,
    required this.displayImage,
    required this.displayName,
    required this.publishedAt,
    required this.postHeading,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        PostCardHeader(),
         postCardBody(),
         postCardFooter()
      ]),
    );
  }

  Widget PostCardHeader() {
    return ListTile(
      leading: Avatar(displayImage: displayImage, displayStatus: false),
      title: Row(
        children: [
          Text(displayName),
          SizedBox(
            width: 5,
          ),
          BlueTick()
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
    );
  }

  Widget postCardBody() {
    return Container(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(postHeading),
            ),
            SizedBox(height: 10),
            Image.asset(post)
          ],
        ));
  }

  Widget postCardFooter() {
    return Container(
      padding: EdgeInsets.only(top:5),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(children: [
        Container(
          margin: EdgeInsets.only(left: 5),
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle
          ),
          child: Icon(Icons.thumb_up, size: 10,color: Colors.white,),
        ),
        SizedBox(width: 5,),
        Text('1k Likes')
      ]),
      Row(
        children: [Text('5k'),
        SizedBox(width: 5,),
         Text('Comments'),
         SizedBox(width: 10,),
          Text('10k'),
          SizedBox(width: 5,),
           Text('shares')],
      )
    ]));
  }
}

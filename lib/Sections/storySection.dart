import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/Widgets/storyCard.dart';
import 'package:flutter_facebook_clone/assets.dart';

class StorySection extends StatelessWidget {
  const StorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: 'Add to story',
            avatar: sam,
            story: sam,
            storyStatus: true,
          ),
          StoryCard(
            labelText: 'Dulquer Salman',
            avatar: dq,
            story: dqPost,
          ),
          StoryCard(
            labelText: 'Virendra sehwag',
            avatar: viru,
            story: viruPost,
            
          ),
          StoryCard(
            labelText: 'Sachin Tendulkar',
            avatar: sachin,
            story: sachinPost,
            
          ),
          StoryCard(
            labelText: 'Sahal Samad',
            avatar: sahal,
            story: sahalPost,
            
          ),
          StoryCard(
            labelText: 'Cristiano Ronaldo',
            avatar: cr7,
            story: cr7Post,
            
          ),
        ],
      ),
    );
  }
}

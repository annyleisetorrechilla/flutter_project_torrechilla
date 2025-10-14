import 'package:facebook/model/story_model.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final StoryModel story;
  final VoidCallback? onTaap;
  final double width;
  final double height;
  const StoryCard(
    {super.key
    required this.story,
    this onTaap,
    required this.width,
    required this.height});

  const StoryCard(
    {super.key,
    required this.story,
    this.onTap,
    required this.width,
    required this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      ontap: onTap,
      child: Container(
        width: width,
        height: height,
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          border: BorderRadius.circular(12),
          border: story.isViewed ? Border.all(color: Colors.grey.shade300): null,
        ),
        child: Container(
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(story.storyImagePath), fit: BoxFit.cover)),
          ),
      ),
    );
  }
}

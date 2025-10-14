import 'package:facebook/model/story_model.dart';
import 'package:facebook/widgets/createpost.dart';
import 'package:facebook/widgets/storieslist.dart';
import 'package:flutter/material.dart';

class Newsfeed extends StatefulWidget {
  const Newsfeed({super.key});

  @override
  State<Newsfeed> createState() => _NewsfeedState();
}

class _NewsfeedState extends State<Newsfeed> {
  List<StoryModel> stories = [
    StoryModel(
      id: '1',
      username: 'Juan',
      profileImagePath: 'assets/profile.jpg',
      storyImagePath: 'assets/myday/myday1',
      timestamp: DateTime.now().subtract(const Duration(hours: 5)),
      isViewed: false,
    ),
    StoryModel(
      id: '2',
      username: 'Steve',
      profileImagePath: 'assets/profile.jpg',
      storyImagePath: 'assets/myday/myday2',
      timestamp: DateTime.now().subtract(const Duration(hours: 6)),
      isViewed: false,
    ),
    StoryModel(
      id: '3',
      username: 'Paul',
      profileImagePath: 'assets/profile.jpg',
      storyImagePath: 'assets/myday/myday3',
      timestamp: DateTime.now().subtract(const Duration(hours: 7)),
      isViewed: false,
    ),
    StoryModel(
      id: '4',
      username: 'Lis',
      profileImagePath: 'assets/profile.jpg',
      storyImagePath: 'assets/myday/myday4',
      timestamp: DateTime.now().subtract(const Duration(hours: 8)),
      isViewed: false,
    ),
    StoryModel(
      id: '5',
      username: 'Bern',
      profileImagePath: 'assets/profile.jpg',
      storyImagePath: 'assets/myday/myday5',
      timestamp: DateTime.now().subtract(const Duration(hours: 9)),
      isViewed: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/icon/logo.png",
          height: 80,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          DrawerButton(),
        ],
      ),
      body: Column(
        children: [
          Createpost(),
          StoriesList(
            stories: stories,
            onStoryTap: (story) {},
          ),
        ],
      ),
    );
  }
}

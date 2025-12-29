import 'package:flutter/material.dart';
import 'package:profile_ui_3/app_bar.dart';
import 'package:profile_ui_3/myStyle.dart';
import 'package:profile_ui_3/my_post.dart';
import 'package:profile_ui_3/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> postList = [
    {
      'image': 'assets/images/55.jpeg',
      'titles': 'This is my first post in this web site',
      'comments': 7334,
      'likes': 12434,
    },

    {
      'image': 'assets/images/11.webp',
      'titles': 'This is my first post in this web site',
      'comments': 7253,
      'likes': 1320,
    },

    {
      'image': 'assets/images/22.jpeg',
      'titles': 'This is my first post in this web site',
      'comments': 2948,
      'likes': 6545,
    },

    {
      'image': 'assets/images/33.jpeg',
      'titles': 'This is my first post in this web site',
      'comments': 776,
      'likes': 4554,
    },

    {
      'image': 'assets/images/44.jpeg',
      'titles': 'This is my first post in this web site',
      'comments': 7234,
      'likes': 1443,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: ListView(
        children: [
          Stack(
            children: [

              Profile(),
              MyAppBar(),

            ],
          ),
          SizedBox(height: 25,),
          MyPost(postList: postList)

        ],
      ),
    );
  }
}

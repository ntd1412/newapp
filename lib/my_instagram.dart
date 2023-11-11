import 'package:flutter/material.dart';
import 'package:newapp/app_color.dart';
import 'package:newapp/widget/bottombar_widget.dart';
import 'package:newapp/widget/post_widget.dart';
import 'package:newapp/widget/story.dart';

class MyInstagram extends StatefulWidget {
  const MyInstagram({super.key});

  @override
  _MyInstagramState createState() => _MyInstagramState();
}

class _MyInstagramState extends State<MyInstagram> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 10,
        title: Text('Instagram',
          style: TextStyle(
            decoration: TextDecoration.none,
            fontFamily: 'Billabong',
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                size: 35,
                color: AppColor.black,
              ),
              onPressed: (){}),
          IconButton(
              icon: Image.asset('assets/instagram/messenger.png'
              ),
              onPressed: (){}),
    ],),
      body: Column(children: [
        StoryWidget(),
        Divider(color: AppColor.grey,),
        Expanded(child: PostWidget())
      ]
      ),
      bottomNavigationBar: BottombarWidget(),
      );
  }
}

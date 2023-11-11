import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  List<dynamic> story = [
    {"images": "assets/instagram/dat.png", "username": "nguyentiendat19"},
    {"images": "assets/instagram/3.png", "username": "minhhanh241"},
    {"images": "assets/instagram/2.png", "username": "babywhite"},
    {"images": "assets/instagram/1.png", "username": "nguyentcuat12"},
    {"images": "assets/instagram/4.png", "username": "tranvanahoai"},
    {"images": "assets/instagram/5.png", "username": "nguyentiendat19"},
    {"images": "assets/instagram/6.png", "username": "minhhanh241"},
    {"images": "assets/instagram/7.png", "username": "babywhite"},
    {"images": "assets/instagram/8.png", "username": "nguyentcuat12"},
    {"images": "assets/instagram/9.png", "username": "tranvanahoai"},
    {"images": "assets/instagram/dat1.png", "username": "tranvanahoai1"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(story.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Column(
                    children: [
                      Container(
                        width: 67,
                        height: 67,
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF9B2282),
                                  Color(0xFFEEA863)
                                ]
                            ),
                        ),
                        child: Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 1,
                                    ),
                                  ],
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage('${story[index]["images"]}')
                                  ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('${story[index]["username"]}'),
                      )
                    ],
                  ),
                );
              }),
            ),
          ),
        ),


      ],
    );
  }
}
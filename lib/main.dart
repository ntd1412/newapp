import 'package:flutter/material.dart';
import 'package:newapp/my_cinema.dart';
import 'package:newapp/my_home_page.dart';
import 'package:newapp/my_class_room.dart';
import 'package:newapp/app_color.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ClassRoom",
      theme: ThemeData(
        canvasColor: AppColor.black,
        fontFamily: "Inter",
      ),
      home: MyCinema(),
    );
  }
}


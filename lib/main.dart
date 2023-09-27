import 'package:flutter/material.dart';
import 'package:newapp/my_home_page.dart';
import 'package:newapp/my_class_room.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Group 02",
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


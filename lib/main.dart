import 'package:flutter/material.dart';
import 'package:newapp/my_cinema.dart';
import 'package:newapp/my_form.dart';
import 'package:newapp/my_home_page.dart';
import 'package:newapp/my_class_room.dart';
import 'package:newapp/app_color.dart';
import 'package:newapp/my_instagram.dart';
import 'package:newapp/widget/loginform.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        //canvasColor: AppColor.black,
      //  fontFamily: "Inter",
      ),
      home: InstaLogin(),
    );
  }
}


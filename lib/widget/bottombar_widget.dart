import 'package:flutter/material.dart';
import 'package:newapp/app_color.dart';

class BottombarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColor.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 35,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
                Icons.home
            ),
        label: 'Home'
        ),
        BottomNavigationBarItem(
            icon: Image.asset('assets/instagram/reels.png',
            width :30,
            ),label: 'Reel'
        ),
        BottomNavigationBarItem(
            icon: Icon(
                Icons.add
            ),
            label: 'Add'
        ),
        BottomNavigationBarItem(
            icon: Icon(
                Icons.favorite_outline_rounded,
            ),
            label: 'Tym'
        ),
        BottomNavigationBarItem(
            icon: CircleAvatar(
                  backgroundImage: AssetImage('assets/instagram/dat.png'),
            ),
            label: 'user'
        ),
      ],
    ));
  }
}

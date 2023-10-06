import 'package:flutter/material.dart';
import 'package:newapp/app_color.dart';
import '../data/home.dart';
import '../model/subject.dart';

class  SubjectItem extends StatelessWidget {
  final Subject subject;

  const SubjectItem ({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
            colors: subject.gradient,
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subject.name,
                    style: TextStyle(
                        color:AppColor.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(subject.lecturer,
                  style: TextStyle(
                    color: AppColor.white.withOpacity(0.75),
                    fontWeight: FontWeight.w500,
                  ),),
                ],
              ),
              const SizedBox(width: 16),
              Image.asset(
                subject.image,
                width: 70,
                height: 70,
              ),
            ],
          ),
        ),
        Positioned(
          right: 1,
            top: 1,
          child: PopupMenuButton<String>(
            itemBuilder: (BuildContext context) {
              return ["Hủy đăng ký"].map((String menuItem) {
                return PopupMenuItem<String>(
                  value: menuItem,
                  child: Text(menuItem),
                );
              }).toList();
            },
            onSelected: (String selectedItem) {
              if (selectedItem == 'Hủy đăng ký') {
                // Xử lý khi người dùng chọn "Hủy đăng ký"
              }
            },
            icon: Icon(
              Icons.more_vert,
              color: AppColor.white,
            ),
          ),
        ),
      ],
    );
  }
}

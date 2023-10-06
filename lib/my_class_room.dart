import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart' as modal;
import 'package:newapp/app_color.dart';
import 'package:newapp/data/home.dart';
import 'package:newapp/view/app_icon_button.dart';
import 'package:newapp/view/subject_item.dart';

class MyClassRoom extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  MyClassRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Container(
          width: 230,
          child: Drawer(
            backgroundColor: AppColor.white,
            elevation: 10,
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(
                    "Màn hình chính",
                    style: TextStyle(
                      color: AppColor.dark,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.calendar_month),
                  title: Text(
                    "Lịch",
                    style: TextStyle(
                      color: AppColor.dark,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.save),
                  title: Text(
                    "Lớp học đã lưu trữ",
                    style: TextStyle(
                      color: AppColor.dark,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text(
                    "Cài đặt",
                    style: TextStyle(
                      color: AppColor.dark,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            modal.showBarModalBottomSheet(
              context: context,
              animationCurve: Curves.easeInOut,
              backgroundColor: Theme.of(context).canvasColor,
              bounce: true,
              enableDrag: true,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              )),
              builder: (ctx) => Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Container(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Tham gia lớp",
                        style: TextStyle(
                          color: AppColor.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        style: TextStyle(
                          color: AppColor.white,
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: InputDecoration(
                          hintText: "Nhập mã lớp học",
                          hintStyle: TextStyle(
                            color: AppColor.grey.withOpacity(
                              0.75,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: AppColor.dark,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(360),
                                child: Image.asset(
                                  "assets/images/user.png",
                                  width: 32,
                                  height: 32,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Nguyễn Tiến Đạt",
                                    style: TextStyle(
                                      color: AppColor.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "nguyentiendat1412@gmail.com",
                                    style: TextStyle(
                                      color: AppColor.grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          AppIconButton(
                              icon: Icon(
                                Icons.chevron_right,
                                color: AppColor.grey.withOpacity(0.75),
                              ),
                              onTap: () {})
                        ],
                      ),
                      const SizedBox(height: 32),
                      MaterialButton(
                        minWidth: MediaQuery.of(context).size.width,
                        elevation: 0,
                        highlightElevation: 0,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 16,
                        ),
                        color: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "Tham Gia",
                          style: TextStyle(
                              color: AppColor.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          backgroundColor: Theme.of(context).primaryColor,
          splashColor: AppColor.black.withOpacity(0.35),
          child: const Icon(
            Icons.add,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //icon
                    AppIconButton(
                        icon: SvgPicture.asset(
                          "assets/icons/menu.svg",
                          width: 28,
                          height: 28,
                          // ignore: deprecated_member_use
                          color: Colors.white,
                        ),
                        onTap: () {
                          _scaffoldKey.currentState?.openDrawer();
                        }),
                    SizedBox(width: 220),
                    AppIconButton(
                        icon: SvgPicture.asset(
                          "assets/icons/notification-fill.svg",
                          width: 28,
                          height: 28,
                          // ignore: deprecated_member_use
                          color: Colors.white,
                        ),
                        onTap: () {}),
                    const SizedBox(width: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(360),
                      child: Image.asset(
                        "assets/images/user.png",
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: subjects.length,
                  itemBuilder: (ctx, index) {
                    final subject = subjects[index];
                    return SubjectItem(subject: subject);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:newapp/model/subject.dart';
import 'package:newapp/app_color.dart';
final List<Subject> subjects = [
  Subject(
    id: 1,
    slug: "digital-arts",
    name: "Nghệ thuật số",
    desc: "Nghệ thuật số",
    lecturer: "Nguyễn Tiến Đạt",
    image: "assets/images/digital_arts.png",
    gradient: [AppColor.purpleGradientStart, AppColor.purpleGradientEnd],
  ),
  Subject(
    id: 2,
    slug: "network-security",
    name: "An ninh mạng",
    desc: "An ninh mạng",
    lecturer: "Nguyễn Tiến Đạt",
    image: "assets/images/network_security.png",
    gradient: [AppColor.cyanGradientStart, AppColor.cyanGradientEnd],
  ),
  Subject(
    id: 3,
    slug: "finance",
    name: "Lùa gà!",
    desc: "Bí kiếp gây dựng cơ nghiệp bạc tỷ!",
    lecturer: "Nguyễn Tiến Đạt",
    image: "assets/images/finance.png",
    gradient: [AppColor.orangeGradientStart, AppColor.orangeGradientEnd],
  ),
  Subject(
    id: 4,
    slug: "mobile-dev",
    name: "Ứng dụng di động",
    desc: "Phát triển ứng dụng di động",
    lecturer: "Nguyễn Tiến Đạt",
    image: "assets/images/mobile_dev.png",
    gradient: [AppColor.pinkGradientStart, AppColor.pinkGradientEnd],
  ),
  Subject(
    id: 5,
    slug: "auto-adb",
    name: "Auto ADB",
    desc: "Android Debug Bridge",
    lecturer: "Nguyễn Tiến Đạt",
    image: "assets/images/android-debug-bridge.png",
    gradient: [AppColor.white, AppColor.black],
  ),
];

import 'package:flutter/material.dart';

import '../my_instagram.dart';

class InstaLogin extends StatefulWidget {
  @override
  State<InstaLogin> createState() => _InstaLoginState();
}

class _InstaLoginState extends State<InstaLogin> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _topWidget(),
            Flexible(child: Container(), flex: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _centerWidget(),
            ),
            Flexible(child: Container(), flex: 2),
            const Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: _bottomWidget(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _topWidget() {
    return DropdownButton(
      value: "English (United States)",
      items: [
        DropdownMenuItem(
          child: Text("English (United States)"),
          value: "English (United States)",
        ),
        DropdownMenuItem(
          child: Text("Spanish"),
          value: "Spanish",
        ),
        DropdownMenuItem(
          child: Text("French"),
          value: "French",
        ),
        DropdownMenuItem(
          child: Text("German"),
          value: "German",
        ),
      ],
      onChanged: (v) {},
    );
  }


  Widget _centerWidget() {
    return Column(
      children: [
        Image.asset(
          "assets/images/instagram_icon.png",
          height: 64,
        ),
        const SizedBox(height: 24),
        TextField(
          controller: usernameController,
          decoration: InputDecoration(
            hintText: "Email",
            border: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context),
            ),
            filled: true,
            contentPadding: const EdgeInsets.all(8),
          ),
        ),
        const SizedBox(height: 24),
        TextField(
          controller: passwordController,
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context),
            ),
            filled: true,
            suffixIcon: const Icon(Icons.remove_red_eye),
            contentPadding: const EdgeInsets.all(8),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 24),
        SizedBox(
          height: 48,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              if (usernameController.text == "admin" && passwordController.text == "admin") {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Đăng nhập thành công"),
                      content: Text("Đăng nhập thành công, Tiến hành chuyển trang."),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyInstagram()),
                            );
                          },
                          child: Text("OK"),
                        ),
                      ],
                    );
                  },
                );
              }
              else {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Đăng nhập thất bại"),
                      content: Text("Sai toàn khoản hoặc mật khẩu,vui lòng thử lại"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Đóng hộp thoại
                          },
                          child: Text("OK"),
                        ),
                      ],
                    );
                  },
                );
              }
            },
            child: const Text("Log in"),
          ),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Forgot your login details?"),
            Text(" Get help logging in",
                style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          children: const [
            Flexible(child: Divider(thickness: 2)),
            Text(" OR "),
            Flexible(child: Divider(thickness: 2)),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/fb_icon.png", height: 32),
            const Text(" Log in with Facebook"),
          ],
        )
      ],
    );
  }

  Widget _bottomWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("Don't have an account"),
        Text(" Sign up", style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
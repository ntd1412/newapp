import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
            children: [
              Text(
                  "Giá trị hiện tại là: ${counter}",
                style: TextStyle(fontSize: 30),
              ),
            ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("+"),
        onPressed: (){
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

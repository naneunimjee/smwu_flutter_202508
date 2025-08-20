import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack")),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
                top: 0, left: 0,
            child: Container( color: Colors.purple, width: 170, height: 170,)),
            Positioned(
                top: 50, left: 50,
                child: Container( color: Colors.yellow, width: 160, height: 160,)),
            Positioned(
                top: 80, left: 80,
                child: Container( color: Colors.orange, width: 120, height: 120,)),
            Positioned(
                top: 120, left: 120,
                child: Container( color: Colors.orange, width: 80, height: 80,)),
          ],
        ),
      )
    );
  }
}

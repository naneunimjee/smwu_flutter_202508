import 'package:flutter/material.dart';

class ScrollViewScreen extends StatelessWidget {
  const ScrollViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scroll View")),
      body: SizedBox(
        width: 200,
        height: 300,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 50),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Text("가"),
              // SizedBox(width: 30),
              SizedBox(height: 30),
              Text("나"),
              // SizedBox(width: 30),
              SizedBox(height: 30),
              Text("다"),
              // SizedBox(width: 30),
              SizedBox(height: 30),
              Text("라"),
              // SizedBox(width: 30),
              SizedBox(height: 30),
              Text("마"),
              // SizedBox(width: 30),
              SizedBox(height: 30),
              Text("바"),
              // SizedBox(width: 30),
              SizedBox(height: 30),
              Text("사"),
              //SizedBox(width: 30),
              SizedBox(height: 30),
            ],
          )
        ),
      )
    );
  }
}

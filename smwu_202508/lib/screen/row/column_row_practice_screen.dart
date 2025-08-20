import 'package:flutter/material.dart';

class ColumnRowPracticeScreen extends StatelessWidget {
  const ColumnRowPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column, Row 심화")),
      body: Container(
        color: Colors.grey,
        height: 500,
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Row는 사이즈를 지정하지 않으면 가로를 꽉 채움
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width:100, height: 100, color: Colors.blue),
                Container(width:100, height: 100, color: Colors.red),
                Container(width:100, height: 100, color: Colors.green),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(width:80, height: 80, color: Colors.blue),
                Container(width:80, height: 80, color: Colors.red),
                Container(width:80, height: 80, color: Colors.green),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 30, height: 30, color: Colors.green),
                    Container(width: 30, height: 30, color: Colors.orange),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 30, height: 30, color: Colors.orange),
                    Container(width: 30, height: 30, color: Colors.green),
                  ],
                )
              ],
            )
          ],
        )
      )
    );
  }
}

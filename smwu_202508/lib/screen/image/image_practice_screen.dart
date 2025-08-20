import 'package:flutter/material.dart';

class ImagePracticeScreen extends StatelessWidget {
  const ImagePracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image 실습")),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  child:
                  Text("URL", style: TextStyle(fontSize: 25),),
                ),
                Container(
                  child: Image.network('https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_responsibility.png',
                      width: 200, height: 200, fit: BoxFit.fitWidth),
                ),
              ],
            ),

            Column(
              children: [
                Container(
                  child: Text("Asset", style: TextStyle(fontSize: 25))
                ),
                Container(
                  child: Image.asset('assets/chart.png',
                  width: 200, height: 200, fit: BoxFit.cover)
                )
              ],
            )
          ]
        ),
      )
    );
  }
}

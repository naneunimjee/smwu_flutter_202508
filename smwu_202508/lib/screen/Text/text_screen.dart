import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text")),
      // 글씨 가로길이만큼이 컬럼 전체를 차지해서 center로 옮겨도 center로 안 옴
        // 그래서 Column을 SizedBox로 감싼다
      body: SizedBox(
        // 디바이스 화면을 최대한 꽉 채워라
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Text 위젯 1",
              style: TextStyle(color: Colors.grey, fontSize: 20,
                fontWeight: FontWeight.bold ), ),

            Text("Text 위젯 1입니다",
              style: TextStyle(color: Colors.grey, fontSize: 25)),

            /// FontWeight w400 = normal
            /// FontWeight w500 = medium
            /// FontWeight w700 = bold
            Text("Text 위젯입니다. Text 위젯입니다. Text 위젯입니다.Text 위젯입니다. Text 위젯입니다.",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500,
                fontSize: 30,),
                maxLines: 2, // 최대 줄 수
                overflow: TextOverflow.ellipsis, // 잘리면 ...을 표시
            )
          ],
        ),
      )
    );
  }
}

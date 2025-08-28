import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}
/// api가 존재하지 않으면 UI틀 먼저 만드는 경우 많음

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News")),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index){

          return Row(
            children: [
              Container(
                color: Colors.grey,
                height: 100,
                width: 100,
                padding: EdgeInsets.symmetric(vertical: 15)
              ),
              Column(
                children: [
                  Text( "임시, Text1 자리. 뉴스 제목 칸"  ,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    maxLines: 1,
                  ),
                  Text( " 임시, Text2 자리. 뉴스 본문 칸" ,
                    maxLines: 2,
                  ),
                  SizedBox(height: 5),
                  Text( "임시, Text3 자리. 언론사 이름 칸" ,
                    style: TextStyle(color: Colors.grey)
                  ) ,
                  Text( "임시, Text4 자리. 날짜 칸",
                    style: TextStyle(color: Colors.grey)
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }
}


import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/network/member_edit_screen.dart';
import 'package:smwu_202508/screen/network/member_register_screen.dart';

import 'member.dart';

class MemberListScreen extends StatefulWidget {
  const MemberListScreen({super.key});

  @override
  State<MemberListScreen> createState() => _MemberListScreenState();
}

class _MemberListScreenState extends State<MemberListScreen> {

  /// 경로 입력
  Dio dio = Dio(BaseOptions(baseUrl: "https://0f5d227aa566.ngrok-free.app"));
  Dio dio2 = Dio(BaseOptions(baseUrl: "https://online-lecture-data.s3.ap-northeast-2.amazonaws.com/data.json"));

  List<Member> memberList = [];
  bool loading = false;

  @override
  Widget build(BuildContext context) {

    if(loading){
      return Scaffold( body: CircularProgressIndicator());
    }

    return Scaffold(
      appBar: AppBar(title: Text("멤버 조회")),
      body: Column(
        children: [
          /// 멤버 조회 - api 호출하기
          /// 라이브러리 사용
          ElevatedButton(onPressed: () {
            dio.get("/api/v1/member/all");
          }, child: Text("get data")),
          /*
          ElevatedButton(onPressed: () {
            dio2.get("").then((value){
              /// 받아온 값을 모델에 저장하기
              /// // 모델 안에서 데이터 연결짓는 과정을 구현
              print(value);
              var jsonModel = JsonModel.fromJson(value.data);
              print(jsonModel);
            });
          }, child: Text("Get JSon"))
           */

          ElevatedButton(onPressed: () async {
            loading = true;
            setState(() {

            });
            var response = await dio.get("/api/v1/member/all");

              // memberList에 값을 할당
              memberList =
                  (response.data as Iterable)
                      .map((e) => Member.fromJson(e))
                      .toList();
              print('memberList : $memberList');
              loading = false;
              setState(() {

              });
            },
            child: Text("get data 실습"),
          ),


          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              itemBuilder: (context, index) {
                return InkWell(
                  // child 위젯을 클릭하도록
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return MemberEditScreen(email: memberList[index].email);
                    },));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            children: [
                              Text("이메일 : ${memberList[index].email}  "),
                              Text("설명 : ${memberList[index].description}")
                            ],
                        )],
                    ),
                  ),
                );
              },
              itemCount: memberList.length,
            ),
          ),
        ],

      )
    );
  }


}




import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MemberRegisterScreen extends StatefulWidget {
  const MemberRegisterScreen({super.key});

  @override
  State<MemberRegisterScreen> createState() => _MemberRegisterScreenState();
}

class _MemberRegisterScreenState extends State<MemberRegisterScreen> {

  Dio dio = Dio(BaseOptions(baseUrl: "https://0f5d227aa566.ngrok-free.app"));
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();

  /// 메모리 공간 절약을 위해 사용한 컨트롤러는 dispose
  @override
  void dispose(){
    emailEditingController.dispose();
    passwordEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("멤버 등록")),
      body: Column(
        children: [
          TextFormField(controller: emailEditingController),
          TextFormField(controller: passwordEditingController),
          ElevatedButton(onPressed: () async {
          await dio.post("/api/v1/member", data: {
            "email" : emailEditingController.text,
            "password" : passwordEditingController.text
          } );
          Navigator.pop(context, true); // await가 끝나면 true 리턴
          }, child: Text("등록"))

        ],
      )
    );
  }
}



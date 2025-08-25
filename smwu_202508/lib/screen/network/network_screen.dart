import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/network/member_list_screen.dart';

class NetworkScreen extends StatefulWidget {
  const NetworkScreen({super.key});

  @override
  State<NetworkScreen> createState() => _NetworkScreenState();
}

class _NetworkScreenState extends State<NetworkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Network")),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MemberListScreen();
            },));
          }, child: Text("회원 목록 조회"))
        ],
      )
    );
  }
}

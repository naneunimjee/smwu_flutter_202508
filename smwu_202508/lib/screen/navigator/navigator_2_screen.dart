import 'package:flutter/material.dart';

class Navigator2Screen extends StatefulWidget {
  const Navigator2Screen({required this.count, super.key});

  final int count;

  @override
  State<Navigator2Screen> createState() => _Navigator2ScreenState();
}

class _Navigator2ScreenState extends State<Navigator2Screen> {

  int count2 = 0;

  /// initState 내에서는 setState 사용 불가
  /// setState는 build가 완료된 후에 호출할 수 있다.
  /// 가장 먼저 호출이 되는 함수인데, 함수가 실행되지도 않았는데
  /// build 함수를 다시 실행하려고 함
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    count2 = widget.count;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigator 2")),
      body: Column(
        children: [
          Text(count2.toString()),
          ElevatedButton(onPressed: () {
            count2 += 2; // setstate 함수 안에 넣어도 ㄱㅊ긴 함
            setState(() {

            });
          }, child: Text("Count up")),

          ElevatedButton(onPressed: () {

            /// pop : 뒤로가기
            Navigator.pop(context);
          }, child: Text("Pop"))
        ],
      )
    );
  }
}

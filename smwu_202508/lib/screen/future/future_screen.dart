import 'package:flutter/material.dart';

class FutureScreen extends StatefulWidget {
  const FutureScreen({super.key});

  @override
  State<FutureScreen> createState() => _FutureScreenState();
}

class _FutureScreenState extends State<FutureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Future")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(onPressed: () async {
            print("시작 전");

            String value = await futureBasic();

            /// 함수 호출을 선언과 동시에
            // await Future.delayed(Duration(milliseconds: 1000), () {
            //   // 여기에 실행할 코드 작성
            //   print("딜레이");
            // });
            print("시작 후 : $value");
            
          }, child: Text("Delay"))

        ],
      ),);
  }
}



/// Future를 리턴하는 경우 Future 리턴
/// Future를 리턴하는 경우가 아니면 에러를 리턴
/// Future를 리턴하는 함수는 then을 활용할 수 있음
Future<String> futureBasic() async {
  await Future.delayed(Duration(milliseconds: 1500));
  return "result";
}
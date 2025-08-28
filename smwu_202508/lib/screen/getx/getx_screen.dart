import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:smwu_202508/screen/getx/my_controller.dart';

class GetxScreen extends StatefulWidget {
  const GetxScreen({super.key});

  @override
  State<GetxScreen> createState() => _GetxScreenState();
}

class _GetxScreenState extends State<GetxScreen> {
  @override
  Widget build(BuildContext context) {
    MyController.to;
    return Scaffold(
      appBar: AppBar(title: Text("Getx")),
      body: Column(
        children:[
          /// GetX 상태 관리의 두 가지 요소
          /// 1. Rx로 선언된 변수
          /// 2. Obx()로 감쌀 것
          /// count가 controller에 저장되어있고, 다른 화면에서도 controller에 있는 값만 참조
          /// 그래서 controller만 바꾸면 다른 화면에서 또 조작을 하거나 할 필요가 없다

          /// 현업에서는 getx, provider 등등 다양한 라이브러리를 사용한대

          Obx(() {
            return Text(MyController.to.count.value.toString());
          }),

          Text(MyController.to.count.value.toString()), // int값이라 toString()

          ElevatedButton(onPressed: () {
            MyController.to.countUP();
          }, child: Text("Count up")),

          ElevatedButton(onPressed: () {

          }, child: Text("Move")),

        ],
      )
    );
  }
}

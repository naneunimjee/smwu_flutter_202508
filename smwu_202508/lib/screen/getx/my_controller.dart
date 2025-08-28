import 'package:get/get.dart';

class MyController extends GetxController{

  /// Get.find => Get 안에 등록된 Controller를 불러옴
  /// MyController return 타입
  /// get은 불러온다는 키워드
  /// to는 변수명
  /// static : 생성자 없이 호출
  static MyController get to => Get.find<MyController>();

  RxInt count = 0.obs; // Getx에서 제공하는 클래스 타입

  void countUP(){
    count.value ++; // RxInt 타입이라 .value를 꼭 붙여야함
  }

}
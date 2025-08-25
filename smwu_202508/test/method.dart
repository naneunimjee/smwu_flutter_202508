class Method{

  Method(){

    int age = add();
    print(age);

    double calcResult = calculator(5, 9);
    print(calcResult);

    // 변수 이름에 할당. 자동완성 이용
    String introduceMy = introduce(name: "jyeo0ng");
    print(introduceMy);

    // b는 선택 여부,
    String o = optinoal("jyeo0ng", c: "지용이", b: "지횽이");
    print(o);
  }

  int add(){
    return 30;
  }

  double calculator(int a, int b){

    return (a+b)*1.5;
  }

  // required : 반드시
  String introduce({required String name}){
    return "안녕. $name입니다"; // $표시 -> 변수값 넣기
  }

  // required 없으면 기본값 세팅
  String optinoal(String a, {String b = '', required String c}){
    return "ㅎㅇ, $a님, $c를 잘 부탁뎌룡. $b도 같이요";
  }

}
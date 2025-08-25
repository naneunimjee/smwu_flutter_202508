class Variable {

  Variable(){
    String name = '임지영';
    int age = 24;
    bool check = true;
    double weight = 50;

    // var, dynamic
    var animal = 'dog'; // 타입 추론
    animal = 'bunny';
    // animal = 0; //에러, 앞에서는 animal을 string으로 추론


    // 다이나믹은 잘은 안 쓰지만
    // 네트워크 통신 쓸 때, 결과값/입력값이 뭐로 들어올지 모를 때
    dynamic home = false;
    home = true;
    home = 'my home'; // 여기서는 오류 X
    home = 25; // 오류 X 다이나믹하게 변수 상태 변경


    // Nullable 변수
    String? smwu = 'yes';
    smwu = null;
    int? age2 = 10;
    age2 = null;
    bool? h2 = false;
    h2 = null;


    // final, const
    // final과 const 차이 : 컴파일 시점의 차이
    // 컴파일 : 사람이 작성한 코드를 컴이 인식하도록 변환
    // const는 컴파일 시점에 정해짐 -> 메모리에 덜 올라가되, 설치 파일은 커짐
    // final은 실행 시점에 값이 정해짐 (런타임 시점에) -> 메모리에 올라옴
    final String name3 = 'jyeo0ng'; // 변경 불가
    // name3 = 'aaa'; 오류
    const String address = 'aaa';
    // address = 'bbb'; 오류

  }

}
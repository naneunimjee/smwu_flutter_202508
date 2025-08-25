class Conditional {

  void simpleIf() {
    int age = 30;
    if (age > 40) {
      print('Conditional.simpleIf 40대 이상');
    } else {
      print('Conditional.simpleIf 30대');
      ;
    }
  }

  void simpleSwitch() {
    int age = 30;

    switch (age) {
      case 10:
        print('Conditional.simpleSwitch 10대');
        break;
      case 20:
        print('Conditional.simpleSwitch 20대');
        break;
      case 30:
        print('Conditional.simpleSwitch 30대');
        break;
      default:
        print('Conditional.simpleSwitch 디폴트');
        break;
    }
  }

  void switchPractice(int score) {
    print('Conditional.switchPractice');

    int num = (score / 10).floor();

    // switch(num)
    // score에서 10을 나누고 정수 반환
    int value = score ~/ 10;


    switch (value) {
      case 9 :
        print('A');
        break;
        // return "A"; 이렇게 바로 리턴하면 break 필요 X
      case 8 :
        print('B');
        break;
      case 7 :
        print('C');
        break;
      case 6 :
        print('D');
        break;
      default:
        print('F');
        break;
    }
  }

  void ifPractice(int score) {
    print('Conditional.ifPractice');

    /// 리턴문으로 써서 else-if 안 써도 됨!
    if (score >= 90)
      print('A');
    else if (score >= 80)
      print('B');
    else if (score >= 70)
      print('C');
    else if (score >= 60)
      print('D');
    else
      print('F');
  }

}
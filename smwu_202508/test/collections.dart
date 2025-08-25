import 'dart:ffi';

class Collections{

  /// List, Map, Set

  // 생성자 따로 추가 안 해도 자동으로 생성

  void listAdd(){
    List<int> listInt = [];
    listInt.add(1);
    listInt.add(2);
    listInt.add(3);
    listInt.addAll([4,5,6,7,8]);

    listInt.insert(1, 50);

    print(listInt);

  }

  void listRemove(){
    List<String> nameList = [];
    nameList.add("김진한");
    nameList.add("홍길동");
    nameList.add("이순신");
    nameList.add("오바마");
    nameList.add("기린");
    nameList.add("호랑이");
    nameList.add("사자");

    nameList.remove("기린");
    nameList.removeLast();
    nameList.removeAt(0);

    // 조건문이 있는 remove 함수
    // element에 순차적으로 nameList의 원소가 들어옴
    nameList.removeWhere((element) {
      print("element: $element ");
      return element == "호랑이"; // 삭제할 값을 리턴
    },);

    print(nameList);

    nameList.clear();

    print(nameList);
  }

  void listController(){
    List<int> ageList = [1,5,3,4,6,2,9];
    int len = ageList.length;
    print('Collections.listController : $len');

    int two = ageList[2];
    print('Collections.listController two : $two');

    /// 비어있으면 true, 원소가 있으면 false
    bool isEmpty = ageList.isEmpty;
    bool isNotEmpty = ageList.isNotEmpty;

  }

  void mapController(){
    /// Map의 키와 값 타입 세팅을 안 하면 뭘 넣어도 ㄱㅊ음
    Map m = {
      "a" : 10,
      "b" : 11,
      "c" : 12,
      50 : 61,

    };

    var maValue = m["a"];
    print('Collections.mapController : $maValue');

    /// 추가, 제거
    m["d"] = 40;
    m.remove(50);

    Map<String, int> m2 = {
      "a" : 1,
      "b" : 2,
      "c" : 3,
    };
  }

  void setController(){
    /// set은 중복 허용 X
    Set set = {'a', 'b', 'c'};
  }

  void practice(){
    List<String> animals = [];
    animals.addAll(["토끼", "햄스터", "강아지", "고양이", "앵무새"]);
    print(animals);
    animals.removeAt(1);
    print(animals);

    Map<String, int> map = {
      "임지영" : 24,
      "남동생" : 22,
      "동기" : 23
    };
    print(map);
    map.remove("남동생");
    /*
    map.removeWhere((key, value) {
      return key == "남동생"
    });
     */
    print(map);

    Set<String> set = {"한국", "일본", "중국", "미국", "프랑스"};
    set.add("스페인");
    set.add("이탈리아");
    print(set);
    set.remove("한국");
    print(set);
  }
}
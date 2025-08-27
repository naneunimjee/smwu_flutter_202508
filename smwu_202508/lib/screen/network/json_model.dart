import 'package:flutter/foundation.dart';

class JsonModel{

  /// 깃허브에 Iterable 얘기 올라온 거 확인하기

  String id;
  int number;
  /// 1. 데이터 모델 상에는 그냥 적기 (json의 계층 반영X)
  /// 2. 클래스를 하나 더 만들기 (계층 반영)
  Info? info; // nullable로 만들기
  List<Framework> frameworks;

  JsonModel(this.id, this.number, this.info, this.frameworks);

  factory JsonModel. fromJson(Map<String, dynamic> json){
    return JsonModel(
      json['id'] ?? '',
      json['number'] ?? 0,
      json['info'] == null ? null : Info.fromJson(json['info']),
      /// map 함수 : json['framework']의 각 항목을 e라고 처리
      json['framework'] == null ? [] : (json['framework'] as Iterable).map((e) => Framework.fromJson(e)).toList(),
    );
  }

  @override
  String toString() {
    return 'JsonModel{id: $id, number: $number, info: $info, Framework: $frameworks}';
  }
}

class Info{
  int age;
  double weight;
  String name;
  Description? description; // nullable

  Info(this.age, this.weight, this.name, this.description);


  factory Info. fromJson(Map<String, dynamic> json){
    return Info(
      json['age'] ?? 0,
      json['weight'] ?? 0.0,
      json['name'] ?? '',
      json['description'] == null ? null :  Description.fromJson(json['description'])
      // description이라는 키 안에 career와 when이 잇는 거
      /// description이 null인 경우
      /// 1. null 허용
      /// 2. 초기값 넣은 생성자를 생성하거나
    );
  }

  @override
  String toString() {
    return 'Info{age: $age, weight: $weight, name: $name, description: $description}';
  }
}

class Description{
  String career;
  String when;

  // Alt+Insert
  Description(this.career, this.when);

  /// 이름이 있는 생성자, named 생성자
  /// json에는 아래 데이터가 존재
  ///     "description": {
  ///       "career": "developer",
  ///       "when": "2010-01-01"
  ///     }
  ///     안정성을 위해 디폴트값 정의 -> ?? ''
  ///     코틀린은 ?: '' 이렇게 쓴다더라
  factory Description. fromJson(Map<String, dynamic> json){
    return Description(
        json['career'] ?? '',
        json['when'] ?? '',);
  }


  @override
  String toString() {
    return 'Description{career: $career, when: $when}';
  }
}

class Framework{
  String email;
  String platform;

  Framework(this.email, this.platform);

  factory Framework. fromJson(Map<String, dynamic> json){
    return Framework(json['email'] ?? '' , json['platform'] ?? '');
  }

  @override
  String toString() {
    return 'Framework: email:$email, platform: $platform';
  }


}
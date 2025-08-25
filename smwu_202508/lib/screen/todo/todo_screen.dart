import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/todo/todo_model.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {

  TextEditingController controller = TextEditingController();

  List<TodoModel> todoList = [
    TodoModel("산책", true),
    TodoModel("저녁", false)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo")),
      body: Column(
        children: [
          Row(
            children: [
              /// Expanded : 현재 주어진 영역의 빈 공간을 최대한 채우는 위젯
              /// 반응형
              Expanded(child: TextFormField(controller: controller,)),
              TextButton(onPressed: () {
                print(controller.text);
                todoList.add(TodoModel(controller.text, false));
                print(todoList);
                setState(() {

                });
                /// 추가
                /// 입력된 값을 알아야 함
              }, child: Text("등록")),
            ],
          ),
          /// 컬럼 안에 스크롤이 있는 위젯이 있는 경우
          /// 높이 값을 설정 해줘야 함
          Expanded(
            child: ListView.separated(itemBuilder: (context, index) {
              var model = todoList[index];

              /// 1. 체크 박스 선택 시 checked 값 변경 및 화면 갱신
              /// 2. delete 버튼 선택 시 클릭한 todoModel 모델 제거
              return Row(
                children: [
                  Checkbox(value: model.checked, onChanged: (value) {
                    model.checked = !model.checked;
                    // model.checked = value!;
                    // 내 풀이 todoList[index].checked = !model.checked;
                    setState(() {

                    });
                  }),
                  Expanded(child: Text(model.name)),
                  IconButton(onPressed: () {
                    print("index: $index"); // 디버깅용
                    todoList.removeAt(index);
                    setState(() {

                    });
                  }, icon: Icon(Icons.delete)),
                ],
              );
            }, separatorBuilder: (context, index) {
              return Container(height: 2, color: Colors.grey);
            }, itemCount: todoList.length),
          )
        ],
      )
    );
  }
}

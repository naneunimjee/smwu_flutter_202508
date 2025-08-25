import 'package:flutter/material.dart';

class InnerState extends StatefulWidget {
  const InnerState({required this.count, super.key});

  final int count;

  @override
  State<InnerState> createState() => _InnerStateState();
}

class _InnerStateState extends State<InnerState> {

  int innerCount = 0;

  /// initState = stateful 위젯이 최초 생성될 때 1번만 호출되는 함수
  /// 생성자
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    innerCount = widget.count;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Inner Count: $innerCount"),
        ElevatedButton(
          onPressed: () {
            innerCount++;
            setState(() {});
          },
          child: Text("Inner count up"),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smwu_202508/screen/Text/text_practice_screen.dart';
import 'package:smwu_202508/screen/Text/text_screen.dart';
import 'package:smwu_202508/screen/column/column_practice_screen.dart';
import 'package:smwu_202508/screen/column/column_screen.dart';
import 'package:smwu_202508/screen/container/container_practice_screen.dart';
import 'package:smwu_202508/screen/container/container_screen.dart';
import 'package:smwu_202508/screen/future/future_screen.dart';
import 'package:smwu_202508/screen/image/image_practice_screen.dart';
import 'package:smwu_202508/screen/image/image_screen.dart';
import 'package:smwu_202508/screen/navigator/navigator_screen.dart';
import 'package:smwu_202508/screen/network/network_screen.dart';
import 'package:smwu_202508/screen/news/news_screen.dart';
import 'package:smwu_202508/screen/row/column_row_practice_screen.dart';
import 'package:smwu_202508/screen/row/row_practice_screen.dart';
import 'package:smwu_202508/screen/row/row_screen.dart';
import 'package:smwu_202508/screen/scrollview/scroll_view_screen.dart';
import 'package:smwu_202508/screen/stack/stack_practice_screen.dart';
import 'package:smwu_202508/screen/stack/stack_screen.dart';
import 'package:smwu_202508/screen/stateful/stateful_screen.dart';
import 'package:smwu_202508/screen/todo/todo_screen.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ContainerScreen();
                      },
                    ),
                  );
                },
                child: Text("Container"),
              ),
              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ContainerPracticeScreen();
                      },
                    ),
                  );
                },
                child: Text("Container 실습"),
              ),
              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ColumnScreen();
                      },
                    ),
                  );
                },
                child: Text("Column "),
              ),
              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ColumnPracticeScreen();
                      },
                    ),
                  );
                },
                child: Text("Column 실습"),
              ),
              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RowScreen();
                      },
                    ),
                  );
                },
                child: Text("row"),
              ),

              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RowPracticeScreen();
                      },
                    ),
                  );
                },
                child: Text("row 실습"),
              ),


              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ColumnRowPracticeScreen();
                      },
                    ),
                  );
                },
                child: Text("Column, Row 실습"),
              ),

              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return TextScreen();
                      },
                    ),
                  );
                },
                child: Text("Text"),
              ),

              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return TextPracticeScreen();
                      },
                    ),
                  );
                },
                child: Text("Text 실습"),
              ),

              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ImageScreen();
                      },
                    ),
                  );
                },
                child: Text("image"),
              ),

              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ImagePracticeScreen();
                      },
                    ),
                  );
                },
                child: Text("image 실습"),
              ),

              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return StackScreen();
                      },
                    ),
                  );
                },
                child: Text("stack"),
              ),

              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return StackPracticeScreen();
                      },
                    ),
                  );
                },
                child: Text("stack practice"),
              ),

              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ScrollViewScreen();
                      },
                    ),
                  );
                },
                child: Text("scroll view"),
              ),

              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return StatefulScreen();
                      },
                    ),
                  );
                },
                child: Text("stateful"),
              ),

              SizedBox(height: 5),

              button(context, NavigatorScreen(), "Navigator"),

              SizedBox(height: 5),

              button(context, TodoScreen(), "Todo"),

              SizedBox(height: 5),

              button(context, NetworkScreen(), "Network"),

              SizedBox(height: 5),

              button(context, FutureScreen(), "Future"),

              button(context, NewsScreen(), "뉴스 테스트")

            ],
          ),
        ),
      ),
    );
  }

  /// 버튼 생성 함수
  Widget button(BuildContext context, Widget child, String name) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return child;
            },
          ),
        );
      },
      child: Text(name),
    );
  }

}

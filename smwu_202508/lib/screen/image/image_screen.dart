import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("image")),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // 컨테이너에 이미지를 어떻게 할당할지
              Container(
                color: Colors.grey,
                width: 150, height: 150,
                child: Image.network("https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_device.png")
              ),

              SizedBox(height: 30),

              // fitHeight
              Container(
                  color: Colors.grey,
                  width: 150, height: 150,
                  child: Image.network("https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_device.png",
                    fit: BoxFit.fitHeight,),

              ),

              SizedBox(height: 30),

              //fitWidth
              Container(
                color: Colors.grey,
                width: 150, height: 150,
                child: Image.network("https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_device.png",
                  fit: BoxFit.fitWidth,),

              ),

              SizedBox(height: 30),

              //cover (가로 세로 상관없이 비율 유지하며 확대
              Container(
                color: Colors.grey,
                width: 150, height: 150,
                child: Image.network("https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_device.png",
                  fit: BoxFit.cover,
                alignment: Alignment.topLeft,),
              ),

              SizedBox(height: 30),
            ],
          )
        ),
      )
    );
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/news/article_model.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}
/// api가 존재하지 않으면 UI틀 먼저 만드는 경우 많음

/// GET 방식
/// https://newsapi.org/v2/everything?q=tesla&from=2025-07-28&sortBy=publishedAt&apiKey=fd0ee8eb7a6f4d0aa926a39317cd63a2
/// https://newsapi.org => 도메인, '/'가 있기 전까지 주소
/// /v2/everything => 경로
/// ?q=tesla&from=2025-07-28&sortBy=publishedAt&apiKey=fd0ee8eb7a6f4d0aa926a39317cd63a2
/// ?이후 => 쿼리

/// GET vs POST
/// GET은 인터넷 주소창에 검색해도 호출가능
/// POST는 인터넷 주소창에서 호출 불가능


class _NewsScreenState extends State<NewsScreen> {

  bool loading = true;
  int page = 1; // 페이지 번호는 회사마다 다르고, 얘는 1부터 시작
  List<ArticleModel> articles = [];
  int totalResults = 0;
  ScrollController scrollController = ScrollController(); // listView와 연결



  Future<void> getData() async {
    if(!loading){
      loading = true;
      setState(() { });
    }

    /// get에 uri 그대로를 넘겨도 되지만 구조화해도 O

    Uri uri = Uri(
      scheme: "https", // 프로토콜, 스킴
      host: "newsapi.org", // 호스트, 스킴 + 호스트 = 도메인
      path: "/v2/everything",
      queryParameters: {
        "q" : "google",
        "from" : "2025-08-01",
        "sortBy" : "publishedAt",
        "apiKey" : "fd0ee8eb7a6f4d0aa926a39317cd63a2",
        "pageSize" : "20",
        "page" : page.toString(),
      } // 쿼리 파라미터는 맵 형식으로
    );

    /// 1. ArticleModel 생성
    /// 2. List<ArticleModel> articles 생성
    /// response.data["articles"]라고 해야됨 (json이 계층적이라서)

    var response = await Dio().get(uri.toString());
    totalResults = response.data["totalResults"] ?? 0;
    List<ArticleModel> tempList =
    (response.data["articles"] as Iterable).map((e) => ArticleModel.fromJson(e)).toList();
    // map((e) { return ArticleModel.fromJson(e); }).toList() 이렇게 적어도 같은 의미
    articles.addAll(tempList); // 페이징 처리를 위함

    print(articles);

    loading = false;
    setState(() { });
  }

  @override
  void initState() {
    getData(); // initState에서 async, await하면 오류
    scrollController.addListener(() {
      /// 맨 끝, 맨 위 도착 : true
      if(scrollController.position.atEdge){
        /// 현재 스크롤의 위치 == 최대 위치
        bool isBottom = scrollController.position.pixels ==
            scrollController.position.maxScrollExtent;

        if(isBottom && totalResults > articles.length && !loading){
          page++;
          getData();
        }
      }

    },);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News")),
      body: Padding(
        padding: EdgeInsets.all(16), // 보통 간격값을 2의배수 정함 16, 24, 12 등
        child: ListView.builder(
          controller: scrollController,
          itemCount: articles.length,
          itemBuilder: (BuildContext context, int index){
            var model = articles[index];

            return Padding(
              padding: EdgeInsets.only(bottom: 24), // 아래쪽에 간격 생성
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.grey,
                    height: 130,
                    width: 130,
                    child: model.urlToImage.isEmpty
                        ? null
                        : Image.network(model.urlToImage, fit: BoxFit.cover,),
                  ),
                  SizedBox(width: 20),
                  /// Expanded : 넘칠 경우 꽉 채워라
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text( model.title,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          maxLines: 1,
                        ),
                        Text( model.description,
                          style: TextStyle(fontSize: 17),
                          maxLines: 2,
                        ),
                        SizedBox(height: 10),
                        Text( model.author,
                          style: TextStyle(color: Colors.grey)
                        ) ,
                        Text( model.publishedAt ,
                          style: TextStyle(color: Colors.grey)
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}


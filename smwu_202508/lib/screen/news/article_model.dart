class ArticleModel {
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  // 모두 드래그하고 '{'누르면 다 씌워짐
  // ctrl + Alt + L로 줄 정리
  ArticleModel({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  @override
  String toString() {
    return 'ArticleModel{author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content}';
  }

  // json을 맵 형태라고 이해하면 됨
  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      author : json["author"] ?? '',
      title : json["title"] ?? '',
      description : json["description"] ?? '',
      url : json["url"] ?? '',
      urlToImage : json["urlToImage"] ?? '',
      publishedAt : json["publishedAt"] ?? '',
      content : json["content"] ?? '',
    );
  }
}

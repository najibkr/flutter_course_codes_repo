class Article {
  final String? id;
  final String? title;
  final String? description;
  final String? imageURL;
  final String? videoURL;
  const Article({
    required this.id,
    required this.title,
    required this.description,
    required this.imageURL,
    required this.videoURL,
  });
  const Article.init({
    this.id,
    this.title,
    this.description,
    this.imageURL,
    this.videoURL,
  });
  Article copyWith({
    String? id,
    String? title,
    String? description,
    String? imageURL,
    String? videoURL,
  }) {
    return Article(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      imageURL: imageURL ?? this.imageURL,
      videoURL: videoURL ?? this.videoURL,
    );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{
      "id": id,
      "title": title,
      "description": description,
      "imageURL": imageURL,
      "videoURL": videoURL,
    };
    json.removeWhere((key, value) => value == null);
    return json;
  }

  factory Article.fromJson(Map<String, dynamic>? json) {
    if (json == null) return Article.init();
    return Article(
      id: json["id"],
      title: json["title"],
      description: json["description"],
      imageURL: json["imageURL"],
      videoURL: json["videoURL"],
    );
  }
  static List<Article> listArticle(List? list) {
    if (list == null || list.isEmpty) return [];
    return list.map((e) => Article.fromJson(e)).toList();
  }

  static List<Article> defaultArticles = List<Article>.generate(100, (index) {
    return Article(
      id: '$index',
      title: 'Article $index',
      description: '''
      Mr Meadows will now be referred to the Justice Department, which will ultimately decide whether to formally charge him.

Trump supporters breached the US Congress building on 6 January as lawmakers were meeting to certify the election result.

Before last week, Mr Meadows had provided the committee about 9,000 pages of records regarding the events, before reversing course and claiming that his communications are protected by executive privilege - a legal principle designed to shield certain White House records.

After Mr Meadows twice refused to appear at scheduled depositions, on Monday the congressional panel voted unanimously to recommend that the House hold him in contempt.

"Mr Meadows started by doing the right thing - co-operating. He handed over records that he didn't try to shield behind some excuse," said Representative Bennie Thompson, the chairman of the 6 January committee.

"When these records raise questions - as these most certainly do - you have to come in and answer those questions," Mr Thompson added. "He changed his mind and told us to pound sand. He didn't even show up." 
      ''',
      imageURL: 'image.JPG',
      videoURL: '',
    );
  });
}

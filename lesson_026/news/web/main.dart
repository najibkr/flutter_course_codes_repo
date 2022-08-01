import 'dart:html';

import 'package:news/models/article.dart';

void main() {
  final articles = Article.defaultArticles;
  List<Element> artlistElements = [];
  for (var article in articles) {
    final articleElement = Element.article();
    final titleElement = HeadingElement.h1();
    titleElement.text = article.title;
    final descElement = ParagraphElement();
    descElement.text = article.description;
    final imageElement = ImageElement();
    imageElement.src = article.imageURL;
    imageElement.width = 400;
    articleElement.nodes.addAll([titleElement, descElement, imageElement]);
    var anchorTag = AnchorElement();
    anchorTag.append(articleElement);
    anchorTag.href = '/article.html';
    anchorTag.id = "${article.id}";
    artlistElements.add(anchorTag);
  }
  document.body?.nodes.addAll(artlistElements);

  final clicks = document.getElementsByTagName('a');
  for (var click in clicks) {
    var newClick = click as Element;
    newClick.onClick.listen((event) {
      event.preventDefault();
      newClick.children;
    });
  }
}

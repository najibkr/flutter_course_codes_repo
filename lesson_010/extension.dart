void main() {
  String para =
      'Good evening sir, I love everything about evening. I like to go hiking in the evening. I want to spend time with my family in the evening. I usually drink coffee in the evening. In short, evening is all that  think about my love. ';
  var result = para.highLightWords('evening');
  print(result);
}

extension on String {
  String highLightWords(String query) {
    var splittedPara = this
        .split(' ')
        .map((e) => e.replaceAll('.', '').replaceAll(',', ''))
        .toList();
    var hightledFound = splittedPara.map((e) {
      if (e == 'evening') return "(${e.toUpperCase()})";
      return e;
    }).toList();
    return hightledFound.toString();
  }
}

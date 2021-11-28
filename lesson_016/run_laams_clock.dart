import 'dart:io';

void main() async {
  runLaamsClock();
}

void runLaamsClock() async {
  _printClockHear();
  streamCurrentTime().listen((event) {
    stdout.write("\u001B[1;35m${_formatTime(event)}\r");
  });
}

Stream<DateTime> streamCurrentTime() {
  return Stream.periodic(Duration(milliseconds: 1000), (_) {
    return DateTime.now();
  });
}

String _formatTime(DateTime time) {
  String minute = time.minute < 10 ? "0${time.minute}" : "${time.minute}";
  String second = time.second < 10 ? "0${time.second}" : "${time.second}";
  if (time.hour < 12) return "0${time.hour}:$minute:$second AM";
  int hour = time.hour % 12;
  String hourStr = hour < 10 ? "0$hour" : '$hour';
  return "$hourStr:$minute:$second PM";
}

void _printClockHear() {
  print('''
\u001B[33m--------------------------------------------
\u001B[1;33mLAAMS CLOCK
\u001B[33m--------------------------------------------

\u001B[1;34mCurrent Time is:
  ''');
}

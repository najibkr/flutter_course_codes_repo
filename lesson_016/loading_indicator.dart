import 'dart:io';

void main() {
  runLoadingIndicator();
}

void runLoadingIndicator() async {
  for (int percent = 0; percent <= 100; percent++) {
    await Future.delayed(Duration(milliseconds: 200));
    stdout.write('[${'#' * (percent ~/ 5)}] $percent %\r');
  }
}

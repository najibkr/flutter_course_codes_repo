void searchIndicator(bool exitLoop) {
  for (int dots = 0; dots <= 11; dots++) {
    if (exitLoop) break;
    if (dots == 10) {
      dots = 0;
    }
    print('Searching through the list ${'*' * dots}');
  }
}

import 'package:flutter/cupertino.dart';

class ChallangeController {
  final currentPageNotifier = ValueNotifier<int>(1);
  int get currentPage => currentPageNotifier.value;
  set currentPage(int value) => currentPageNotifier.value = value;

  int rightAnswer = 0;
}

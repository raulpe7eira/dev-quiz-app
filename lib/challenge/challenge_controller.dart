import 'package:flutter/cupertino.dart';

class ChallangeController {
  final currentPageNotifier = ValueNotifier<int>(0);
  int get currentPage => currentPageNotifier.value;
  set currentPage(int value) => currentPageNotifier.value = value;
}

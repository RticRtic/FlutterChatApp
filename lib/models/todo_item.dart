import 'package:flutter/foundation.dart';

class TodoItem {
  @required
  String? title;
  bool isChecked;

  TodoItem({this.title, this.isChecked = false});
}

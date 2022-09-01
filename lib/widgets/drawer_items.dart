import 'package:flutter/material.dart';
import 'package:todo_list_android_ios/models/todo_item.dart';

class Draweritems extends StatefulWidget {
  final Function addNewTodo;
  Draweritems(this.addNewTodo);
  @override
  State<Draweritems> createState() => _DraweritemsState();
}

class _DraweritemsState extends State<Draweritems> {
  final todoTitle = TextEditingController();
  List<TodoItem> todoTitles = [];

  void passEditText() {
    final todoTitleController = todoTitle.text;
    widget.addNewTodo(todoTitleController);
    print(todoTitleController);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          decoration: const InputDecoration(
            label: Text("Enter Todo"),
            border: OutlineInputBorder(),
          ),
          controller: todoTitle,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
        ),
        ElevatedButton(
          onPressed: () {
            passEditText();
          },
          child: const Text("Add Todo"),
        ),
      ],
    );
  }
}

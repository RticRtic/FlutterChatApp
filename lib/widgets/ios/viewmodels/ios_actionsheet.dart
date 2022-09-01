import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_list_android_ios/models/todo_item.dart';

class IosActionSheet extends StatefulWidget {
  @override
  State<IosActionSheet> createState() => _IosActionSheetState();
}

class _IosActionSheetState extends State<IosActionSheet> {
  final todoTitle = TextEditingController();
  List<TodoItem> todoTitles = [];
  String iosTextField = "";

  // void passEditText() {
  //   final todoTitleController = todoTitle.text;
  //   widget.addNewTodo(todoTitleController);
  //   print(todoTitleController);
  //   Navigator.of(context).pop();
  // }

  void showIosActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text('Edit Name'),
        message: CupertinoTextField(
          placeholder: "Name",
          placeholderStyle: const TextStyle(color: CupertinoColors.black),
          textAlign: TextAlign.center,
          decoration: BoxDecoration(
            border: Border.all(color: CupertinoColors.black),
            borderRadius: BorderRadius.circular(15),
          ),
          onChanged: (value) => setState(() {
            iosTextField = value;
          }),
          controller: todoTitle,
          onSubmitted: ((value) => print("Submitted $iosTextField")),
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            isDefaultAction: true,
            onPressed: () {
              print(iosTextField);
              Navigator.of(context).pop();
            },
            child: const Text(
              'Done',
              style: TextStyle(color: CupertinoColors.black),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      margin: EdgeInsets.only(bottom: 8),
      child: CupertinoButton(
        child: const Icon(
          CupertinoIcons.eyedropper,
          color: CupertinoColors.systemGrey,
        ),
        onPressed: () {
          showIosActionSheet(context);
        },
      ),
    );
  }
}

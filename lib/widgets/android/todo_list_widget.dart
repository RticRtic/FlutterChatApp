import 'package:flutter/material.dart';
import 'package:todo_list_android_ios/models/todo_item.dart';

class TodoListWidget extends StatefulWidget {
  List<TodoItem> titleList;
  TodoListWidget(this.titleList);

  @override
  State<TodoListWidget> createState() => _TodoListWidgetState();
}

class _TodoListWidgetState extends State<TodoListWidget> {
  void deleteTodo(index) {
    widget.titleList.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return widget.titleList.isNotEmpty
        ? Container(
            height: 600,
            width: 250,
            margin: const EdgeInsets.all(70.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(0.5),
            ),
            child: SizedBox(
              width: 300,
              height: 50,
              child: ListView.builder(
                itemCount: widget.titleList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    textColor: Colors.red.withOpacity(1),
                    title: Checkbox(
                      value: widget.titleList[index].isChecked,
                      onChanged: (bool? checked) {
                        setState(() {
                          widget.titleList[index].isChecked = checked!;
                        });
                      },
                    ),
                    leading: Text(widget.titleList[index].title!),
                    trailing: widget.titleList[index].isChecked
                        ? IconButton(
                            color: Colors.green,
                            onPressed: () {
                              if (widget.titleList[index].isChecked) {
                                setState(() {
                                  widget.titleList.removeAt(index);
                                });
                              }
                            },
                            icon: const Icon(Icons.delete),
                          )
                        : IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.delete),
                          ),
                  );
                },
              ),
            ),
          )
        : Container(
            padding: const EdgeInsets.only(bottom: 500),
            child: const Text(
              "Your Todos",
              style: TextStyle(
                  fontSize: 50.0,
                  color: Colors.red,
                  fontWeight: FontWeight.bold),
            ),
          );
  }
}

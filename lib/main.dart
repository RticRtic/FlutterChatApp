import 'package:flutter/material.dart';
import 'package:todo_list_android_ios/models/todo_item.dart';
import 'package:todo_list_android_ios/widgets/ios/ios_screen.dart';
import 'package:todo_list_android_ios/widgets/drawer_items.dart';
import 'package:todo_list_android_ios/widgets/android/todo_list_widget.dart';
import "dart:io";
import "package:flutter/cupertino.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: IosHomePage([]),
          );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TodoItem> todoList = [];

  void addTodo(String title) {
    final newTodo = TodoItem(title: title);
    setState(() {
      todoList.add(newTodo);
    });
  }

  void resetTodoList() {
    todoList = [];
  }

  // void showIosActionSheet(BuildContext context) {
  //   showCupertinoModalPopup<void>(
  //     context: context,
  //     builder: (BuildContext context) => CupertinoActionSheet(
  //       title: const Text('Add Todo'),
  //       message: CupertinoTextField(
  //         placeholder: "Todo",
  //         placeholderStyle: const TextStyle(color: CupertinoColors.black),
  //         textAlign: TextAlign.center,
  //         decoration: BoxDecoration(
  //           border: Border.all(color: CupertinoColors.black),
  //           borderRadius: BorderRadius.circular(15),
  //         ),
  //         onChanged: (value) => setState(() {
  //           iosTextField = value;
  //         }),
  //         onSubmitted: ((value) => print("Submitted $iosTextField")),
  //       ),
  //       actions: <CupertinoActionSheetAction>[
  //         CupertinoActionSheetAction(
  //           isDefaultAction: true,
  //           onPressed: () {
  //             Navigator.pop(context);
  //           },
  //           child: const Text(
  //             'Add',
  //             style: TextStyle(color: CupertinoColors.systemGreen),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 136, 113, 134),
            Color.fromARGB(126, 81, 113, 81),
            Color.fromARGB(255, 136, 113, 134)
          ],
        ),
      ),
      child: Scaffold(
        drawer: Drawer(
          child: Draweritems(addTodo),
        ),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          actions: [
            Row(
              children: [
                todoList.isNotEmpty
                    ? GestureDetector(
                        child: const Text("Delete all"),
                        onTap: () {
                          setState(() {
                            resetTodoList();
                          });
                        },
                      )
                    : const Text(""),
                todoList.isNotEmpty
                    ? const Icon(Icons.delete_forever)
                    : const Text(""),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                ),
              ],
            ),
          ],
          title: const Text("Todo Android"),
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: TodoListWidget(todoList),
        ),
      ),
    );
    // : CupertinoPageScaffold(
    //     navigationBar: CupertinoNavigationBar(
    //       backgroundColor: CupertinoColors.activeOrange.withOpacity(0.6),
    //       middle: const Text(
    //         "To do IOS",
    //         style:
    //             TextStyle(color: CupertinoColors.extraLightBackgroundGray),
    //       ),
    //       trailing: GestureDetector(
    //         onTap: () {},
    //         child: const Text(
    //           "Delete All",
    //           style: TextStyle(
    //               color: CupertinoColors.extraLightBackgroundGray),
    //         ),
    //       ),
    //     ),
    //     child: Container(
    //       decoration: const BoxDecoration(
    //         gradient: LinearGradient(
    //           colors: [
    //             Color.fromARGB(255, 136, 113, 134),
    //             Color.fromARGB(126, 81, 113, 81),
    //             Color.fromARGB(255, 136, 113, 134)
    //           ],
    //         ),
    //       ),
    //       child: IosTodoList(todoList),
    //     ),
    //   );

    // : CupertinoPageScaffold(
    //     navigationBar: CupertinoNavigationBar(
    //       middle: const Text("To Do"),
    //       trailing: GestureDetector(
    //         onTap: () {},
    //         child: const Text("Delete All"),
    //       ),
    //     ),
    //     child: SafeArea(child: ),

    // child: ListView(
    //   children: [
    //     Text(iosTextField),
    //     CupertinoButton(
    //       onPressed: () {
    //         showIosActionSheet(context);
    //       },
    //       // padding: const EdgeInsets.only(top: 350),
    //       child: const Text(
    //         "Add Todo",
    //         style: TextStyle(
    //             fontWeight: FontWeight.bold, color: Colors.black),
    //       ),
    //     ),
    //   ],
    // ),

    // navigationBar: CupertinoNavigationBar(
    //   middle: const Text(""),
    //   trailing: Row(
    //     mainAxisAlignment: MainAxisAlignment.end,
    //     children: [
    //       const Text(
    //         "Todo IOS",
    //         style: TextStyle(fontWeight: FontWeight.bold),
    //       ),
    //       const Padding(
    //         padding: EdgeInsets.only(left: 40),
    //       ),
    //       GestureDetector(
    //         child: const Text("Delete All"),
    //         onTap: () {},
    //       ),
    //       GestureDetector(
    //         child: const Icon(Icons.delete_forever),
    //         onTap: () {},
    //       ),
    //     ],
    //   ),
    //   backgroundColor: Colors.transparent,
    // ),
    // backgroundColor: Colors.transparent,
    // child: Container(
    //     decoration: const BoxDecoration(
    //       gradient: LinearGradient(
    //         colors: [
    //           Color.fromARGB(255, 136, 113, 134),
    //           Color.fromARGB(126, 81, 113, 81),
    //           Color.fromARGB(255, 136, 113, 134)
    //         ],
    //       ),
    //     ),
    //     child: Container(
    //         child: CupertinoButton(
    //       onPressed: () {},
    //       child: const Text("Add Todo"),
    //     ))),
  }
}

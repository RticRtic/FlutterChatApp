import 'package:flutter/material.dart';
import 'package:todo_list_android_ios/models/todo_item.dart';
import 'package:todo_list_android_ios/widgets/android/viewmodels/android_edit_profilepage.dart';
import 'package:todo_list_android_ios/widgets/android/viewmodels/android_profile.dart';
import 'package:todo_list_android_ios/screens/ios_screen.dart';
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
            home: IosHomePage(),
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

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: const Text("BatmanPic"),
    );
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      drawer: Drawer(
        child: Draweritems(),
      ),
      appBar: AppBar(
        title: const Text("Profilepage Android"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 5.0),
                ),
                Container(
                  height: 70,
                  width: 70,
                  padding: const EdgeInsets.only(top: 4),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 20.0,
                          spreadRadius: 2.0),
                      BoxShadow(
                          color: CupertinoColors.systemGrey4,
                          offset: Offset(-4.0, -4.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0),
                    ],
                  ),
                  child: CircleAvatar(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                          "https://static.wikia.nocookie.net/multiversus/images/6/65/Batman_Profile_Icon.png/revision/latest?cb=20220802200801"),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 130.0),
                        ),
                        Container(
                          height: 50,
                          width: 170,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0),
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0),
                            ],
                          ),
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              padding: const EdgeInsets.only(right: 22.0),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      AndroidEditProfilePage(),
                                ),
                              );
                            },
                            icon: const Icon(Icons.edit),
                            label: const Text(
                              "Edit Profile",
                              style: TextStyle(color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        isLandscape
                            ? Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 5.0),
                                  ),
                                  Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 100),
                                      ),
                                      Container(
                                        height: (MediaQuery.of(context)
                                                    .size
                                                    .height -
                                                appBar.preferredSize.height -
                                                MediaQuery.of(context)
                                                    .padding
                                                    .top) *
                                            0.7,
                                        width: (MediaQuery.of(context)
                                                    .size
                                                    .height -
                                                appBar.preferredSize.height -
                                                MediaQuery.of(context)
                                                    .padding
                                                    .top) *
                                            0.8,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.grey,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: Image.network(
                                                "https://i.pinimg.com/280x280_RS/66/6d/c2/666dc2534961774fd151453879157c26.jpg"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            : Container(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                    ),
                    Text(
                      "Christian Bale",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25.0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                    ),
                    Icon(
                      Icons.done_all_rounded,
                      color: Colors.blue,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 2.0),
                ),
                Column(
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 5.0),
                        ),
                        Text(
                          "@Villian Hunter",
                          style: TextStyle(fontSize: 15.0, color: Colors.grey),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 20.0),
                        ),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 5.0),
                            ),
                            Text("The Dark Knight Of Gotham"),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 2.0),
                            ),
                            const Icon(
                              Icons.location_city,
                              color: Colors.grey,
                            ),
                            const Text(
                              "Gotham, NY",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15.0),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 50.0),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(
                                  Icons.wifi,
                                  color: Colors.grey,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                ),
                                Text(
                                  "www.thebatman.com",
                                  style: TextStyle(
                                      color: CupertinoColors.systemBlue),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 20.0),
                            ),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                ),
                                const Text(
                                  "800",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 3.0),
                                ),
                                const Text(
                                  "Following",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(left: 67),
                                    ),
                                    Icon(
                                      Icons.follow_the_signs,
                                      color: Colors.grey,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5.0),
                                    ),
                                    Text(
                                      "4.9 million",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5.0),
                                    ),
                                    Text(
                                      "Followers",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              color: CupertinoColors.black,
            ),
            Column(
              children: List.generate(
                8,
                (index) => AndroidProfile(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.read_more),
      ),
    );
  }
}

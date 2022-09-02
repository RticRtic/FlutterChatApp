import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_android_ios/models/todo_item.dart';
import 'package:todo_list_android_ios/screens/android_tweets_screen.dart';
import 'package:todo_list_android_ios/widgets/android/viewmodels/android_edit_profilepage.dart';
import 'package:todo_list_android_ios/widgets/android/viewmodels/android_tweets_modalSheet.dart';

class Draweritems extends StatefulWidget {
  // final Function addNewTodo;
  // Draweritems(this.addNewTodo);
  @override
  State<Draweritems> createState() => _DraweritemsState();
}

class _DraweritemsState extends State<Draweritems> {
  final todoTitle = TextEditingController();
  // List<TodoItem> todoTitles = [];
  final appBar = AppBar(
    title: const Text("BatmanPic"),
  );

  // void passEditText() {
  //   final todoTitleController = todoTitle.text;
  //   widget.addNewTodo(todoTitleController);
  //   print(todoTitleController);
  //   Navigator.of(context).pop();
  // }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 150),
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
            ],
          ),
          Column(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                  ),
                  Text(
                    "Christian Bale",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5.0),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                  ),
                  Text(
                    "@Villian Hunter",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40.0),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 25.0),
                  ),
                  Icon(
                    Icons.person,
                  ),
                  Text(
                    "800",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                  ),
                  Text(
                    "Following",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                  ),
                  Icon(Icons.people),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                  ),
                  Text(
                    "4.9 mill",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Followers",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                  ),
                  GestureDetector(
                    child: const Icon(Icons.person_outlined),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              AndroidEditProfilePage(),
                        ),
                      );
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                  ),
                  GestureDetector(
                    child: const Text(
                      "Profile",
                      style: TextStyle(color: Colors.grey),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              AndroidEditProfilePage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                  ),
                  GestureDetector(
                    child: const Icon(Icons.list),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              AndroidTweetScreenHomePage(),
                        ),
                      );
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                  ),
                  GestureDetector(
                    child: const Text(
                      "Tweets",
                      style: TextStyle(color: Colors.grey),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              AndroidTweetScreenHomePage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                  ),
                  Icon(Icons.bookmark_border),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                  ),
                  Text(
                    "Bookmarks",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                  ),
                  Icon(Icons.arrow_circle_left_outlined),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                  ),
                  Text(
                    "Logout",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const Divider(
                color: Colors.black,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5),
              ),
              SizedBox(
                height: (MediaQuery.of(context).size.height -
                        appBar.preferredSize.height -
                        MediaQuery.of(context).padding.top) *
                    0.3,
                width: (MediaQuery.of(context).size.height -
                        appBar.preferredSize.height -
                        MediaQuery.of(context).padding.top) *
                    0.4,
                child: CircleAvatar(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                        "https://static.wikia.nocookie.net/multiversus/images/6/65/Batman_Profile_Icon.png/revision/latest?cb=20220802200801"),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

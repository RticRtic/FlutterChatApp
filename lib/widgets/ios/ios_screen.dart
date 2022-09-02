import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_android_ios/models/todo_item.dart';
import 'package:todo_list_android_ios/widgets/ios/ios_edit_profilepage.dart';
import 'package:todo_list_android_ios/widgets/ios/viewmodels/ios_list_item.dart';

// class MyIosApp extends StatelessWidget {
//   const MyIosApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(
//       home: IosHomePage([]),
//     );
//   }
// }

class IosHomePage extends StatefulWidget {
  List<TodoItem> titleList;
  IosHomePage(this.titleList);
  @override
  State<IosHomePage> createState() => _IosHomePageState();
}

class _IosHomePageState extends State<IosHomePage> {
  final appBar = AppBar(
    title: const Text("BatmanPic"),
  );
  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Pofile Page IOS"),
        backgroundColor: CupertinoColors.systemBlue,
      ),
      child: SafeArea(
        child: SingleChildScrollView(
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
                    padding: EdgeInsets.only(top: 4),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: CupertinoColors.systemGrey,
                            offset: Offset(5.0, 5.0),
                            blurRadius: 20.0,
                            spreadRadius: 2.0),
                        BoxShadow(
                            color: CupertinoColors.systemGrey4,
                            offset: Offset(-8.0, -8.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0),
                      ],
                    ),
                    child: CircleAvatar(
                      backgroundColor: CupertinoColors.inactiveGray,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
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
                                    color: CupertinoColors.systemGrey,
                                    offset: Offset(5.0, 5.0),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0),
                                BoxShadow(
                                    color: CupertinoColors.systemGrey4,
                                    offset: Offset(2.0, 1.0),
                                    blurRadius: 0.0,
                                    spreadRadius: 0.0),
                              ],
                            ),
                            child: CupertinoButton(
                              color: CupertinoColors.extraLightBackgroundGray,
                              child: const Text(
                                "Edit",
                                style: TextStyle(
                                    color: CupertinoColors.black, fontSize: 14),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(
                                  CupertinoPageRoute(
                                    builder: (BuildContext context) =>
                                        const IosEditProfilePage(),
                                  ),
                                );
                              },
                            ),
                          ),
                          isLandscape
                              ? Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10.0),
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
                                            backgroundColor:
                                                CupertinoColors.inactiveGray,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(150),
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
                        "Christian Bayle",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25.0),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                      ),
                      Icon(Icons.done_all_rounded),
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
                            style: TextStyle(
                                fontSize: 15.0,
                                color: CupertinoColors.systemGrey),
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
                              const Icon(
                                Icons.location_pin,
                                color: CupertinoColors.systemGrey,
                              ),
                              const Text(
                                "Gotham, NY",
                                style: TextStyle(
                                    color: CupertinoColors.systemGrey,
                                    fontSize: 15.0),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 50.0),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Icon(
                                    CupertinoIcons.wifi,
                                    color: CupertinoColors.systemGrey,
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 3.0),
                                  ),
                                  const Text(
                                    "Following",
                                    style: TextStyle(
                                        color: CupertinoColors.systemGrey),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(left: 45),
                                      ),
                                      Icon(
                                        Icons.follow_the_signs,
                                        color: CupertinoColors.systemGrey,
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
                                        style: TextStyle(
                                            color: CupertinoColors.systemGrey),
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
                  (index) => IosProfile(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

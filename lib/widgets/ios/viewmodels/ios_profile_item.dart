import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_list_android_ios/widgets/ios/viewmodels/ios_actionsheet.dart';

class IosProfileItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 190,
                width: 200,
                padding: const EdgeInsets.only(top: 10),
                child: CircleAvatar(
                  backgroundColor: CupertinoColors.inactiveGray,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: GestureDetector(
                      child: Image.network(
                        "https://static.wikia.nocookie.net/multiversus/images/6/65/Batman_Profile_Icon.png/revision/latest?cb=20220802200801",
                      ),
                      onTap: () {
                        print("Change Profile Picture");
                      },
                    ),
                  ),
                ),
              ),
              const Text("Photo"),
              const Padding(
                padding: EdgeInsets.only(left: 5),
              ),
              const Icon(
                CupertinoIcons.settings,
                color: CupertinoColors.systemGrey,
              )
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                  ),
                  const Text(
                    "Profile name:",
                    style: TextStyle(color: CupertinoColors.systemGrey),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                  ),
                  const Text(
                    "Christian Bale",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 5,
                    ),
                  ),
                  GestureDetector(
                    child: GestureDetector(
                      child: IosActionSheet(),
                    ),
                    onTap: () {
                      print("Change TagName");
                    },
                  ),
                ],
              ),
              const Divider(
                color: Colors.black,
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 5.0),
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                      ),
                      const Text(
                        "Tag Name:",
                        style: TextStyle(color: CupertinoColors.systemGrey),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 25.0),
                      ),
                      const Text("@Villian Hunter"),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 50),
                      ),
                      GestureDetector(
                        child: GestureDetector(
                          child: IosActionSheet(),
                        ),
                        onTap: () {
                          print("Change TagName");
                        },
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
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
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  const Text(
                    "Location:",
                    style: TextStyle(color: CupertinoColors.systemGrey),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 210),
                  ),
                  GestureDetector(
                    child: GestureDetector(
                      child: IosActionSheet(),
                    ),
                    onTap: () {
                      print("Change TagName");
                    },
                  ),
                ],
              ),
              const Divider(
                color: Colors.black,
              ),
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5.0),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  const Text(
                    "Website:",
                    style: TextStyle(color: CupertinoColors.systemGrey),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 210),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                  ),
                  GestureDetector(
                    child: GestureDetector(
                      child: IosActionSheet(),
                    ),
                    onTap: () {
                      print("Change TagName");
                    },
                  ),
                ],
              ),
              const Divider(
                color: Colors.black,
              ),
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5.0),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  const Text(
                    "Bio:",
                    style: TextStyle(color: CupertinoColors.systemGrey),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 250),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                  ),
                  GestureDetector(
                    child: GestureDetector(
                      child: IosActionSheet(),
                    ),
                    onTap: () {
                      print("Change TagName");
                    },
                  ),
                ],
              ),
              const Divider(
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

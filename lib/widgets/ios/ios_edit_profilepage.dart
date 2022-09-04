import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_list_android_ios/screens/iosScreens/ios_tweetScreen.dart';
import 'package:todo_list_android_ios/widgets/ios/viewmodels/ios_profile_item.dart';

class IosEditProfilePage extends StatelessWidget {
  const IosEditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: Material(
            color: CupertinoColors.systemBlue,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                CupertinoIcons.arrow_left,
                color: CupertinoColors.white,
              ),
            ),
          ),
          middle: const Text("IOS Edit Profile Page"),
          backgroundColor: CupertinoColors.systemBlue,
        ),
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: GestureDetector(
                    child: const Icon(CupertinoIcons.person),
                    onTap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                IosEditProfilePage()),
                      );
                    },
                  ),
                  label: "ProfileAccount"),
              BottomNavigationBarItem(
                  icon: GestureDetector(
                    child:
                        const Icon(CupertinoIcons.list_bullet_below_rectangle),
                    onTap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                IosTweetScreen()),
                      );
                    },
                  ),
                  label: "Tweets"),
              BottomNavigationBarItem(
                  icon: GestureDetector(
                    child: const Icon(CupertinoIcons.settings),
                    onTap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                IosEditProfilePage()),
                      );
                    },
                  ),
                  label: "Settings"),
              const BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.arrow_left_circle,
                  ),
                  label: "Logout"),
            ],
          ),
          tabBuilder: (BuildContext context, index) {
            return CupertinoTabView(
              builder: (BuildContext context) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      IosProfileItem(),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

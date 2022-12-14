import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_list_android_ios/screens/iosScreens/ios_screen.dart';
import 'package:todo_list_android_ios/widgets/ios/viewmodels/ios_spiderman_profile_item.dart';
import 'package:todo_list_android_ios/widgets/ios/viewmodels/ios_wonderwoman_profile_item.dart';

import '../../widgets/ios/viewmodels/ios_list_item.dart';

class IosTweetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: IosTweetHomeScreen(),
    );
  }
}

class IosTweetHomeScreen extends StatefulWidget {
  const IosTweetHomeScreen({super.key});

  @override
  State<IosTweetHomeScreen> createState() => _IosTweetHomeScreenState();
}

class _IosTweetHomeScreenState extends State<IosTweetHomeScreen> {
  var isFavorite = false;

  void toggleIsFavorite() {
    setState(() {
      if (isFavorite) {
        isFavorite = false;
      } else {
        isFavorite = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text("Latest Tweets"),
        leading: Material(
          color: CupertinoColors.systemBlue,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (BuildContext context) => MyIosApp(),
                ),
              );
            },
            icon: GestureDetector(
              child: const Icon(Icons.arrow_back_ios_outlined),
            ),
            color: Colors.white,
          ),
        ),
        backgroundColor: CupertinoColors.systemBlue,
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 5.0),
        child: Column(
          children: [
            Column(
              children: List.generate(
                3,
                (index) => IosProfile(),
              ),
            ),
            Column(
              children: List.generate(
                3,
                (index) => IosSpidermanProfileItem(),
              ),
            ),
            Column(
              children: List.generate(
                3,
                (index) => const IosWonderwomanProfileItem(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

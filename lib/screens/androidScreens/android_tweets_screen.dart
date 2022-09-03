import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_list_android_ios/widgets/ios/viewmodels/ios_list_item.dart';
import 'package:todo_list_android_ios/widgets/ios/viewmodels/ios_spiderman_profile_item.dart';
import 'package:todo_list_android_ios/widgets/ios/viewmodels/ios_wonderwoman_profile_item.dart';

class AndroidTweetsScreen extends StatelessWidget {
  const AndroidTweetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AndroidTweetScreenHomePage(),
    );
  }
}

class AndroidTweetScreenHomePage extends StatefulWidget {
  @override
  State<AndroidTweetScreenHomePage> createState() =>
      _AndroidTweetScreenHomePageState();
}

class _AndroidTweetScreenHomePageState
    extends State<AndroidTweetScreenHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Android Tweets"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: List.generate(3, (index) => IosSpidermanProfileItem()),
            ),
            Column(
              children: List.generate(3, (index) => IosProfile()),
            ),
            Column(
              children:
                  List.generate(3, (index) => IosWonderwomanProfileItem()),
            ),
          ],
        ),
      ),
    );
  }
}

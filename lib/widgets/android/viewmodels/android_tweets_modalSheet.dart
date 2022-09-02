import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_list_android_ios/widgets/ios/viewmodels/ios_list_item.dart';
import 'package:todo_list_android_ios/widgets/ios/viewmodels/ios_spiderman_profile_item.dart';
import 'package:todo_list_android_ios/widgets/ios/viewmodels/ios_wonderwoman_profile_item.dart';

class AndroidTweetsModalsheet extends StatefulWidget {
  @override
  State<AndroidTweetsModalsheet> createState() =>
      _AndroidTweetsModalsheetState();
}

class _AndroidTweetsModalsheetState extends State<AndroidTweetsModalsheet> {
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
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              Column(
                children: List.generate(
                  3,
                  (index) => IosSpidermanProfileItem(),
                ),
              ),
            ],
          ),
          Column(
            children: List.generate(
              3,
              (index) => IosWonderwomanProfileItem(),
            ),
          ),
          Column(
            children: List.generate(
              3,
              (index) => IosProfile(),
            ),
          ),
        ],
      ),
    );
  }
}

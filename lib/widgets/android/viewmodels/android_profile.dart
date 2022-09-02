import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AndroidProfile extends StatefulWidget {
  @override
  State<AndroidProfile> createState() => _AndroidProfileState();
}

class _AndroidProfileState extends State<AndroidProfile> {
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
    return Column(
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 5.0),
            ),
            Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(50.0),
                ),
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
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 60.0),
                    ),
                    Text(
                      "Christian Bale",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                    ),
                    Text(
                      "@Villian Hunter",
                      style: TextStyle(fontSize: 10.0, color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                        ),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                            ),
                            Text("'Hiding in the dark and fuck u up'"),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.message_sharp,
                  color: CupertinoColors.activeBlue,
                ),
                const Icon(
                  Icons.refresh,
                  color: CupertinoColors.systemGrey,
                ),
                GestureDetector(
                  child: isFavorite
                      ? const Icon(
                          Icons.favorite,
                          color: CupertinoColors.systemRed,
                        )
                      : GestureDetector(
                          child: const Icon(
                            CupertinoIcons.heart,
                            color: CupertinoColors.systemGrey,
                          ),
                        ),
                  onTap: () {
                    toggleIsFavorite();
                  },
                ),
                const Icon(
                  Icons.bookmark_border,
                  color: CupertinoColors.systemGrey,
                ),
              ],
            ),
          ],
        ),
        const Divider(
          color: CupertinoColors.black,
        )
      ],
    );
  }
}

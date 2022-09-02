import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class IosWonderwomanProfileItem extends StatefulWidget {
  const IosWonderwomanProfileItem({super.key});

  @override
  State<IosWonderwomanProfileItem> createState() =>
      _IosWonderwomanProfileItemState();
}

class _IosWonderwomanProfileItemState extends State<IosWonderwomanProfileItem> {
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
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                      "https://www.squiggles.com.sa/web/image/product.product/23665/image_256/%5BFP-DCCPP0004%5D%20Funko%20Pop%21%20Pin%20DC%20Comics:Wonder%20Woman?unique=02336bd"),
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
                      "Gal Gadot",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                    ),
                    Text(
                      "@Strong Gal",
                      style: TextStyle(
                          fontSize: 10.0, color: CupertinoColors.systemGrey),
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
                            Text("'Fighting does not make you a hero'"),
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
                  CupertinoIcons.mail,
                  color: CupertinoColors.systemGrey,
                ),
                const Icon(
                  CupertinoIcons.refresh,
                  color: CupertinoColors.systemGreen,
                ),
                GestureDetector(
                  child: isFavorite
                      ? const Icon(
                          CupertinoIcons.heart_fill,
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
                  CupertinoIcons.bookmark,
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

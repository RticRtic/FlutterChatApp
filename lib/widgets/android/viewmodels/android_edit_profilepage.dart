import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AndroidEditProfilePage extends StatefulWidget {
  @override
  State<AndroidEditProfilePage> createState() => _AndroidEditProfilePageState();
}

class _AndroidEditProfilePageState extends State<AndroidEditProfilePage> {
  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Text("Save"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 100),
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
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                ),
                const Text("Edit Photo"),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                ),
                const Icon(Icons.change_circle_outlined),
                isLandscape
                    ? Column(
                        children: [
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 300),
                              ),
                              const Text(
                                "Recent Photos",
                                style: TextStyle(color: Colors.grey),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 5),
                              ),
                              CircleAvatar(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                      "https://static.wikia.nocookie.net/multiversus/images/6/65/Batman_Profile_Icon.png/revision/latest?cb=20220802200801"),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                              ),
                              CircleAvatar(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                      "https://static.wikia.nocookie.net/multiversus/images/6/65/Batman_Profile_Icon.png/revision/latest?cb=20220802200801"),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                              ),
                              CircleAvatar(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                      "https://static.wikia.nocookie.net/multiversus/images/6/65/Batman_Profile_Icon.png/revision/latest?cb=20220802200801"),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                              ),
                              CircleAvatar(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                      "https://static.wikia.nocookie.net/multiversus/images/6/65/Batman_Profile_Icon.png/revision/latest?cb=20220802200801"),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    : Container(),
              ],
            ),
            const Divider(
              color: Colors.black,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5),
            ),
            Column(
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 100),
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
                          child: Container(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                    ),
                    const Text("Edit Header"),
                    const Padding(
                      padding: EdgeInsets.only(left: 5),
                    ),
                    const Icon(Icons.change_circle_outlined),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                ),
                const Divider(
                  color: Colors.black,
                ),
                isLandscape
                    ? const SizedBox(
                        width: 750,
                        child: TextField(
                          decoration: InputDecoration(
                            label: Text("Name"),
                            border: UnderlineInputBorder(),
                          ),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    : const SizedBox(
                        width: 350,
                        child: TextField(
                          decoration: InputDecoration(
                            label: Text("Name"),
                            border: UnderlineInputBorder(),
                          ),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                isLandscape
                    ? const SizedBox(
                        width: 750,
                        child: TextField(
                          decoration: InputDecoration(
                            label: Text("Location"),
                            border: UnderlineInputBorder(),
                          ),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    : const SizedBox(
                        width: 350,
                        child: TextField(
                          decoration: InputDecoration(
                            label: Text("Location"),
                            border: UnderlineInputBorder(),
                          ),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                isLandscape
                    ? const SizedBox(
                        width: 750,
                        child: TextField(
                          decoration: InputDecoration(
                            label: Text("Website"),
                            border: UnderlineInputBorder(),
                          ),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    : const SizedBox(
                        width: 350,
                        child: TextField(
                          decoration: InputDecoration(
                            label: Text("Website"),
                            border: UnderlineInputBorder(),
                          ),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                isLandscape
                    ? const SizedBox(
                        width: 750,
                        child: TextField(
                          decoration: InputDecoration(
                            label: Text("Bio"),
                            border: UnderlineInputBorder(),
                          ),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    : const SizedBox(
                        width: 350,
                        child: TextField(
                          decoration: InputDecoration(
                            label: Text("Bio"),
                            border: UnderlineInputBorder(),
                          ),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

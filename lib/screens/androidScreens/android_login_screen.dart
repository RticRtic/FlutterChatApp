import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_list_android_ios/main.dart';
import 'package:todo_list_android_ios/screens/androidScreens/android_signup_screen.dart';

class AndroidLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AndroidLoginHompageScreen(),
    );
  }
}

class AndroidLoginHompageScreen extends StatefulWidget {
  @override
  State<AndroidLoginHompageScreen> createState() =>
      _AndroidLoginHompageScreenState();
}

class _AndroidLoginHompageScreenState extends State<AndroidLoginHompageScreen> {
  bool hideTextFieldPassword = true;

  String password = "";

  void toggleHideTextFieldPassword() {
    setState(() {
      if (hideTextFieldPassword) {
        hideTextFieldPassword = false;
      } else {
        hideTextFieldPassword = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  //!Transparent Box to make good alignment.
                  height: 55,
                  width: 55,
                  //!----------------------
                ),
                Container(
                  height: 55,
                  width: 55,
                  margin: const EdgeInsets.only(bottom: 10.0),
                  padding: const EdgeInsets.only(top: 4),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                  child: CircleAvatar(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                          "https://static.macupdate.com/products/60027/l/fitness-hero-logo.png?v=1568338044"),
                    ),
                  ),
                ),
                GestureDetector(
                  child: const Text("Log in"),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => HomePage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isLandscape
                ? const Padding(
                    padding: EdgeInsets.only(top: 10),
                  )
                : const Padding(
                    padding: EdgeInsets.only(top: 120),
                  ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Phone, Email or Username ',
                        hintText: '',
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.mail,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: !hideTextFieldPassword,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            hideTextFieldPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              hideTextFieldPassword = !hideTextFieldPassword;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                GestureDetector(
                  child: const Text(
                    "Forget Password?",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                const Text("Or"),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                const Text(
                  "Login With",
                  style: TextStyle(color: Colors.white),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          margin: const EdgeInsets.only(bottom: 10.0),
                          padding: const EdgeInsets.only(top: 4),
                          decoration: const BoxDecoration(),
                          child: CircleAvatar(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: GestureDetector(
                                child: Image.network(
                                    "https://cdn.icon-icons.com/icons2/2108/PNG/512/google_icon_130924.png"),
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                        ),
                        Container(
                          height: 55,
                          width: 55,
                          margin: const EdgeInsets.only(bottom: 10.0),
                          padding: const EdgeInsets.only(top: 4),
                          decoration: const BoxDecoration(),
                          child: CircleAvatar(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: GestureDetector(
                                child: Image.network(
                                    "https://i.pinimg.com/736x/75/e6/2b/75e62b8aac17c75a4f4514a6c2aa4093.jpg"),
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                        ),
                        Container(
                          height: 55,
                          width: 55,
                          margin: const EdgeInsets.only(bottom: 10.0),
                          padding: const EdgeInsets.only(top: 4),
                          decoration: const BoxDecoration(),
                          child: CircleAvatar(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: GestureDetector(
                                child: Image.network(
                                    "https://norrkopingsdanscenter.se/wp-content/uploads/2012/12/facebook-logo.png"),
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 80),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "New To Heroes?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                ),
                GestureDetector(
                  child: Container(
                    height: 55,
                    width: 55,
                    margin: const EdgeInsets.only(bottom: 5.0),
                    padding: const EdgeInsets.only(top: 4),
                    decoration: const BoxDecoration(),
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: ClipRRect(
                        child: Text(
                          "Sign Up!",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            AndroidSignUppScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

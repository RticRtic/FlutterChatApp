import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_android_ios/main.dart';
import 'package:todo_list_android_ios/screens/androidScreens/android_login_screen.dart';

class AndroidSignUppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AndroidSignUppScreenHomePage(),
    );
  }
}

class AndroidSignUppScreenHomePage extends StatefulWidget {
  @override
  State<AndroidSignUppScreenHomePage> createState() =>
      _AndroidSignUppScreenState();
}

class _AndroidSignUppScreenState extends State<AndroidSignUppScreenHomePage> {
  bool hideTextFieldPassword = true;
  bool hideTextFieldVerifyPassword = true;
  bool verifyPasswordCheck = false;
  String verifyPassWordCheckText = "";
  bool passwordCheck = false;
  String passwordCheckText = "";

  bool usernameCheck = false;
  String usernameCheckText = "";
  bool emailCheck = false;
  String emailCheckText = "";
  bool phoneNumberCheck = false;
  String phoneNumberCheckText = "";

  bool allTexfieldsChecked = false;

  final username = TextEditingController();
  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  final verifyPassword = TextEditingController();

  void toggleHideTextFieldPassword() {
    setState(() {
      if (hideTextFieldPassword) {
        hideTextFieldPassword = false;
      } else {
        hideTextFieldPassword = true;
      }
    });
  }

  void toggleHideTextFieldVerifyPassword() {
    setState(() {
      if (hideTextFieldVerifyPassword) {
        hideTextFieldVerifyPassword = false;
      } else {
        hideTextFieldVerifyPassword = true;
      }
    });
  }

  // void setUserLoginData() {
  //   final usernameText = username.text;
  //   final emailText = email.text;
  //   final phoneNumberText = phoneNumber.text;
  //   final phoneNumberToInt = int.parse(phoneNumberText);
  //   final passwordText = password.text;
  //   final verifyPasswordText = verifyPassword.text;
  // }

  void checkTextFields(context) {
    if (usernameCheckText != "") {
      usernameCheck = true;
      print(usernameCheck);
    } else {
      usernameCheck = false;
      print(usernameCheck);
    }
  }

  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance
  //       .addPostFrameCallback((_) => checkTextFields(context));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 55,
                  width: 55,
                  child: GestureDetector(
                    child: const Icon(Icons.arrow_back),
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              AndroidLoginScreen(),
                        ),
                      );
                    },
                  ),
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
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Username ',
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.person,
                            color: usernameCheck ? Colors.green : Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      controller: username,
                      onChanged: (value) => setState(() {
                        usernameCheckText = value;
                        if (usernameCheckText != "") {
                          usernameCheck = true;
                        } else {
                          usernameCheck = false;
                          allTexfieldsChecked = false;
                        }
                      }),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Email',
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.mail,
                            color: emailCheck ? Colors.green : Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      controller: email,
                      onChanged: (value) => setState(() {
                        emailCheckText = value;
                        if (emailCheckText != "") {
                          emailCheck = true;
                        } else {
                          emailCheck = false;
                          allTexfieldsChecked = false;
                        }
                      }),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Phonenumber',
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.phone_android,
                            color:
                                phoneNumberCheck ? Colors.green : Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      controller: phoneNumber,
                      onChanged: (value) => setState(() {
                        phoneNumberCheckText = value;
                        if (phoneNumberCheckText != "") {
                          phoneNumberCheck = true;
                        } else {
                          phoneNumberCheck = false;
                          allTexfieldsChecked = false;
                        }
                      }),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50.0),
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
                            color: passwordCheck ? Colors.green : Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              hideTextFieldPassword = !hideTextFieldPassword;
                            });
                          },
                        ),
                      ),
                      controller: password,
                      onChanged: (value) => setState(() {
                        passwordCheckText = value;
                        if (passwordCheckText != "") {
                          passwordCheck = true;
                        } else {
                          passwordCheck = false;
                          allTexfieldsChecked = false;
                        }
                      }),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: !hideTextFieldVerifyPassword,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Verify Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            hideTextFieldVerifyPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: verifyPasswordCheck
                                ? Colors.green
                                : Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              hideTextFieldVerifyPassword =
                                  !hideTextFieldVerifyPassword;
                            });
                          },
                        ),
                      ),
                      controller: verifyPassword,
                      onChanged: (value) => setState(() {
                        verifyPassWordCheckText = value;
                        if (verifyPassWordCheckText != "" &&
                            verifyPassWordCheckText == passwordCheckText &&
                            usernameCheck == true &&
                            emailCheck == true &&
                            phoneNumberCheck == true &&
                            passwordCheck == true) {
                          verifyPasswordCheck = true;
                          allTexfieldsChecked = true;
                        } else {
                          verifyPasswordCheck = false;
                          allTexfieldsChecked = false;
                        }
                      }),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  allTexfieldsChecked
                      ? Container(
                          height: 70,
                          width: 60,
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
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          HomePage(),
                                    ),
                                  );
                                },
                                icon: const Icon(Icons.thumb_up),
                              ),
                            ),
                          ),
                        )
                      : Column(
                          // children: [
                          //   Text("usernamecheck: $usernameCheck"),
                          //   Text("usernamecheck: $emailCheck"),
                          //   Text("usernamecheck: $phoneNumberCheck"),
                          //   Text("usernamecheck: $passwordCheck"),
                          //   Text("usernamecheck: $verifyPasswordCheck"),
                          //   Divider(color: Colors.black),
                          //   Padding(
                          //     padding: EdgeInsets.only(top: 10.0),
                          //   ),
                          //   Text("allCheckFields: $allTexfieldsChecked")
                          // ],
                          ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

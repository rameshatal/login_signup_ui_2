import 'package:flutter/material.dart';
import 'package:login_signup_ui_2/app_rounded_rutton.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff434856),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 61,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21),
                child: Row(
                  children: [
                    Text(
                      "New\nAccount",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100, top: 40),
                      child: Text(
                        "1/2\nSTAPES",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 51,
                      child: CircleAvatar(
                          backgroundColor: Color(0xff434856),
                          radius: 45,
                          child: Icon(
                            Icons.link_rounded,
                            size: 35,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Upload a profile picture\nopportunity",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 21,
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter Email",
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(
                              Icons.person,
                            ),
                            border: InputBorder.none)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 1.5,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter Email",
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(Icons.lock),
                            border: InputBorder.none)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 1.5,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    AppRoundedButton(
                        onTap: () {},
                        buttonColor: Color(0xff21242C),
                        textColor: Colors.white,
                        title: "Log In"),
                    SizedBox(
                      height: 21,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Not the first time here? Sign up.",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

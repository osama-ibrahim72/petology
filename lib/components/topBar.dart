import 'package:flutter/material.dart';
import 'package:petology/components/textButton.dart';
import 'package:petology/screens/aboutUs.dart';
import 'package:petology/screens/categories.dart';
import 'package:petology/screens/login.dart';
import 'package:petology/screens/request.dart';
import 'package:petology/screens/services.dart';
import 'package:petology/screens/signIn.dart';

class topBar extends StatefulWidget {
  final double width;
  final double height;
  final bool aboutBool;
  final bool categoriesBool;
  final bool servicesBool;
  final bool requestBool;
  final BuildContext context;
  final bool signInChoosen, loginChoosen;
  const topBar(
      {Key? key,
      required this.width,
      required this.height,
      required this.aboutBool,
      required this.categoriesBool,
      required this.servicesBool,
      required this.requestBool,
      required this.context,
      required this.signInChoosen,
      required this.loginChoosen})
      : super(key: key);

  @override
  State<topBar> createState() => _topBarState();
}

class _topBarState extends State<topBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height / 10,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF664638),
              Color(0xFF180701),
            ]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Center(
              child: Image.asset(
                "assets/logo.png",
                width: widget.width / 8,
              ),
            ),
            width: widget.width / 4,
          ),
          Column(
            children: [
              Container(
                width: widget.width / 2,
                height: widget.height / 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    textButton(widget.height, 'About us', widget.aboutBool,
                        aboutUs(), context),
                    textButton(widget.height, 'Categories',
                        widget.categoriesBool, categories(), context),
                    textButton(widget.height, 'Services', widget.servicesBool,
                        services(), context),
                    textButton(widget.height, 'Request', widget.requestBool,
                        request(), context),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: widget.width / 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => signIn()));
                  },
                  child: Container(
                      width: 100,
                      height: 40,
                      child: Center(
                          child: Text(
                        'Sign up',
                        style: TextStyle(
                            color: widget.signInChoosen
                                ? Colors.black
                                : Color(0xFFC9C9C9)),
                      )),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          border:
                              Border.all(width: 2, color: Color(0xFF707070)),
                          color: widget.signInChoosen
                              ? Colors.white
                              : Colors.transparent)),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()));
                  },
                  child: Container(
                      width: 100,
                      height: 40,
                      child: Center(
                          child: Text(
                        'Login',
                        style: TextStyle(
                            color: widget.loginChoosen
                                ? Colors.black
                                : Color(0xFFC9C9C9)),
                      )),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          border:
                              Border.all(width: 2, color: Color(0xFF707070)),
                          color: widget.loginChoosen
                              ? Colors.white
                              : Colors.transparent)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

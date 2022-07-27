import 'package:flutter/material.dart';
import 'package:petology/components/topBar.dart';

class services extends StatefulWidget {
  const services({Key? key}) : super(key: key);

  @override
  State<services> createState() => _servicesState();
}

class _servicesState extends State<services> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: ListView(
          children: [
            topBar(width: width, height: height, aboutBool: false, categoriesBool: false, servicesBool: true, requestBool: false, context: context,signInChoosen: false,loginChoosen: false),
            Container(
              height: height/4,
              width: width,
              decoration: BoxDecoration(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

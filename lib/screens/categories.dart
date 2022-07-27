import 'package:flutter/material.dart';
import 'package:petology/components/topBar.dart';

class categories extends StatefulWidget {
  const categories({Key? key}) : super(key: key);

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
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
            topBar(width: width, height: height, aboutBool: false, categoriesBool: true, servicesBool: false, requestBool: false, context: context,signInChoosen: false,loginChoosen: false),
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

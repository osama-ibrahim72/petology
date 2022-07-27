import 'package:flutter/material.dart';

Widget textButton(double height, String content, bool choosen, Widget goTO,
    BuildContext context) {
  return choosen
      ? Container(
          height: height / 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                content,
                style: TextStyle(
                  color: Color(0xFFffffff),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                height: 3,
                width: 40,
                decoration: BoxDecoration(
                  color: Color(0xFFFFE3C5),
                  borderRadius: BorderRadius.circular(20),
                ),
              )
            ],
          ),
        )
      : Container(
          height: height / 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => goTO));
                  },
                  child: Text(
                    content,
                    style: TextStyle(
                      color: Color(0xFFC9C9C9),
                      fontSize: 10,
                    ),
                  )),
              SizedBox(
                height: 6,
              )
            ],
          ),
        );
}

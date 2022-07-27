import 'package:flutter/material.dart';

class dogCart extends StatefulWidget {
  const dogCart({Key? key, required this.width, required this.height})
      : super(key: key);
  final double width;
  final double height;
  @override
  State<dogCart> createState() => _dogCartState();
}

class _dogCartState extends State<dogCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height *0.38,
      width: widget.width / 8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 2, color: Color(0xFF593C30))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(child: Image.asset("assets/dogCat.png"),height: widget.height*0.19),  //TODO
            Container(
              child: Center(child: Text("Data")), //TODO
              width: widget.width/10,
              height: widget.height*0.07,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 2, color: Color(0xFFFFE3C5))
              ),
              child: Center(child: Text("Show More")),
              width: widget.width/10,
              height: widget.height*0.07,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:petology/models/Footer.dart';
import 'package:petology/models/StaticController.dart';

class footer extends StatefulWidget {
  const footer({Key? key, required this.width, required this.height})
      : super(key: key);
  final double width;
  final double height;

  @override
  State<footer> createState() => _footerState();
}

class _footerState extends State<footer> {
  late Future<Footer> futureFooter;

  @override
  void initState() {
    super.initState();
    futureFooter = StaticController().getFooter();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height / 4,
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(children: [
            Container(
              child: Image.asset("assets/back.png", height: 50, width: 50),
              margin: EdgeInsets.only(top: 10, left: 40),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "For any questions",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFFFFE3C5)),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(Icons.mail, color: Color(0xFFAE957B)),
                    SizedBox(
                      width: 15,
                    ),
                    FutureBuilder<Footer>(
                        future: futureFooter,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data!.email,
                              style: TextStyle(color: Color(0xFFAE957B)),
                            );
                          } else {
                            return Text("error");
                          }
                          return const CircularProgressIndicator();
                        }),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(Icons.call, color: Color(0xFFAE957B)),
                    SizedBox(
                      width: 15,
                    ),
                    FutureBuilder<Footer>(
                        future: futureFooter,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data!.phone,
                              style: TextStyle(color: Color(0xFFAE957B)),
                            );
                          } else {
                            return Text("error");
                          }
                          return const CircularProgressIndicator();
                        }),
                  ],
                )
              ],
            )
          ]),
          Stack(children: [
            Container(
              child: Image.asset("assets/back.png", height: 50, width: 50),
              margin: EdgeInsets.only(top: 10, left: 40),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "We are waiting you",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFFFFE3C5)),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Color(0xFFAE957B)),
                    SizedBox(
                      width: 15,
                    ),
                    FutureBuilder<Footer>(
                        future: futureFooter,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data!.location,
                              style: TextStyle(color: Color(0xFFAE957B)),
                            );
                          } else {
                            return Text("error");
                          }
                          return const CircularProgressIndicator();
                        }),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Color(0xFFAE957B)),
                    SizedBox(
                      width: 15,
                    ),
                    FutureBuilder<Footer>(
                        future: futureFooter,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data!.loction2,
                              style: TextStyle(color: Color(0xFFAE957B)),
                            );
                          } else {
                            return Text("error");
                          }
                          return const CircularProgressIndicator();
                        }),
                  ],
                )
              ],
            )
          ]),
          Image.asset("assets/dogFooter.png")
        ],
      ),
    );
  }
}

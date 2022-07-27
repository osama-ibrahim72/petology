import 'package:flutter/material.dart';
import 'package:petology/components/dogCart.dart';
import 'package:petology/components/footer.dart';
import 'package:petology/models/SecondSection.dart';
import 'package:petology/models/StaticController.dart';
import 'package:petology/components/topBar.dart';
import 'package:petology/models/FirstSction.dart';

class aboutUs extends StatefulWidget {
  const aboutUs({Key? key}) : super(key: key);

  @override
  State<aboutUs> createState() => _aboutUsState();
}

class _aboutUsState extends State<aboutUs> {
  var size, height, width;
  int kind = 0; //1=dog,2=cat
  late Future<FirstSction> futureFirstSection;
  late Future<SecondSection> futureSecondSection;
  @override
  void initState() {
    super.initState();
    futureFirstSection = StaticController().getFirstSction();
    futureSecondSection = StaticController().getSecondSction();


  }
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
            Container(
              width: width,
              height: height / 2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF664638),
                      Color(0xFF180701),
                    ]),
              ),
              child: Column(
                children: [
                  topBar(
                      width: width,
                      height: height,
                      aboutBool: true,
                      categoriesBool: false,
                      servicesBool: false,
                      requestBool: false,
                      context: context,
                      signInChoosen: false,
                      loginChoosen: false),
                  Container(
                    width: width,
                    height: height * 3 / 8,
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FutureBuilder<FirstSction>(
                                future: futureFirstSection,
                                builder: (context, snapshot) {
                                  if(snapshot.hasData){
                                    return Text(snapshot.data!.title, style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold));
                                  }
                                  else{
                                    return Text("error");
                                  }
                                  return const CircularProgressIndicator();
                                }),
                            FutureBuilder<FirstSction>(
                                future: futureFirstSection,
                                builder: (context, snapshot) {
                                  if(snapshot.hasData){
                                    return Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(width: width*0.4,
                                        child: Text(snapshot.data!.body,maxLines: 4, style: TextStyle(
                                            color: Colors.white, fontSize: 15,overflow: TextOverflow.ellipsis,)),
                                      ),
                                    );
                                  }
                                  else{
                                    return Text("error");
                                  }
                                  return const CircularProgressIndicator();
                                }),


                            GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 250,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Help Them",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                      Icon(Icons.arrow_forward_ios_rounded)
                                    ],
                                  ),
                                ))
                          ],
                        ),
                        Container(
                          height: 300,
                          width: 300,
                          child: Stack(
                            children: [
                              Container(
                                child: Image.asset("assets/firstS1.png"),
                                width: 300,
                              ),
                              Container(
                                child: Image.asset("assets/firstS2.png"),
                                width: 175,
                                margin: EdgeInsets.only(left: 70, top: 135),
                              ),
                              Container(
                                child: Image.asset("assets/firstS3.png"),
                                width: 130,
                                margin: EdgeInsets.only(left: 80),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: height / 2,
              width: width,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Container(
                    child: Image.asset("assets/back.png"),
                    margin: EdgeInsets.only(left: width * 2 / 3),
                  ),
                  Container(
                    height: height / 2,
                    width: width,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: height / 2,
                          width: width / 2,
                          child: Center(
                            child: Container(
                              child: Image.asset(
                                "assets/dogCat.png",
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: width / 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FutureBuilder<SecondSection>(
                                  future: futureSecondSection,
                                  builder: (context, snapshot) {
                                    if(snapshot.hasData){
                                      return
                                           Text(snapshot.data!.title,style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold)
                                          );


                                    }
                                    else{
                                      return Text("error");
                                    }
                                    return const CircularProgressIndicator();
                                  }),
                              FutureBuilder<SecondSection>(
                                  future: futureSecondSection,
                                  builder: (context, snapshot) {
                                    if(snapshot.hasData){
                                      return Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(width: width*0.4,
                                          child: Text(snapshot.data!.body,maxLines: 8,  style: TextStyle(
                                              color: Color(0xFF585858), fontSize: 18),
                                      ),
                                        ),
                                      );
                                    }
                                    else{
                                      return Text("error");
                                    }
                                    return const CircularProgressIndicator();
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: height / 2,
              width: width,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Container(
                    child: Image.asset("assets/back2.png"),
                    margin: EdgeInsets.only(left: 250),
                  ),
                  Container(
                    height: height / 2,
                    width: width,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: Column(
                      children: [
                        Text(
                          'Lets get this right .....',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF492F24),
                              fontSize: 25),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'What kind of friend you looking for?',
                          style:
                              TextStyle(color: Color(0xFF492F24), fontSize: 20),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  kind = 1;
                                });
                              },
                              child: Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: kind == 1
                                        ? Color(0xFFFFE3C5)
                                        : Color(0xFFF1F1F1),
                                    border: Border.all(
                                        color: kind == 1
                                            ? Color(0xFF492F24)
                                            : Color(0xFFB7B7B7))),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/dogIcon.png",
                                      width: 150,
                                      height: 80,
                                    ),
                                    Text(
                                      "Dogs",
                                      style: TextStyle(
                                          color: Color(0xFF492F24),
                                          fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  kind = 2;
                                });
                              },
                              child: Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: kind == 2
                                        ? Color(0xFFFFE3C5)
                                        : Color(0xFFF1F1F1),
                                    border: Border.all(
                                        color: kind == 2
                                            ? Color(0xFF492F24)
                                            : Color(0xFFB7B7B7))),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/catIcon.png",
                                      width: 150,
                                      height: 80,
                                    ),
                                    Text(
                                      "Cats",
                                      style: TextStyle(
                                          color: Color(0xFF492F24),
                                          fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: width,
              height: height/2,
              child: Column(
                children: [
                  Text("Our frinds who",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,)),
                  Text("Looking for a house",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,)),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(width: width/2,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                        dogCart(height: height,width: width,),
                        dogCart(height: height,width: width,),
                        dogCart(height: height,width: width,),
                      ],),
                    ),
                  )
                ],
              ),
            ),

            footer(width: width, height: height),
          ],
        ),
      ),
    );
  }
}

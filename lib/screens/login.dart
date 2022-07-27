import 'package:flutter/material.dart';
import 'package:petology/components/footer.dart';
import 'package:petology/components/topBar.dart';
import 'package:petology/models/LogIn.dart';

import '../components/textButton.dart';
import '../models/AuthenticationController.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var size, height, width;
  late String email, password;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  late Future<LogIn> futureLogIN;

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
            topBar(
                width: width,
                height: height,
                aboutBool: false,
                categoriesBool: false,
                servicesBool: false,
                requestBool: false,
                context: context,
                signInChoosen: false,
                loginChoosen: true),
            Container(
              height: height*1.2,
              width: width,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: height*0.4,),
                          Column(
                            children: [
                              Container(
                                child: Container(
                                  height: height*0.7,
                                  width: width / 2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1, color: Color(0xFF593C30))),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        ""
                                            "Login",
                                        style: TextStyle(
                                            color: Color(0xFF593C30),
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Material(
                                          borderRadius: BorderRadius.circular(10),
                                          elevation: 20,
                                          shadowColor: Colors.grey,
                                          child: TextField(
                                            onChanged: (g) {
                                              email = emailController.text;
                                            },
                                            controller: emailController,
                                            style: const TextStyle(
                                                color: Colors.black,
                                                shadows: [
                                                  Shadow(
                                                      color: Colors.grey,
                                                      blurRadius: 3),
                                                ]),
                                            decoration: InputDecoration(
                                                labelText: "Email",
                                                fillColor: Colors.white,
                                                filled: true,
                                                labelStyle: const TextStyle(
                                                    fontSize: 20,
                                                    color: Color(0xFFA69994)),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(10))),
                                            keyboardType: TextInputType.name,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Material(
                                          borderRadius: BorderRadius.circular(10),
                                          elevation: 20,
                                          shadowColor: Colors.grey,
                                          child: TextField(
                                            onChanged: (g) {
                                              password = passwordController.text;
                                            },
                                            controller: passwordController,
                                            style: const TextStyle(
                                                color: Colors.black,
                                                shadows: [
                                                  Shadow(
                                                      color: Colors.grey,
                                                      blurRadius: 3),
                                                ]),
                                            decoration: InputDecoration(
                                                labelText: "Password",
                                                fillColor: Colors.white,
                                                filled: true,
                                                labelStyle: const TextStyle(
                                                    fontSize: 20,
                                                    color: Color(0xFFA69994)),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(10))),
                                            keyboardType: TextInputType.name,
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          width: width / 4,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF492F24),
                                              borderRadius:
                                              BorderRadius.circular(10)),
                                          child: Center(
                                              child: Text("Login",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20))),
                                        ),
                                        onTap: (){
                                          setState(() {
                                            futureLogIN = AuthenticationController().getLogIn(email,password);
                                          });
                                        },
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              "Forget Password ?",
                                              style: TextStyle(
                                                  color: Color(0xFF492F24),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400),
                                            )
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Image.asset(
                                                  "assets/facebook.png",
                                                  width: 30,
                                                  height: 30,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  "Facebook",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18),
                                                )
                                              ],
                                            ),
                                            width: 180,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                color: Color(0xFF2F4582),
                                                borderRadius:
                                                BorderRadius.circular(16)),
                                          ),
                                          Container(
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Image.asset(
                                                  "assets/google.png",
                                                  width: 30,
                                                  height: 30,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  "Google",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18),
                                                )
                                              ],
                                            ),
                                            width: 180,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Color(0xFF707070),
                                                    width: 1),
                                                borderRadius:
                                                BorderRadius.circular(16)),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              width: width / 6,
                                              height: 2,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text("Or",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              width: width / 6,
                                              height: 2,
                                              color: Colors.black,
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Don't have an account ? ",
                                              style: TextStyle(
                                                  color: Color(0xFF77635B),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text(
                                              "Sign in",
                                              style: TextStyle(
                                                  color: Color(0xFF492F24),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height*0.1,),
                        ],
                      ),
                      Container(
                        child: Image.asset("assets/dogLodin.png",width: width/5,),
                        margin: EdgeInsets.only(left: width/7,top: height/17),
                      )
                    ],
                  ),
                ],
              ),
            ),
            footer(
              height: height,
              width: width,
            )
          ],
        ),
      ),
    );
  }
}

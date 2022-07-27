import 'package:flutter/material.dart';
import 'package:petology/components/footer.dart';
import 'package:petology/components/topBar.dart';
import 'package:petology/models/AuthenticationController.dart';
import 'package:petology/models/Register.dart';

class signIn extends StatefulWidget {
  const signIn({Key? key}) : super(key: key);

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  var size, height, width;
  var firstName, lastName, email, password, rePassword,country,phone;
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final rePasswordController = TextEditingController();
  final countryController = TextEditingController();
  late Future<Register> futureRegister;
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
                signInChoosen: true,
                loginChoosen: false),
            Container(
              height: height * 1.3,
              width: width,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Image.asset("assets/back2.png"),
                        margin: EdgeInsets.only(top: 30, left: 50),
                      ),
                      Container(
                        child: Image.asset("assets/back2.png"),
                        margin: EdgeInsets.only(top: 180, left: 450),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: height * 0.1,
                      ),
                      Stack(
                        children: [
                          Center(
                            child: Container(
                              height: height*1.1,
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
                                    "Sign up",
                                    style: TextStyle(
                                        color: Color(0xFF593C30),
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
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
                                    padding: const EdgeInsets.all(15),
                                    child: Material(
                                      borderRadius: BorderRadius.circular(10),
                                      elevation: 20,
                                      shadowColor: Colors.grey,
                                      child: TextField(
                                        onChanged: (g) {
                                          firstName = firstNameController.text;
                                        },
                                        controller: firstNameController,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            shadows: [
                                              Shadow(
                                                  color: Colors.grey,
                                                  blurRadius: 3),
                                            ]),
                                        decoration: InputDecoration(
                                            labelText: "First Name",
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
                                    padding: const EdgeInsets.all(10),
                                    child: Material(
                                      borderRadius: BorderRadius.circular(10),
                                      elevation: 20,
                                      shadowColor: Colors.grey,
                                      child: TextField(
                                        onChanged: (g) {
                                          lastName = lastNameController.text;
                                        },
                                        controller: lastNameController,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            shadows: [
                                              Shadow(
                                                  color: Colors.grey,
                                                  blurRadius: 3),
                                            ]),
                                        decoration: InputDecoration(
                                            labelText: "Last Name",
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
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Material(
                                      borderRadius: BorderRadius.circular(10),
                                      elevation: 20,
                                      shadowColor: Colors.grey,
                                      child: TextField(
                                        onChanged: (g) {
                                          rePassword =
                                              rePasswordController.text;
                                        },
                                        controller: rePasswordController,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            shadows: [
                                              Shadow(
                                                  color: Colors.grey,
                                                  blurRadius: 3),
                                            ]),
                                        decoration: InputDecoration(
                                            labelText: "Re-Enter password",
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
                                          country =
                                              countryController.text;
                                        },
                                        controller: countryController,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            shadows: [
                                              Shadow(
                                                  color: Colors.grey,
                                                  blurRadius: 3),
                                            ]),
                                        decoration: InputDecoration(
                                            labelText: "Country",
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
                                          child: Text("Sign up",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20))),
                                    ),
                                    onTap: (){
                                      setState(() {
                                        futureRegister = AuthenticationController().getRegister(email,password,firstName,lastName,phone,country);
                                      });
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Already have an account ? ",
                                          style: TextStyle(
                                              color: Color(0xFF77635B),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "login",
                                          style: TextStyle(
                                              color: Color(0xFF492F24),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: width / 2,
                                child: Image.asset(
                                  "assets/footSignIn.png",
                                  height: 35,
                                  width: 35,
                                ),
                                margin: EdgeInsets.only(bottom: height),
                              ),
                              Container(
                                width: width / 2,
                                child: Image.asset(
                                  "assets/footSignIn.png",
                                  height: 35,
                                  width: 35,
                                ),
                                margin: EdgeInsets.only(top: height),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.1,
                      ),
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

import 'dart:convert';


import 'package:http/http.dart';
import 'package:petology/models/LogIn.dart';
import 'package:petology/models/Register.dart';

class AuthenticationController {
  final String error = "Sorry";
      Future<LogIn> getLogIn(String email,String password)async{
        final Response logInResponse = await post(
          Uri.parse('https://petology.orangedigitalcenteregypt.com/auth/login'),
            headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(<String, String>{
            'email': email,
            'password':password,
            },)
        );
          if(logInResponse.statusCode==200){
            return LogIn.fromJson(jsonDecode(logInResponse.body));
        }
          else{
            throw Exception(error);
          }

      }

      Future<Register> getRegister(String email , String password , String firstName , String secondName , String country , String phoneNumber)async {
        final Response registerResponse = await post(
            Uri.parse('https://petology.orangedigitalcenteregypt.com/auth/register'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(<String, String>{
              'email': email,
              'password':password,
              'firstName':firstName,
              'secondName':secondName,
              'phoneNumber':phoneNumber,
              'country':country,
            },)
        );
        if(registerResponse.statusCode==200){
          return Register.fromJson(jsonDecode(registerResponse.body));
        }
        else{
          throw Exception(error);
        }
      }
}
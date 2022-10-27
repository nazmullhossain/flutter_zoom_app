import 'package:flutter/material.dart';
import 'package:zoomapp/resources/auth_methods.dart';

import '../custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthMethods _authMethods=AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Start or join a metting ,",style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),),
          Image.asset("assets/images/onboarding.jpg"),
          CustomButton(text: "Google sign in", onPressed: ()async{
            bool res=await _authMethods.signInWithGoogle(context);
            if(res){
              Navigator.pushNamed(context, "/home");

            }
          })
        ],
      )
    );
  }
}

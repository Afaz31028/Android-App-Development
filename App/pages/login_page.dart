import 'package:create_app/Componants/MyButton.dart';
import 'package:create_app/Componants/SquareTile.dart';
import 'package:create_app/Componants/my_textEditor.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  final usernameController=TextEditingController();
  final passwordController=TextEditingController();

  void SignUserIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              //images
              const SizedBox(height: 50,),
              const Icon(Icons.lock,size:60,),
              const SizedBox(height:50),

              //Welcome
              Text("Welcome User",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
              const SizedBox(height: 50,),

              //Email
              MyTextField(
                controller: usernameController,
                hinText: 'Email',
                obscureText: false,
              ),
              const SizedBox(height:10),
              //Password
              MyTextField(
                controller: passwordController,
                hinText: 'Password',
                obscureText: true,

              ),
              const SizedBox(height:10),
              //forget password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forget Password?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              SizedBox(height: 25,),
              //sign in button
              MyButton(
                onTap: SignUserIn,
              ),
              SizedBox(height: 50,),
              //Or Continue With
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.8,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Or Continue With",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.8,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              //Google + Apple
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imgPath:"lib/images/google.png"),
                  SizedBox(width: 20,),
                  SquareTile(imgPath: 'lib/images/apple.png',),
                ],
              ),
              SizedBox(height: 30,),
              //Resister
              Column(
                children: [
                  Text("If you have no account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Text("Resister Now",style: TextStyle(color: Colors.greenAccent,fontSize: 18,fontWeight: FontWeight.bold),)
                ],
                
              )
            ],
          ),
        ),
      ),


    );
  }
}

import 'dart:html';
import 'package:flutter/material.dart';
import 'package:midui/components/my_button.dart';
import 'package:midui/components/my_textfield.dart';
import 'package:midui/components/square_tile.dart';
import 'package:midui/city_page.dart';
import 'package:stroke_text/stroke_text.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


  //sign in method
  // void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/FarmP.jpg"),
            fit: BoxFit.cover,
            opacity: 0.9,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 70),
              //logo
              StrokeText(
                text: "FARMMY",
                textStyle: TextStyle(
                  fontFamily: 'Breadcrumbs',
                  fontSize: 60,
                  color: Colors.yellow[700],
                ),
                strokeColor: Colors.green.shade900,
                strokeWidth: 12,
              ),
              StrokeText(
                text: "ZONE",
                textStyle: TextStyle(
                  fontFamily: 'Breadcrumbs',
                  fontSize: 60,
                  color: Colors.yellow[700],
                ),
                strokeColor: Colors.green.shade900,
                strokeWidth: 12,
              ),
              Text('your farming companion.',
                  style: TextStyle(
                    color: Colors.green[900],
                    fontSize: 16,
                  )),

              const SizedBox(height: 35),

              //username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),
              //password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 3),
              //forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              MyButton(
                ButtonText: 'LOG IN',
                ButtonColor: Colors.green.shade900,
                ButtonTextColor: Colors.white,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CityPage()));
                },
              ),

              const SizedBox(height: 35),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Or continue with',
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: "lib/images/google.png"),
                  const SizedBox(width: 10),
                  SquareTile(imagePath: "lib/images/apple.png"),
                ],
              ),

              const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Register now',
                    style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              // const SizedBox(height: 60),
              // Text(
              //   'By',
              //   style: TextStyle(
              //       color: Colors.yellow.shade700,
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold),
              // ),
              // Text(
              //   'BURIKATS',
              //   style: TextStyle(
              //       color: Colors.yellow.shade700,
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/authenticationscreen_controller.dart';

class AuthenticationscreenView extends GetView<AuthenticationscreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Center(
          child: Container(
              child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "EDU",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "SIGN IN",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 29,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 80 / 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign in",
                        style: TextStyle(color: Colors.white),
                      ))),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign up with mobile number",
                    style: TextStyle(fontSize: 15),
                  )),
              Text(
                "Dont have Account ",
                style: GoogleFonts.montserrat(fontSize: 25),
              ),
              TextButton(onPressed: () {}, child: Text("Sign up with email ")),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.grey,
                height: 1,
                width: MediaQuery.of(context).size.width * 80 / 100,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Sign up With :",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 70 / 100,
                decoration: BoxDecoration(border: Border.all()),
                child: Center(child: Text("Google")),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 70 / 100,
                decoration: BoxDecoration(border: Border.all()),
                child: Center(child: Text("Facebook")),
              )
              // Text("Sign with mobile number?"),
              // Text(
              //   "Dont have Account?",
              //   style: TextStyle(color: Colors.black, fontSize: 25),
              // ),
              // Text("sign with email?"),
              // SizedBox(
              //   height: 5,
              // ),
              // Divider(
              //   thickness: 2,
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Text(
              //   "sign up with:",
              //   style: TextStyle(fontSize: 20),
              // ),
              // SizedBox(
              //   height: 5,
              // ),
              // Container(
              //     color: Colors.black,
              //     child: TextButton(
              //         onPressed: () {},
              //         child: Text(
              //           "sign with google",
              //           style: TextStyle(color: Colors.white),
              //         ))),
              // SizedBox(
              //   height: 5,
              // ),
              // Container(
              //     color: Colors.blue,
              //     child: TextButton(
              //         onPressed: () {},
              //         child: Text(
              //           "sign with facebook",
              //           style: TextStyle(color: Colors.white),
              //         ))),
            ],
          )),
        ),
      ],
    )));
  }
}

import 'package:eduapp/app/modules/bottomnavigationscreen/views/bottomnavigationscreen_view.dart';
import 'package:eduapp/app/modules/home/views/home_view.dart';
import 'package:eduapp/app/modules/icons/logos_icons.dart';
import 'package:eduapp/app/modules/signupscreen/views/signupscreen_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/authenticationscreen_controller.dart';

class AuthenticationscreenView extends GetView<AuthenticationscreenController> {
  AuthenticationscreenController controller =
      Get.put(AuthenticationscreenController());

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
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.grey),
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
                  controller: controller.name,
                  decoration: InputDecoration(
                      hintText: "Enter Email Address",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                child: TextFormField(
                  controller: controller.password,
                  decoration: InputDecoration(
                      hintText: "Password ",
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
                      color: Color.fromARGB(255, 126, 6, 224),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                      onPressed: () {
                        // controller.signupmodel(
                        //     //controller.name.text, controller.password.text
                        //     );
                        Get.off(BottomnavigationscreenView());
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(color: Colors.white),
                      ))),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    Get.to(SignupscreenView());
                  },
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
                color: Color.fromARGB(255, 0, 0, 0),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.g_mobiledata,
                      size: 43,
                    ),
                    Text(
                      "Google",
                      style: TextStyle(fontSize: 21),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 70 / 100,
                decoration: BoxDecoration(border: Border.all()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Logos.facebook_squared),
                    Text(
                      "Facebook",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              )
            ],
          )),
        ),
      ],
    )));
  }
}

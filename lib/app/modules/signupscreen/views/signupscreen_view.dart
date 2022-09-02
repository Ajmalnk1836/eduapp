

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signupscreen_controller.dart';

class SignupscreenView extends GetView<SignupscreenController> {
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
                  SizedBox(height: 20,),  
                  
                  Text("EDU",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ),),
                  SizedBox(height: 20,),  
                 
                  Text(
                    "SIGN UP ",
                    style: TextStyle(fontSize: 30, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("You will recieve a 4 digit verification code ")
                ],
              ),
            ),
          ),
          SizedBox(height: 30,), 
        
          Container(
            width: MediaQuery.of(context).size.width * 8 / 10,
            // height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "First Name",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter First Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Second Name",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Second Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Email Address",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Email Address",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Mobile Number",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Mobile Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Password",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Password ",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width * 6 / 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                           color: Colors.blue,
                    ),
                    child: TextButton(onPressed: (){}, child: Text("Sign up ",style: TextStyle(color: Colors.white ),))
                    ),
                  ),
                
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

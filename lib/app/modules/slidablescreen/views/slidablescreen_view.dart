import 'package:eduapp/app/modules/personaldetailsscreen/views/personaldetailsscreen_view.dart';
import 'package:eduapp/app/modules/slidablescreen/views/widgets/profilecard.dart';
import 'package:eduapp/app/modules/slidablescreen/views/widgets/profilestatus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/slidablescreen_controller.dart';

class SlidablescreenView extends GetView<SlidablescreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text("Profile"),
        ),
        body: SafeArea(
            child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 3.5 / 10,
              child: Column(
                children: [
                  SizedBox(
                    height: 18,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 90,
                        width: MediaQuery.of(context).size.width * 4 / 10,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/icons/lottie/bg.png",),
                              fit: BoxFit.fitWidth,
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 3)),
                      ),
                      Positioned(
                          left: 102,
                          top: 35,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.black, 
                              )))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "test demo",
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "status",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      profileMethods(color: Colors.green, name: "online"),
                      profileMethods(name: "offline", color: Colors.grey),
                      profileMethods(name: "Vacation", color: Colors.yellow),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "Ratings",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Text(
                              "4.5/5",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "Reviews",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Text(
                              "4.5/5",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 5.55 / 10,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  )),
              child: Align(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 4.2 / 10,
                      child: Column(
                        children: [
                          profilecards(
                            icon: Icon(Icons.person),
                            name: "personal Details",
                            button: IconButton(
                                onPressed: () {
                                  Get.to(PersonaldetailsscreenView());
                                },
                                icon: Icon(Icons.arrow_forward_ios_rounded)),
                          ),
                          profilecards(
                            icon: Icon(Icons.book),
                            name: "Academic details",
                            button: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios_rounded)),
                          ),
                          profilecards(
                            icon: Icon(Icons.password),
                            name: "change Password",
                            button: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios_rounded)),
                          ),
                          profilecards(
                            icon: Icon(Icons.question_answer),
                            name: "Help",
                          ),
                          profilecards(
                            icon: Icon(Icons.logout),
                            name: "Logout",
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        )));
  }
}

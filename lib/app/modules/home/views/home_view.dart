import 'package:eduapp/app/modules/home/views/widgets/appbar.dart';
import 'package:eduapp/app/modules/home/views/widgets/assignmentcard.dart';
import 'package:eduapp/app/modules/home/views/widgets/cardsection.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white,
        appBar: appbarSection(),
        body: ListView(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 2.9 / 10,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 45,
                  itemBuilder: (context, index) {
                    return Container(
                     // color: Colors.white,
                      //  height: 80,
                      width: MediaQuery.of(context).size.width * 39 / 100,
                      child: cardsection(),
                    );
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                "Assignment",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 65, 3, 223),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 250,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                    AssignmentCard(name: "Create    Assignment",buttonname: "Create"), 
                    AssignmentCard(name: "Post        Assignment", buttonname: "Post"),
              
                      

                    
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200 ,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 65, 3, 223), 
                  borderRadius: BorderRadius.circular(15), 
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width * 4.5 /10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start ,
                        children: [
                          SizedBox(height: 20,), 
                          Padding(
                            padding: const EdgeInsets.only(left:  12.0 ),
                            child: Text("Notices",style: TextStyle(color: Colors.white ,fontSize: 30 ),),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.all(12.0 ),
                            child: Text("Post Notice and \nPeriod ",style: TextStyle(color: Colors.white ,fontSize: 20    ),),
                          )

                        ],
                      ),
                       
                    ),
                      Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width * 4.5 /10,
                      child: Lottie.asset("assets/icons/lottie/73850-offline-teaching.json"),
                       
                    )

                  ],
                ),
              ),
            ),
          ],
        ));
  }
}


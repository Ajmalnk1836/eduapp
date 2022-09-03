import 'package:eduapp/app/modules/emailverification/controllers/emailverification_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/personaldetailsscreen_controller.dart';

class PersonaldetailsscreenView
    extends GetView<PersonaldetailsscreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.black,
              )),
          centerTitle: true,
          title: Text(
            "Personal Details",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 18,
            ),
            Center(
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 8 / 10,
                  width: MediaQuery.of(context).size.width * 8 / 10,
                  decoration: BoxDecoration(
                      // borderRadius: Borderr
                      ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Full name",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "test ",
                                hintStyle: TextStyle(
                                    fontSize: 20, color: Colors.black)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Gender",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Demo ",
                                hintStyle: TextStyle(
                                    fontSize: 20, color: Colors.black)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Date of Birth",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "30-Aug-2022 ",
                                hintStyle: TextStyle(
                                    fontSize: 20, color: Colors.black)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Email Address",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "ajmalnk1836@gmail.com ",
                                hintStyle: TextStyle(
                                    fontSize: 20, color: Colors.black)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Country Residence",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "india ",
                                hintStyle: TextStyle(
                                    fontSize: 20, color: Colors.black)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "city",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Dhule ",
                                hintStyle: TextStyle(
                                    fontSize: 20, color: Colors.black)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Pin code",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "420041 ",
                                hintStyle: TextStyle(
                                    fontSize: 20, color: Colors.black)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Address",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "80 fit road ",
                                hintStyle: TextStyle(
                                    fontSize: 20, color: Colors.black)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )));
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottomnavigationscreen_controller.dart';

class BottomnavigationscreenView
    extends GetView<BottomnavigationscreenController> {
  BottomnavigationscreenController controller =
      Get.put(BottomnavigationscreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.pages[controller.pageIndex.value],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(  
            borderRadius: BorderRadius.circular(15.0),  
          ),  
          child: Container(
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Padding( 
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  bottomBar(0, context, Icons.home, "home"),
                  bottomBar(1, context, Icons.book, "courses"),
                  bottomBar(2, context, Icons.telegram, "Golive"),
                  bottomBar(3, context, Icons.wallet, "Wallet"),
                  bottomBar(4, context, Icons.chat,  "Chat"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector bottomBar(
      int index, BuildContext context, IconData icon, String name) {
    return GestureDetector(
      onTap: () {
        controller.onTap(index);
        print(controller.pageIndex);
      },
      child: Obx(
        () => Container(
          width: MediaQuery.of(context).size.width * 1.23 / 10,
          decoration: BoxDecoration(
            color: controller.pageIndex == index
                ? Color.fromARGB(255, 65, 3, 223)
                : null,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Icon(
                icon,
                color:
                    controller.pageIndex == index ? Colors.white : Colors.black,
              ),
              Text(
                "Home",
                style: TextStyle(
                    color: controller.pageIndex == index
                        ? Colors.white
                        : Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

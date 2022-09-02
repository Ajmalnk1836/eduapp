import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottomnavigationscreen_controller.dart';

class BottomnavigationscreenView
    extends GetView<BottomnavigationscreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.pages[controller.pageIndex.value],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                bottomBar(0, context,Icon(Icons.home,color: Colors.white,),"home"),
                bottomBar(1, context,Icon(Icons.book,color: Colors.white,),"courses"),
                bottomBar(2, context,Icon(Icons.telegram,color: Colors.white,),"Golive"),
                bottomBar(3, context,Icon(Icons.wallet,color: Colors.white,),"Wallet"),
                bottomBar(4, context,Icon(Icons.chat,color: Colors.white,),"Chat"),
              ],
            ),
          ), 
        ),
      ),
    );
  }

  GestureDetector bottomBar(int index, BuildContext context,Icon icon,String name) {
    return GestureDetector(
      onTap: () {
        controller.onTap(index);
        print(controller.pageIndex);
      },
      child: Obx(
        () => Container(
          width: MediaQuery.of(context).size.width * 1.23 / 10,
          decoration: BoxDecoration(
            color: controller.pageIndex == index ? Colors.green : null,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              icon,
              Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

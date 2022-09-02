import 'package:eduapp/app/modules/detailsscreen/views/detailsscreen_view.dart';
import 'package:eduapp/app/modules/home/views/home_view.dart';
import 'package:eduapp/app/modules/profilescreen/views/profilescreen_view.dart';
import 'package:eduapp/app/modules/screenfive/views/screenfive_view.dart';
import 'package:eduapp/app/modules/screenfour/views/screenfour_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomnavigationscreenController extends GetxController {
  //TODO: Implement BottomnavigationscreenController

  final pageIndex = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  List pages = [
    HomeView(),
    ProfilescreenView(),   
    DetailsscreenView(),
    ScreenfourView(),
    ScreenfiveView()
  ];

  void onTap(int index) {
    pageIndex.value = index;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  //void increment() => count.value++;
}

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:eduapp/app/models/loginmodel/loginmodel.dart';
import 'package:eduapp/app/models/signupmodel/signupmodel.dart';
import 'package:eduapp/app/models/signupmodel/signupmodel.dart';
import 'package:eduapp/app/modules/home/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthenticationscreenController extends GetxController {
  //TODO: Implement AuthenticationscreenController

  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  final count = 0.obs;
  final _dio = Dio();
  final String url = "https://website-dokan.herokuapp.com/Teacher/Login";
  void signupmodel(String email, String password) async {
    Loginmodel signupmodel = Loginmodel(email: email, password: password);
    try {
      final response = await _dio.post(url, data: signupmodel.toJson());
      log(response.statusCode.toString());
      log(response.data.toString());

      if (response.statusCode == 200) {
        Get.off(HomeView());
      }
    } on DioError catch (e) {
      log(e.toString());
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}

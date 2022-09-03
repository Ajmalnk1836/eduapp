import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:eduapp/app/models/signupmodel/signupmodel.dart';
import 'package:eduapp/app/modules/emailverification/views/emailverification_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:dio/src/response.dart';

class SignupscreenController extends GetxController {
  //TODO: Implement SignupscreenController

  TextEditingController fName = TextEditingController();
  TextEditingController sName = TextEditingController();
  TextEditingController emailAddress = TextEditingController();
  TextEditingController mobNumber = TextEditingController();
  TextEditingController password = TextEditingController();

  final count = 0.obs;
  final String url = 'https://website-dokan.herokuapp.com/Teacher/AddNew';
  final _dio = Dio();

  void signupUser(String fname, String sname, String mobnumber, String email,
      String pasSword, String jdate, int usertype) async {
    try {
      
      final Signupmodel signupmodel = Signupmodel(
          firstName: fname,
          lastName: sname,
          mobileNo: mobnumber,
          email: email,
          password: pasSword,
          joiningDate: jdate,
          userType: usertype);
      final response = await _dio.post(url, data: signupmodel.toJson());
      log(response.statusCode.toString());
      log("user created ${response.data}");
      if (response.statusCode == 200) {
        log(response.statusCode.toString());
        log("user created ${response.data}");
        Get.off(() => EmailverificationView());
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

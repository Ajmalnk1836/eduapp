import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:eduapp/app/models/verificationmodel/verificationmodel.dart';
import 'package:eduapp/app/modules/authenticationscreen/views/authenticationscreen_view.dart';
import 'package:eduapp/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';

class EmailverificationController extends GetxController {
  //TODO: Implement EmailverificationController
  OtpFieldController otpController = OtpFieldController();
  final count = 0.obs;

  final String url =
      'https://website-dokan.herokuapp.com/Teacher/ActivateEmail';

  final _dio = Dio();

  void otpVerify(String otp) async {
    try {
      Verificationmodel verification =
          Verificationmodel(emailVerificationCode: otp);
      final rsponse = await _dio.post(url, data: {"EmailVerificationCode": otp}
          //verification.toJson()

          );
      log(rsponse.statusCode.toString());
      if (rsponse.statusCode == 200) {
        log(rsponse.statusCode.toString());
        log(rsponse.data.toString());
        Get.off(AuthenticationscreenView());
      }
      // return Verificationmodel.fromJson(rsponse.data);

    } on DioError catch (e) {
      log(e.toString());
      if (e.response?.statusCode == 401) {
        Get.snackbar("Invalid data", "Add valid data");
      }
      Get.snackbar("User Already Exisist ", "Please add Valid user",
          backgroundColor: Colors.green, snackPosition: SnackPosition.BOTTOM);
    }

    //return null;
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

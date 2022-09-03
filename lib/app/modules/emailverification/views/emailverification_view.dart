import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import '../controllers/emailverification_controller.dart';

class EmailverificationView extends GetView<EmailverificationController> {
  EmailverificationController controllr =
      Get.put(EmailverificationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "We will send you One time password \n                on your phone number ",
                style: GoogleFonts.montserrat(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              OTPTextField(
                controller: controllr.otpController,
                length: 6,
                width: 400,
                fieldWidth: 60,
                style: const TextStyle(fontSize: 45),
                textFieldAlignment: MainAxisAlignment.spaceEvenly,
                fieldStyle: FieldStyle.box,
                onChanged: (pin) {
                  print(int.parse(pin));
                },
                onCompleted: (pin) {
                  controllr.otpVerify(pin);
                  // final pins = int.parse(pin);
                  //  controller.verifyOtp(pin);
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}

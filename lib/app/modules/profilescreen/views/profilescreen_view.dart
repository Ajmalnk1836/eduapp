import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profilescreen_controller.dart';

class ProfilescreenView extends GetView<ProfilescreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProfilescreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProfilescreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

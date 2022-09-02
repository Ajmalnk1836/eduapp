import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/screenfive_controller.dart';

class ScreenfiveView extends GetView<ScreenfiveController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenfiveView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ScreenfiveView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

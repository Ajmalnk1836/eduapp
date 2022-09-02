import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/screenfour_controller.dart';

class ScreenfourView extends GetView<ScreenfourController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenfourView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ScreenfourView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

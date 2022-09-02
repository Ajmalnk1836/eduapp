import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/homescreen_controller.dart';

class HomescreenView extends GetView<HomescreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomescreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HomescreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/homescrren_controller.dart';

class HomescrrenView extends GetView<HomescrrenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomescrrenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HomescrrenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

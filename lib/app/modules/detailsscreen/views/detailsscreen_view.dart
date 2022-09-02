import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detailsscreen_controller.dart';

class DetailsscreenView extends GetView<DetailsscreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DetailsscreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DetailsscreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

import 'package:eduapp/app/modules/slidablescreen/views/slidablescreen_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar appbarSection() {
    return AppBar(
      elevation: 0,
      centerTitle: true,  
      leading: IconButton(onPressed: (){
        Get.to(SlidablescreenView());
      }, icon: Icon(Icons.menu ,color: Colors.black ,size: 29  ,)),
      backgroundColor: Colors.white ,
      title: Text("3 July 2022 ",style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold ),
      ),
      actions: [
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 222, 231, 238),
            shape: BoxShape.circle
          ),
          child: IconButton(onPressed: (){}, icon: Icon(Icons.notification_add_outlined  ,color:  Color.fromARGB(255, 65, 3, 223) ,)))
      ],
      
    );
  }


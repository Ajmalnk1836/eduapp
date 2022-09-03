import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AssignmentCard extends StatelessWidget {
  const AssignmentCard({Key? key, required this.name, required this.buttonname})
      : super(key: key);
  final String name;
  final String buttonname;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, top: 10),
      child: Container(
          height: MediaQuery.of(context).size.height * 2.7 / 10,
          width: MediaQuery.of(context).size.width * 4.1 / 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Container(
              child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Container(  
                    height: 90,
                    decoration: BoxDecoration(
                      boxShadow: [
                         BoxShadow(
                      color: Color.fromARGB(255, 240, 234, 234),
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), 
                        
                      ],
                      //color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Lottie.asset("assets/icons/lottie/74229-teaching.json",width: 130   ),
                  ),
                ),
              ),
              Text(
                name,
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 35,
                width: MediaQuery.of(context).size.width * 2.4 / 10,
                decoration: BoxDecoration(
                   color: Color.fromARGB(255, 65, 3, 223), 
                    borderRadius: BorderRadius.circular(12  )),
                child: Center(
                  child: Text(buttonname,style: TextStyle(color: Colors.white),),
                ),
              )
            ],
          ))),
    );
  }
}

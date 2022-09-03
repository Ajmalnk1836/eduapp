import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class cardsection extends StatelessWidget {
  const cardsection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 185, 221, 248),
        child: Column(
      //    crossAxisAlignment: CrossAxisAlignment.center ,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 11.0, vertical: 5),
          child: Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            
            ),
            child: Lottie.asset("assets/icons/lottie/73850-offline-teaching.json"),  
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Subject: ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold),
                    ),
                    Text("Physics")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  top: 8,
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Date: ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold),
                    ),
                    Text("08/04/2022")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Time:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold),
                    ),
                    Text("06:55 PM")
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
             color: Color.fromARGB(255, 65, 3, 223),
              borderRadius: BorderRadius.circular(10)),
          height: 40,
          width: MediaQuery.of(context).size.width * 2.8 / 10,
          child: Center(
              child: Text(
            "Reshedule",
            style:
                TextStyle(color: Colors.white, fontSize: 16),
          )),
        )
      ],
    ));
  }
}

import 'package:flutter/material.dart';

class profileMethods extends StatelessWidget {
  const profileMethods({Key? key, required this.name, required this.color})
      : super(key: key);
  final Color color;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: MediaQuery.of(context).size.width * 2.5 / 10,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
            ),
          ),
          Text(name)
        ],
      ),
    );
  }
}

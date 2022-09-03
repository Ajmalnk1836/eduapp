
import 'package:flutter/material.dart';

class profilecards extends StatelessWidget {
  const profilecards(
      {Key? key, required this.icon, required this.name, this.button})
      : super(key: key);
  final Icon icon;
  final String name;
  final IconButton? button;

  @override  
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width * 8.4 / 10,
        decoration: BoxDecoration(),
        child: ListTile(
          leading: icon,
          title: Text(name),
          trailing: button,
        ),
      ),
    );
  }
}
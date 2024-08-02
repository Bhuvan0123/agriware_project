import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String name;
  final void Function()? ontap;
  Mybutton({super.key, required this.name, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Center(
              child: Text(
            name,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )),
          width: 170,
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black),
              borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}

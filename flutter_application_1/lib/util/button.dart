import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final icon;
  final String number;

  MyButton({this.icon, required this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        children: [
          Icon(icon,
          size: 30,
          color: Colors.white,
          ),
          SizedBox(
            height: 10,
            ),
          Text(number, style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_1/const.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController controler;
  final String labelText;
  final bool isObscure;
  final IconData icon;

  const TextInputField({
    Key ? key, 
    required this.controler,
    required this.labelText,
    this.isObscure = false,
    required this.icon,
    }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controler,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon),
        labelStyle: const TextStyle(fontSize: 20,),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: textColor,
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: textColor,
          )
        ), 
      ),
      obscureText: isObscure,
    );
  }
}
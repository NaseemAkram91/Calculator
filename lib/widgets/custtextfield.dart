import 'package:calculator/constant/colors.dart';
import 'package:flutter/material.dart';

class CustTextfield extends StatelessWidget {
  const CustTextfield({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            fillColor: CustColors.primaryClr,
            filled: true,
            border: OutlineInputBorder(borderSide: BorderSide.none)),
        style: TextStyle(fontSize: 30),
        readOnly: true,
        showCursor: true,
        autofocus: true,
      ),
    );
  }
}

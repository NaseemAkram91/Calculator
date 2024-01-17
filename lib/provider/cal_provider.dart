import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalProvider extends ChangeNotifier {
  final compController = TextEditingController();
  setValue(String value) {
    String vlu = compController.text;
    switch (value) {
      case "C":
        compController.clear();
        break;
      case "AC":
        compController.text = vlu.substring(0, vlu.length - 1);
        break;
      case "X":
        compController.text += "*";
        break;
      case "=":
        calculate();
        break;
      default:
        compController.text += value;
    }
  }

  calculate() {
    String text = compController.text;
    compController.text = text.interpret().toString();
  }

  @override
  void dispose() {
    super.dispose();
    compController.dispose();
  }
}

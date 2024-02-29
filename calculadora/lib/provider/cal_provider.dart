import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorPorvider extends ChangeNotifier{
  final compController = TextEditingController();
  
  setValue(String value){
    String str = compController.text;

    switch(value){
      case "AC":
        if (str.isNotEmpty) {
        compController.text = str.substring(0, str.length - 1);
        }
        break;
      case "CE":
        compController.clear();
        break;
      case "X":
        compController.text += "*";
        break;  
      case "=":
        compute();
        break;
      default:
        compController.text += value;  
    }
  }

  compute(){
    String text = compController.text;
    compController.text = text.interpret().toString();
  }

  @override
  void dispose() {
    compController.dispose();
    super.dispose();
  }
}
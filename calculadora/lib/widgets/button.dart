import 'package:calculadora/constant/colors.dart';
import 'package:calculadora/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Button1 extends StatelessWidget {
  const Button1({super.key, required this.label, this.textColor= Colors.white});

  final String label;
  final Color textColor;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<CalculatorPorvider>(context,listen: false)
      .setValue(label),
      child: Material(
        elevation: 3,
        color: AppColors.secondary2Color,
        borderRadius: const BorderRadius.horizontal(left: Radius.circular(15), right: Radius.circular(15)),
          child: CircleAvatar(
            radius: 36,
            backgroundColor: AppColors.secondary2Color,
            child: Text(
              label,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w400)),),
      ),
    );
  }
}
import 'package:calculadora/constant/colors.dart';
import 'package:calculadora/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()  => Provider.of<CalculatorPorvider>(context,listen: false).setValue("+"),
      child: Container(
        height: 160,
        width: 70,
        decoration: BoxDecoration(
          color: AppColors.secondary2Color,
          borderRadius: BorderRadius.circular(15)),
        child: const Center(child: Text("+", style: TextStyle(fontSize: 32)),),
      ),
    );
  }
}
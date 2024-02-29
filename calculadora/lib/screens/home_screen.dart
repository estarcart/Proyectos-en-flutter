import 'package:calculadora/provider/cal_provider.dart';
import 'package:calculadora/screens/widgets_data.dart';
import 'package:calculadora/widgets/cal_button.dart';
import 'package:calculadora/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight= MediaQuery.sizeOf(context).height;
    const padding = EdgeInsets.symmetric(horizontal: 25,vertical: 30);
    
    return Consumer<CalculatorPorvider>(
      builder: (context, provider,_) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: const Text("Calculator App"),
              backgroundColor: Colors.black,
            ),
            body: Column(
              children: [
                  CustomTextField(controller: provider.compController,),
                  const Spacer(),
                  Container(height: screenHeight*0.6,
                  width: double.infinity,
                  padding: padding,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) => buttonList[index]),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) => buttonList[index+4]),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) => buttonList[index+8]),
                      ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(children: [
                            Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(3, (index) => buttonList[index+12]),
                            ),  
                          const SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(3, (index) => buttonList[index+15]),
                            ),
                          ],
                          ),
                        ),
                        const SizedBox(width: 20,),
                        const CalculateButton()
                      ],
                    ) 
                    ]
                  )
                  )
                ]
              )
            );
      }
    );
  }
}


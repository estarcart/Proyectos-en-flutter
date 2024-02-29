import 'package:flutter/material.dart';
import 'package:flutter_rutas/first_route.dart';
import 'package:get/get.dart';

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tercera ruta'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Volver a la primera ruta con Get'),
              onPressed: () {
                Get.to(() => const FirstRoute(), arguments: "Ya llego el mensaje de la vista 3.");
              },
            ),
          ],
        ),
      ),
    );
  }
}

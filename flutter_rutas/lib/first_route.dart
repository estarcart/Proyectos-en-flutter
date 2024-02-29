import 'package:flutter/material.dart';
import 'package:flutter_rutas/second_route.dart';
import 'package:flutter_rutas/third._route.dart';
import 'package:get/get.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)?.settings.arguments as String?;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primera ruta'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Metodo Push
            ElevatedButton(
              child: const Text('Ruta push'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SecondRoute(),
                  settings: const RouteSettings(arguments: "El boton push ha servidor para enviar un mensaje a la segunda ruta.")),
                );
              },
            ),
            const SizedBox(height: 16),
            // Metodo PushNamed
            ElevatedButton(
              child: const Text('Ruta pushNamed'),
              onPressed: () {
                Navigator.pushNamed(context, '/second',arguments: "El boton pushNamed ha servidor para enviar un mensaje a la segunda ruta.");
              },
            ),
            const SizedBox(height: 16),
            // Metodo Get
            ElevatedButton(
              child: const Text('Ruta Get'),
              onPressed: () {
                Get.to(() => const ThirdRoute());
              },
            ),
            const Text('Mensaje de la vista 3:'),
            Text(data ?? 'No hay mensaje...'),
          ],
        ),
      ),
    );
  }
}
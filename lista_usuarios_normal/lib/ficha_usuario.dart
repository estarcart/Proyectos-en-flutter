import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FichaUsuario extends StatelessWidget {
    String nombres;
    String carrera;
    String promedio;
    FichaUsuario({
    super.key,
    required this.nombres,
    required this.carrera,
    required this.promedio,
    });


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Imagen del usuario"),
        Column(
          children: [
            Text(nombres),
            Text(carrera),
            Text(promedio),
          ],
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({
    Key? key,
    required this.nombre,
    required this.profesion,
    required this.edad,
    required this.urlImagen,
    required this.universidad,
    required this.bachillerato,
  }) : super(key: key);

    final String nombre;
    final String profesion;
    final int edad;
    final String urlImagen;
    final String universidad;
    final String bachillerato;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil de Usuario'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(urlImagen, width: 100, height: 100, fit: BoxFit.cover),
            const SizedBox(height: 16),
            Text('Nombre: $nombre'),
            Text('Profesión: $profesion'),
            Text('Edad: $edad'),
            Text('Universidad: $universidad'),
            Text('Bachillerato: $bachillerato'),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Volver'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

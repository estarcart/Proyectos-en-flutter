import 'package:flutter/material.dart';
import 'package:lista_usuarios/ficha_usuario.dart';

class ListaUsuarios extends StatefulWidget {
  const ListaUsuarios({super.key});
  @override
  State<ListaUsuarios> createState() => _ListaUsuariosState();
}

class _ListaUsuariosState extends State<ListaUsuarios> {
  

  @override
  Widget build(BuildContext context) {
    
    List<Widget> arrayUsuarios = [];
    arrayUsuarios.add(
      FichaUsuario(nombres: "Juan Perez", carrera: "Ing. Sistemas", promedio: "8.5"));  
    return 
    Scaffold(
      body: Center(
        child: ListView(
          children: arrayUsuarios,
        ),
        )
      );
  }
}
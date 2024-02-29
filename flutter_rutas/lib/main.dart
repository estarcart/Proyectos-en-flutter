import 'package:flutter/material.dart';
import 'package:flutter_rutas/first_route.dart';
import 'package:flutter_rutas/second_route.dart';
import 'package:get/get.dart';

void main(){
  runApp(
  GetMaterialApp(
  title: 'Rutas de navegación',
  initialRoute: '/',
    routes: {
      '/': (context) => const FirstRoute(),
      '/second': (context) => const SecondRoute(),
      },
    )
  );
}


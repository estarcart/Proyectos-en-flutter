import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:list_usuarios/perfil_usuarios.dart';

class ListaUsuarios extends StatefulWidget {
  const ListaUsuarios({super.key});

  @override
  State<ListaUsuarios> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ListaUsuarios> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Lista de Estudiantes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var jsonList;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    try{
    var response = await Dio().get('https://api.npoint.io/5cb393746e518d1d8880');
    if(response.statusCode == 200){
      setState(() {
        jsonList = response.data["elementos"] as List;
        jsonList = response.data["elementos"] as List;
      });
    }else{
      print(response.statusCode);
    }
  }catch(e){
    print(e);
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {

        return Card(       
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Image.network(jsonList[index]["urlImagen"], width: 50, height: 50, fit: BoxFit.cover),
            ),
            title: Text(jsonList[index]["nombreCompleto"]),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Profesion: ${jsonList[index]["profesion"]}"),
                Text("Universidad: ${jsonList[index]["estudios"][0]["universidad"]}"),
                ElevatedButton(
                    child:  const Text('Ver perfil'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => Perfil(
                                  nombre: jsonList[index]["nombreCompleto"],
                                  profesion: jsonList[index]["profesion"],
                                  edad: jsonList[index]["edad"],
                                  universidad: jsonList[index]["estudios"][0]["universidad"],
                                  bachillerato: jsonList[index]["estudios"][0]["bachillerato"],
                                  urlImagen: jsonList[index]["urlImagen"])));
                    }),
              ],
            )
          )
      
        );
      },
      itemCount: jsonList == null ? 0 : jsonList.length,
      )      
    );
  }
}
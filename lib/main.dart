import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String txt4 = "Texto teste";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: criaAppBar("Aula 2"),
      body: criaPaginaPrincipal(),
      floatingActionButton: criaBotaoFlutuante(Icon(Icons.add), trocaTexto),
    );
  }

  criaPaginaPrincipal(){
    return Container(
      child: Column(
        children: [
          criaTexto(txt4, 15, true,Colors.blue),
          criaTexto(txt4, 20, true,Colors.red),
          criaTexto(txt4, 25, true,Colors.green),
          criaTexto(txt4, 30, true,Colors.grey),
        ],
      ),
    );
  }


  criaBotaoFlutuante(Icon icone, Function f){
    return FloatingActionButton(
      child: icone,
      onPressed: f,
      
    );
  }

  criaTexto(String txt, double tam, bool negrito, Color cor) {
    return Text(
      txt,
      style: TextStyle(fontSize: tam, color: cor, fontWeight: negrito?FontWeight.bold:FontWeight.normal),
    );

  }

  Function trocaTexto(){
    setState(() {
      txt4 = "Novo texto";
    });
  }

  criaAppBar(String titulo){
    return AppBar(
      title: criaTexto(titulo,30, true, Colors.black),
      centerTitle: true,
      actions: [
        Icon(Icons.print, size: 32,),
        Icon(Icons.delete, size: 32,)
      ],
    );
  }
}
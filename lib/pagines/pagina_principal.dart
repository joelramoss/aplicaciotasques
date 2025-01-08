import 'package:aplicaciotasques/Componentes/item_tasques.dart';
import 'package:flutter/material.dart';

class PaginaPrincipal extends StatefulWidget {

  const PaginaPrincipal({
  super.key, 
  });

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipal();
}

class _PaginaPrincipal extends State<PaginaPrincipal> {
  List tasquesLlista = [
    {"titol": "Hola", "valor": false},
    {"titol": "Adios ", "valor": true},
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.teal[100],

      //appbar
      appBar: AppBar(
        title: const Text("App Tasques"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.orange,
      ),

      //floatactionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        shape:const CircleBorder(),
        child: const Icon(Icons.add),
      ),

      //body
      body: ListView.builder(itemCount: tasquesLlista.length,itemBuilder: (context,index) {
        return Padding(
          padding:  EdgeInsets.all(8.0),
          child: Item_Tasques(textTasques:tasquesLlista[index]["titol"] ,valorCheckbox:tasquesLlista[index]["valor"]),
        );
      }),
    );
  }
}
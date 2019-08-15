import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Compras"),
        backgroundColor: Colors.indigo[900],
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_circle_outline),
            iconSize: 35.0,
            disabledColor: Color.fromRGBO(200, 200, 255, 20),
            onPressed: _newItemMenu,
          )
        ],
      ),
    );
  }

  Future _newItemMenu(){
    return showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
        backgroundColor: Color.fromRGBO(240, 240, 255, 20),
        title: Text("Cadastrar novo item"),
        titleTextStyle: TextStyle(fontSize: 15.0, color: Colors.black),
        
        );
      },
    );
  }
}
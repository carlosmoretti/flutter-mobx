import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:testandoget/controller/counter.controller.dart';
import 'package:testandoget/store/counter.store.dart';

class Testando extends StatefulWidget {
  _TestandoState createState() => _TestandoState();
}

class _TestandoState extends State<Testando> {
  @override
  Widget build(BuildContext context) {
    var store = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Testando"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Observer(
            builder: (_) => Center(child: Text(store.counter.toString()),),
          ),
          RaisedButton(
            child: Text("Adicionar"),
            onPressed: store.incrementCounter,
          )
        ],
      )
    );
  }
}
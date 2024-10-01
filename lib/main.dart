import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicação Bancária',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Minhas Contas'),
        ),
        body: const MyCardList(),
      ),
    );
  }
}

class MyCardList extends StatelessWidget {
  const MyCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Card(
          margin: EdgeInsets.all(10.0),
          color: Colors.blue,
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Conta Corrente: R\$ 1.200,00',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.all(10.0),
          color: Colors.green,
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Conta Poupança: R\$ 3.500,00',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.all(10.0),
          color: Colors.pink,
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Cartão de Crédito: R\$ 500,00 (Limite)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.all(10.0),
          color: Colors.red,
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Empréstimo: R\$ 2.000,00 (Devido)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.all(10.0),
          color: Colors.purple,
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Investimentos: R\$ 10.000,00',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividade 26/08',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card List'),
        ),
        body: MyCardList(),
      ),
    );
  }
}

class MyCardList extends StatelessWidget {
  final List<String> items =
      List<String>.generate(5, (index) => "Card $index");

  MyCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.all(10.0),
          color: Colors.pink[100],
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              items[index],
              style: const TextStyle(fontSize: 18),

            ),
          ),
        );
      },
    );
  }
}

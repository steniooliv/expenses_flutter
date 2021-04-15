import 'package:expenses_flutter/models/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _transaction = [
    Transaction(
      id: "t1",
      title: "New Shoes",
      value: 300.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "New T-Shirt",
      value: 80.99,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Personal Expenses"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Card(
                color: Colors.blue,
                child: Text("Graphic"),
                elevation: 5,
              ),
            ),
            Column(
              children: _transaction.map((e) {
                return Card(
                  child: Text(e.title),
                );
              }).toList(),
            )
          ],
        ));
  }
}

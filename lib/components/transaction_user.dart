import 'dart:math';

import 'package:expenses_flutter/components/transaction_form.dart';
import 'package:expenses_flutter/components/transaction_list.dart';
import 'package:expenses_flutter/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
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
    Transaction(
      id: "t2",
      title: "New T-Shirt",
      value: 80.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "New T-Shirt",
      value: 80.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "New T-Shirt",
      value: 80.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "New T-Shirt",
      value: 80.99,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transaction.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionList(_transaction),
      ],
    );
  }
}

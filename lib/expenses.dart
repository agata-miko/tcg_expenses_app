import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({Key? key}) : super(key: key);

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses tracker'),
      ),
      body: Column(
        children: <Widget>[
          Text('The chart'),
          Text('Expenses list...'),
        ],
      ),
    );
  }
}

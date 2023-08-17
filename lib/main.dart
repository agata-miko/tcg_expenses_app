import 'package:flutter/material.dart';
import 'package:tcg_expenses_app/expenses.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Expenses(),
    ),
  );
}
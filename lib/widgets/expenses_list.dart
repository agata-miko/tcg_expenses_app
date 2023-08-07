import 'package:flutter/material.dart';
import 'package:tcg_expenses_app/models/expense.dart';
import 'package:tcg_expenses_app/widgets/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({required this.expenses, Key? key}) : super(key: key);

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => ExpenseItem(expense: expenses[index]),
    );
  }
}

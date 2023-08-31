import 'package:flutter/material.dart';
import 'package:tcg_expenses_app/models/expense.dart';
import 'package:tcg_expenses_app/widgets/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({required this.expenses, required this.onRemoveExpense, Key? key}) : super(key: key);

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Dismissible(
          key: ValueKey(expenses[index]),
          onDismissed: (direction) {onRemoveExpense(expenses[index]);},
          child: ExpenseItem(expense: expenses[index])),
    );
  }
}

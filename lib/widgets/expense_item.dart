import 'package:flutter/material.dart';
import 'package:tcg_expenses_app/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({required this.expense, Key? key}) : super(key: key);

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        child: Column(
          children: <Widget>[
            Text(expense.title),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: <Widget>[
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                Spacer(),
                Row(
                  children: <Widget>[
                    Icon(Icons.access_alarm_outlined),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      expense.date.toString(),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

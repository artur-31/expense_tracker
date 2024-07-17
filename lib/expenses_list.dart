import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense> expenses;

  const ExpensesList({
    super.key,
    required this.expenses,
  });

  @override
  Widget build(BuildContext context) {
    // if you have a list of unknown length use the Widget ListView instead of the Column because
    // of performance and visability. ListView creates scrolable list.
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Text(expenses[index].title),
    );
  }
}

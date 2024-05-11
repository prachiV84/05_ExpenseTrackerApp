import 'package:flutter/material.dart';
import 'package:prachi/expenses.dart';
import 'package:prachi/models/expense.dart';
import 'package:prachi/widgets/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expense,
  });
  final List<Expense> expense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: expense.length,
    itemBuilder:(ctx,index)=>
    ExpenseItem(expense[index]),
      );
  }
}

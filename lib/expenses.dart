import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prachi/expenses_List.dart';
import 'package:prachi/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpense = [
    Expense(
        title: 'Flutter Course',
        amount: 999,
        category: Category.work,
        date: DateTime.now()),
    Expense(
        title: 'Dining',
        amount: 1999,
        category: Category.food,
        date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The Chart'),
          Expanded(
            child: ExpensesList(expense: _registeredExpense),
          ),
        ],
      ),
    );
  }
}

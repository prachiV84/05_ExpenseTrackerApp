import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, leisure, work, travel }

const CategoryIcons = {
  Category.food:Icons.lunch_dining,
  Category.leisure:Icons.movie,
  Category.travel:Icons.flight,
  Category.work:Icons.work
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.category,
    required this.date,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
   
   
}

import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});
  final Expense expense;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expense.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),//Text box at the top of the column
            const SizedBox(
              height: 4,
            ),//a little space between first row of the column and the second
            Row(children: [ //We need a bunch of things in this row of the column, so add a Row
              Text('\$${expense.amount.toStringAsFixed(2)}'), //amount first
              Spacer(),//spacer to push everything else over to the right
              Row(children: [ //Cat and Date closely grouped, so another row in this row
                Icon(categoryIcons[expense.category]), //change this later to look up a correct icon for the cat
                const SizedBox(width:8),
                Text(expense.formattedDate)
              ],)
            ],)
          ],
        ),
      ),
    );
  }
}
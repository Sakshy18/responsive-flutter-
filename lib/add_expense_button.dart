import 'package:flutter/material.dart';
import 'theme.dart';

class AddExpenseButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.add, color: Colors.white),
        label: Text(
          'Add Expense',
          style: TextStyle(
              fontSize:
                  MediaQuery.of(context).size.shortestSide < 600 ? 16 : 20,
              color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppTheme.secondaryColor,
        ),
      ),
    );
  }
}

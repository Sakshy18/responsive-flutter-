import 'package:flutter/material.dart';
import 'theme.dart';

class ExpenseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent Expenses',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.shortestSide < 600 ? 20 : 24,
            fontWeight: FontWeight.bold,
            color: AppTheme.primaryColor,
          ),
        ),
        SizedBox(height: 10),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 8,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.attach_money, color: AppTheme.primaryColor),
                title: Text(
                  'Expense ${index + 1}',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.shortestSide < 600
                          ? 16
                          : 20),
                ),
                subtitle: Text(
                  'Category',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.shortestSide < 600
                          ? 14
                          : 18),
                ),
                trailing: Text(
                  '\$100.00',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.shortestSide < 600
                          ? 16
                          : 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

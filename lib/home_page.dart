import 'package:expense_app/add_expense_button.dart';
import 'package:expense_app/category_list.dart';
import 'package:expense_app/expense_chart.dart';
import 'package:expense_app/expense_list.dart';
import 'package:flutter/material.dart';
import 'balance_card.dart';

class ExpenseTrackerHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return _buildCompactView(context);
          } else {
            return _buildExpandedView(context);
          }
        },
      ),
      drawer: MediaQuery.of(context).size.width < 600
          ? _buildSideBar(context)
          : null,
    );
  }

  Widget _buildCompactView(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BalanceCard(),
          SizedBox(height: 20),
          ExpenseChart(), // Display the expense chart
          SizedBox(height: 20),

          CategoryList(),
          SizedBox(height: 20),
          Text(
            'Recent Expenses',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ExpenseList(), // Display the expense list
          SizedBox(height: 20),
          AddExpenseButton(),
          SizedBox(height: 20),
          Text(
            'Expense Categories',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          // Display the category list
        ],
      ),
    );
  }

  Widget _buildExpandedView(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80),
              BalanceCard(),
              SizedBox(height: 20),
              ExpenseChart(), // Display the expense chart
            ],
          ),
        ),
        SizedBox(width: 40),
        Expanded(
          flex: 1,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                ExpenseList(), // Display the expense list
                SizedBox(height: 20),
                AddExpenseButton(),
                SizedBox(height: 20),
                // Display the category list
              ],
            ),
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }

  Widget _buildSideBar(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.account_circle, size: 64, color: Colors.white),
                SizedBox(height: 8),
                Text(
                  'Sakshi Thombre',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  'sak19@gmail.com',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('Dashboard'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Transactions'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Categories'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

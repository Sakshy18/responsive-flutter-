import 'package:flutter/material.dart';
import 'theme.dart';

class CategoryList extends StatelessWidget {
  final List<String> categories = [
    'Food',
    'Transport',
    'Shopping',
    'Bills',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Wrap(
          spacing: 10.0,
          runSpacing: 10.0,
          children: categories.map((category) {
            return Chip(
              label: Text(category),
              backgroundColor: AppTheme.secondaryColor,
              labelStyle: TextStyle(color: Colors.white),
            );
          }).toList(),
        ),
      ],
    );
  }
}

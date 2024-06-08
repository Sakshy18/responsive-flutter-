import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'theme.dart';

class ExpenseChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Expense Chart',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.shortestSide < 600 ? 20 : 24,
            fontWeight: FontWeight.bold,
            color: AppTheme.primaryColor,
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 200,
          child: LineChart(
            LineChartData(
              gridData: FlGridData(show: true),
              titlesData: FlTitlesData(show: true),
              borderData: FlBorderData(show: true),
              minX: 0,
              maxX: 6,
              minY: 0,
              maxY: 6,
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    FlSpot(0, 3),
                    FlSpot(1, 1),
                    FlSpot(2, 4),
                    FlSpot(3, 3),
                    FlSpot(4, 2),
                    FlSpot(5, 5),
                    FlSpot(6, 4),
                  ],
                  isCurved: true,
                  color: Colors.teal,
                  barWidth: 4,
                  belowBarData: BarAreaData(
                      show: true, color: Color.fromARGB(78, 100, 216, 255)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

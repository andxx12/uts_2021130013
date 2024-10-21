import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sales Chart"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: LineChart(
          LineChartData(
            gridData: FlGridData(show: true),
            borderData: FlBorderData(show: true),
            titlesData: FlTitlesData(show: true),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 1),
                  FlSpot(1, 1.5),
                  FlSpot(2, 1.4),
                  FlSpot(3, 3.4),
                  FlSpot(4, 2),
                  FlSpot(5, 2.2),
                  FlSpot(6, 1.8),
                ],
                isCurved: true,
                colors: [Colors.blue],
                barWidth: 4,
                isStrokeCapRound: true,
                belowBarData: BarAreaData(show: true),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeCharItem extends StatefulWidget {
  const IncomeCharItem({super.key});

  @override
  State<IncomeCharItem> createState() => _IncomeCharItemState();
}

class _IncomeCharItemState extends State<IncomeCharItem> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getCharData(),
      ),
    ); 
  }

  PieChartData getCharData() => PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (touchEvent, pieTouchResponse) {
            currentIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            value: 40,
            showTitle: false,
            radius: currentIndex == 0 ? 50 : 40,
            color: const Color(0xff208CC8),
          ),
          PieChartSectionData(
            value: 25,
            showTitle: false,
            radius: currentIndex == 1 ? 50 : 40,
            color: const Color(0xff4EB7F2),
          ),
          PieChartSectionData(
            value: 20,
            showTitle: false,
            radius: currentIndex == 2 ? 50 : 40,
            color: const Color(0xff064061),
          ),
          PieChartSectionData(
            value: 22,
            showTitle: false,
            radius: currentIndex == 3 ? 50 : 40,
            color: const Color(0xffE2DECD),
          ),
        ],
      );
}

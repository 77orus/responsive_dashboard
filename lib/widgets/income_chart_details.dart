import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeChartDetaild extends StatefulWidget {
  const IncomeChartDetaild({super.key});

  @override
  State<IncomeChartDetaild> createState() => _IncomeChartDetaildState();
}

class _IncomeChartDetaildState extends State<IncomeChartDetaild> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.61,
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
            title: currentIndex == 0 ? "Design service" : "40%",
            titlePositionPercentageOffset: currentIndex == 0 ? 1.6 : null,
            showTitle: true,
            radius: currentIndex == 0 ? 40 : 30,
            titleStyle: AppStyles.styleSemiBold18(context).copyWith(
              color: currentIndex == 0 ? const Color(0xff064061) : Colors.white,
            ),
            color: const Color(0xff208CC8),
          ),
          PieChartSectionData(
            value: 25,
            title: currentIndex == 1 ? "Design product" : "25%",
            titlePositionPercentageOffset: currentIndex == 1 ? 2.6 : null,
            showTitle: true,
            radius: currentIndex == 1 ? 40 : 30,
            titleStyle: AppStyles.styleSemiBold18(context).copyWith(
              color: currentIndex == 1 ? const Color(0xff064061) : Colors.white,
            ),
            color: const Color(0xff4EB7F2),
          ),
          PieChartSectionData(
            value: 20,
            showTitle: true,
            title: currentIndex == 2 ? "Product royalti" : "20%",
            titlePositionPercentageOffset: currentIndex == 2 ? 1.4 : null,
            radius: currentIndex == 2 ? 40 : 30,
            titleStyle: AppStyles.styleSemiBold18(context).copyWith(
              color: currentIndex == 2 ? const Color(0xff064061) : Colors.white,
            ),
            color: const Color(0xff064061),
          ),
          PieChartSectionData(
            value: 22,
            showTitle: true,
            title: currentIndex == 3 ? "Other" : "22%",
            titlePositionPercentageOffset: currentIndex == 3 ? 2 : null,
            radius: currentIndex == 3 ? 40 : 30,
            titleStyle: AppStyles.styleSemiBold18(context).copyWith(
              color: currentIndex == 3 ? const Color(0xff064061) : Colors.white,
            ),
            color: const Color(0xffE2DECD),
          ),
        ],
      );
}

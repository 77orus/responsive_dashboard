import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/income_char_item.dart';
import 'package:responsive_dash_board/widgets/income_chart_details.dart';
import 'package:responsive_dash_board/widgets/income_details_list_view.dart';

class IncomeChartBody extends StatelessWidget {
  const IncomeChartBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;

    return width >= SizeConfig.desktopSize && width < 1580
        ? const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: IncomeChartDetaild(),
          )
        : const Row(
            children: [
              Expanded(
                child: IncomeCharItem(),
              ),
              Expanded(
                flex: 2,
                child: IncomeDetailsListView(),
              )
            ],
          );
  }
}

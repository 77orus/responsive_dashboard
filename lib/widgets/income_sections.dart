
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/custom_background_widget.dart';
import 'package:responsive_dash_board/widgets/income_chat_body.dart';

import 'package:responsive_dash_board/widgets/income_header_item.dart';

class IncomeSections extends StatelessWidget {
  const IncomeSections({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      child: Column(
        children: [
          IncomeHeaderItem(),
          IncomeChartBody(),
        ],
      ),
    );
  }
}

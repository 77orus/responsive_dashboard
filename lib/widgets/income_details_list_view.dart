
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_model.dart';
import 'package:responsive_dash_board/widgets/income_details.dart';

class IncomeDetailsListView extends StatelessWidget {
  const IncomeDetailsListView({super.key});

  static const items = [
    IncomeDetailsModel(
        color: Color(0xff208CC8), title: "Design service", value: "%40"),
    IncomeDetailsModel(
        color: Color(0xff4EB7F2), title: "Design product", value: "%25"),
    IncomeDetailsModel(
        color: Color(0xff064061), title: "Product royalti", value: "%22"),
    IncomeDetailsModel(color: Color(0xffE2DECD), title: "other", value: "%20"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => IncomeDetails(incomeDetailsModel: e)).toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return IncomeDetails(
    //       incomeDetailsModel: items[index],
    //     );
    //   },
    // );
  }
}

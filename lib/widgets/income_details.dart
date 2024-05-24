import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key, required this.incomeDetailsModel});

  final IncomeDetailsModel incomeDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        incomeDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeDetailsModel.value,
        style: AppStyles.styleMedium16(context).copyWith(color: const Color(0xff208CC8)),
      ),
      leading: CircleAvatar(
        radius: 5,
        backgroundColor: incomeDetailsModel.color,
      ),
    );
  }
}

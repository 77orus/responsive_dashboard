import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionItemInfo extends StatelessWidget {
  const TransactionItemInfo({super.key, required this.transactionItemModel});

  final TransactionItemModel transactionItemModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionItemModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionItemModel.date,
          style: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0XFFAAAAAA),
          ),
        ),
        trailing: Text(
          transactionItemModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionItemModel.isIncome
                ? const Color(0XFFF3735E)
                : Colors.green,
          ),
        ),
      ),
    );
  }
}

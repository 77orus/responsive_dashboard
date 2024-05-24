import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_item_model.dart';
import 'package:responsive_dash_board/widgets/transaction_item.dart';

class TransactionItemsListView extends StatelessWidget {
  const TransactionItemsListView({super.key});

  static const items = [
    TransactionItemModel(
      title: "Cash Withdrawal",
      date: "13 Apr, 2022 ",
      amount: r"$20,129",
      isIncome: true,
    ),
    TransactionItemModel(
      title: "Landing Page project",
      date: "13 Apr, 2022 at 3:30 PM",
      amount: r"$$2,000",
      isIncome: false,
    ),
    TransactionItemModel(
      title: "Juni Mobile App project",
      date: "13 Apr, 2022 at 3:30 PM",
      amount: r"$20,129",
      isIncome: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((e) => TransactionItemInfo(transactionItemModel: e))
          .toList(),
    );

    // return ListView.builder(
    //   itemCount: items.length,
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) {
    //     return TransactionItemInfo(
    //       transactionItemModel: items[index],
    //     );
    //   },
    // );
  }
}

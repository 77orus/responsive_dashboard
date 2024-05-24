import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dash_board/widgets/income_sections.dart';
import 'package:responsive_dash_board/widgets/my_card_and_transaction_history.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            AllExpensesAndQuickInvoice(),
            SizedBox(height: 24),
            MyCardAndTransactionsHistory(),
            SizedBox(height: 24),
            IncomeSections(),
          ],
        ),
      ),
    );
  }
}

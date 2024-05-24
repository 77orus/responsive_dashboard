import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/lates_transaction.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_form.dart';
import 'package:responsive_dash_board/widgets/quick_invoicer_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        SizedBox(
          height: 24,
        ),
        LatestTransaction(),
        Divider(
          color: Color(0xffF1F1F1),
          height: 48,
        ),
        QuickInvoiceForm(),
        SizedBox(
          height: 24,
        ),
        
      ],
    );
  }
}

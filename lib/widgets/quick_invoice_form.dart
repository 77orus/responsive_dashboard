import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drop_down.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_buttons.dart';
import 'package:responsive_dash_board/widgets/title_with_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleWithTextField(
                title: "Customer name",
                hint: "Type customer name",
              ),
            ),
            Expanded(
              child: TitleWithTextField(
                title: "Customer Email",
                hint: "Type customer email",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleWithTextField(
                title: "Customer name",
                hint: "Type customer name",
              ),
            ),
            Expanded(child: CustomDropDown()),
          ],
        ),
        QuickInvoiceButtons(),
      ],
    );
  }
}

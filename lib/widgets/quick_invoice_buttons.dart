import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';

class QuickInvoiceButtons extends StatelessWidget {
  const QuickInvoiceButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            title: "Add more details",
            backgroundColor: Colors.transparent,
            textColor: Color(0xFF4EB7F2),
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: CustomButton(
            title: "Send Money",
          ),
        ),
      ],
    );
  }
}

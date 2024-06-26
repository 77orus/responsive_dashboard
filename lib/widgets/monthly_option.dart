
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MonthlyOption extends StatelessWidget {
  const MonthlyOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: Color(0xffF1F1F1),
            ),
            borderRadius: BorderRadius.circular(12)),
      ),
      child: Row(
        children: [
           Text(
            "Monthly",
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
            angle: 1.5708,
            child: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color(0xFF064060),
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}

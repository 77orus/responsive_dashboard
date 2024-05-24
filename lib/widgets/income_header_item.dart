import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeHeaderItem extends StatelessWidget {
  const IncomeHeaderItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          "Income",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        Container(
          height: 48,
          width: 142,
          decoration: const ShapeDecoration(
            color: Color(0xffFFFFFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
          child:  Row(
            children: [
              Text(
                "Monthly",
                style: AppStyles.styleMedium16(context),
              ),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Color(0xFF064061),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

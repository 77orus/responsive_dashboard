import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({super.key,});



  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  final List<String> items = ["EGP", "USD", "EUR", "GBP", "CAD"];
  String initialValue = "EGP";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Item Amount",
          style: AppStyles.styleMedium16(context),
        ),
        DropdownButtonFormField(
          decoration: const InputDecoration(
            filled: true,
            hintText: "EGP",
            fillColor: Colors.transparent,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffF1F1F1),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffF1F1F1),
              ),
            ),
          ),
          items: items.map((e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              initialValue = value!;
            });
          },
          icon: const Icon(Icons.keyboard_arrow_down_rounded),
        ),
      ],
    );
  }
}

import 'package:e_commercial/internal/constants/text_helper/text_helper.dart';
import 'package:flutter/material.dart';


class CommonCharDataWidget extends StatelessWidget {
  final String tittle;
  final String subTittle;

  const CommonCharDataWidget({
    super.key,
    required this.tittle,
    required this.subTittle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tittle,
          style: TextHelper.charSexText,
        ),
        const SizedBox(height: 5),
        Text(
          subTittle,
          style: TextHelper.charGenderText,
        ),
      ],
    );
  }
}
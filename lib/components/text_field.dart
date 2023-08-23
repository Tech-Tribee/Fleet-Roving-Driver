import 'package:flutter/material.dart';
import 'package:fleet_roving_driver/utils/colors.dart';

class BuildTextfield extends StatelessWidget {
  final String lebel;
  final String? placeholder;
  final TextEditingController textController;
  final bool isSecureText;

  const BuildTextfield(
      {Key? key,
      required this.lebel,
      this.placeholder,
      required this.textController,
      required this.isSecureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            lebel,
            style: const TextStyle(fontSize: 13, color: AppColors.darkBlue),
          ),
        ),
        TextField(
          controller: textController,
          obscureText: isSecureText,
          decoration: InputDecoration(
            hintText: placeholder,
            hintStyle: const TextStyle(color: AppColors.transparentBlack),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: AppColors.dodgerBlue, width: 1.0),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: AppColors.dodgerBlue, width: 2.0),
              borderRadius: BorderRadius.circular(8),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          ),
        )
      ],
    );
  }
}

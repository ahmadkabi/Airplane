import 'package:flutter/material.dart';
import '../../common/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String hint;
  final bool isObscure;
  final TextEditingController controller;

  const CustomTextFormField({
    super.key,
    required this.label,
    required this.hint,
    this.isObscure = false,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          const SizedBox(height: 6),
          TextFormField(
            obscureText: isObscure,
            cursorColor: kBlackColor,
            controller: controller ,
            decoration: InputDecoration(
              hintText: hint,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(color: kPrimaryColor, width: 2),
              ),
            ),
          )
        ],
      ),
    );
  }
}

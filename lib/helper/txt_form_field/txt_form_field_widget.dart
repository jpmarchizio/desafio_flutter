import 'package:flutter/material.dart';
import 'package:mask_input_formatter/mask_input_formatter.dart';

class TxtFormFieldWidget extends StatelessWidget {
  final String labelText;
  final TextInputType keyboardType;
  final Function(String) onChanged;
  final MaskInputFormatter? mask;
  final String? hintText;

  const TxtFormFieldWidget({
    Key? key,
    required this.labelText,
    required this.keyboardType,
    required this.onChanged,
    this.mask,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: mask != null ? [mask!] : null,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        hintText: hintText,
      ),
      onChanged: onChanged,
    );
  }
}

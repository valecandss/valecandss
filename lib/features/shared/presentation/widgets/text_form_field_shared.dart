import 'package:flutter/material.dart';

class TextFormFieldShared extends StatelessWidget {
  final TextEditingController? controller;
  final String? errorMessage;
  final String? hintText;
  final TextInputType keyboardType;
  final String? labelText;
  final Function()? onTap;

  const TextFormFieldShared({
    super.key,
    this.controller,
    this.errorMessage,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.labelText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

InputBorder border = OutlineInputBorder(
  borderSide: BorderSide(color: colors.secondary),
);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        onTap: onTap,
        decoration: InputDecoration(
          border: border,
          errorBorder:
              border.copyWith(borderSide: BorderSide(color: colors.error)),
          errorText: errorMessage,
          focusColor: colors.primary,
          focusedBorder:
              border.copyWith(borderSide: BorderSide(color: colors.primary)),
          focusedErrorBorder:
              border.copyWith(borderSide: BorderSide(color: colors.error)),
          hintText: hintText,
          isDense: true,
          labelText: labelText,
        ),
      ),
    );
  }
}

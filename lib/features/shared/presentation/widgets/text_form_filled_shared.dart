import 'package:flutter/material.dart';

class TextFormFilledShared extends StatelessWidget {
  final TextEditingController? controller;
  final String? errorMessage, hintText;
  final TextInputType keyboardType;
  final Function()? onTap;
  final String title;

  const TextFormFilledShared({
    super.key,
    this.controller,
    this.errorMessage,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    OutlineInputBorder borderStyle(Color color) {
      return OutlineInputBorder(
        borderSide: BorderSide(color: color, width: 1),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: colors.onSurfaceVariant,
              ),
            ),
          ),
          TextField(
            controller: controller,
            keyboardType: keyboardType,
            onTap: onTap,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              enabledBorder: borderStyle(colors.outline),
              errorBorder: borderStyle(colors.error),
              errorText: errorMessage,
              focusColor: colors.primary,
              focusedBorder: borderStyle(colors.primary),
              focusedErrorBorder: borderStyle(colors.error),
              hintText: hintText,
              hintStyle: TextStyle(
                color: colors.outline, 
                fontWeight: FontWeight.normal,
                ),
              isDense: true,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FilledTextButtonShared extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Color? buttonColor;
  final Widget? icon;
  final double? width;

  const FilledTextButtonShared(
      {super.key,
      this.onPressed,
      required this.text,
      this.buttonColor,
      this.icon,
      this.width});

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = DefaultTextStyle.of(context).style.fontSize!;
    
    return SizedBox(
      width: width ?? double.infinity,
      height: defaultTextStyle * 3.5,
      child: FilledButton.icon(
          label: Text(text),
          icon: icon ?? Container(),
          onPressed: onPressed,
          style: FilledButton.styleFrom(
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultTextStyle * 2),
            ),
          )),
    );
  }
}

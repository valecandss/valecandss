import 'package:flutter/material.dart';

class FilledIconButtonShared extends StatelessWidget {
  final Function()? onPressed;
  final IconData icon;
  final double? width, height, sizeIcon;
  final Color? color;
  const FilledIconButtonShared({
    super.key, 
    this.onPressed, 
    required this.icon, 
    this.width, 
    this.color, 
    this.height, 
    this.sizeIcon});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final defaultTextStyle = DefaultTextStyle.of(context).style.fontSize!;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        width: width ?? defaultTextStyle * 3.5,
        height: height ?? defaultTextStyle * 3.5,
        child: IconButton.filled(
          onPressed: onPressed,
          style:ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color ?? colors.secondary),
          ),
          icon: Icon(
            icon,
          size: sizeIcon,),
        ),
      ),
    );
  }
}

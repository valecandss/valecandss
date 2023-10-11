import 'package:flutter/material.dart';

class TitleShared extends StatelessWidget {
  final String title;
  const TitleShared({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = DefaultTextStyle.of(context).style.fontSize;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(title,
        style: TextStyle(
          fontSize: defaultTextStyle! + 3,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
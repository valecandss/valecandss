import 'package:flutter/material.dart';

class FilledCheck extends StatelessWidget {
  final bool? value;
  final String text;

  const FilledCheck({
    super.key,
    this.value = false, 
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final defaultTextStyle = DefaultTextStyle.of(context).style.fontSize!;

    return InkWell(
      onHover: (value) {
        value =! value;
      },
      child: Container(
        padding: const EdgeInsets.all(5.0),
        margin: const EdgeInsets.only(bottom: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1,
            color: value!
              ? colors.primary
              : colors.outline,
            ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Checkbox(
              value: value,
              activeColor: colors.outline,
              onChanged: (value){
                value ?? false == true ? false : true;
              }),
            Text(
              text,
              style: TextStyle(
                fontSize:defaultTextStyle + 2,
                color: colors.outline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
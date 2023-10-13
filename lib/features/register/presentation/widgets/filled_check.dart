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
              : Colors.black,
            ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Checkbox(
              value: value, 
              onChanged: (value){
                value ?? false == true ? false : true;
              }),
            Text(
              text,
            ),
          ],
        ),
      ),
    );
  }
}

// class FieldCheck extends StatefulWidget {
//     final bool? value;
//   final String text;
//   const FieldCheck({
//     super.key, 
//     this.value, 
//     required this.text});

//   @override
//   State<FieldCheck> createState() => _FieldCheckState();
// }

// class _FieldCheckState extends State<FieldCheck> {
//   @override
//   Widget build(BuildContext context) {
//     final colors = Theme.of(context).colorScheme;

//     return GestureDetector(
//     onTap: () {
//     setState((bool value) {
//       widget.value = !value;
//     });
//   },
//       child: Container(
//         padding: const EdgeInsets.all(5.0),
//         margin: const EdgeInsets.only(bottom: 12.0),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(8),
//           border: Border.all(
//             width: 1,
//             color: widget.value!
//               ? colors.primary
//               : Colors.black,
//             ),
//         ),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Checkbox(
//               value: widget.value, 
//               onChanged: (_){}),
//             Text(
//               widget.text,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
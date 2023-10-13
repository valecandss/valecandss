import 'package:flutter/material.dart';
import 'package:valecandss/features/shared/presentation/widgets/widgets_shared.dart';

class RegisterPicture extends StatelessWidget {
  const RegisterPicture({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = DefaultTextStyle.of(context).style.fontSize!;

    return Scaffold(
      body: SafeArea(
        child: Form(
        child: Column(     
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const TitleShared(
              title: 'Sube una foto desde tu galería',
            ),
            Center(
              child: FilledIconButtonShared(
                icon: Icons.add_a_photo_outlined,
                sizeIcon: defaultTextStyle * 3,
                width: defaultTextStyle * 12,
                height: defaultTextStyle * 12,
                color: Theme.of(context).colorScheme.primaryContainer,
                onPressed:() {
                  //TODO: Agregar ruta
                },
              ),
            ),
          ],
        ),
          ),
      )
    );
  }
}
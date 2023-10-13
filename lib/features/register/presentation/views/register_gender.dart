import 'package:flutter/material.dart';
import 'package:valecandss/features/register/presentation/widgets/widgets.dart';
import 'package:valecandss/features/shared/presentation/widgets/widgets_shared.dart';

class RegisterGender extends StatelessWidget {
  const RegisterGender({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: SafeArea(
        child: Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleShared(title: 'Escribe tu nombre y apellido'),
              FilledCheck(
                text: 'femenino',
              ),
              TextFormFilledShared(
                title: 'Apellido',
                hintText: 'Escribe tu apellido',
              ),
            ],
          ),
        ],
      ),
    )
      ),
    );
  }
}

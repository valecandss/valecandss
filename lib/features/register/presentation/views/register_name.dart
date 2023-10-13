import 'package:flutter/material.dart';
import 'package:valecandss/features/shared/presentation/widgets/widgets_shared.dart';

class RegisterName extends StatelessWidget {
  const RegisterName({super.key});

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
              TextFormFilledShared(
                title: 'Nombre',
                hintText: 'Escribe tu nombre',
              ),
              TextFormFilledShared(
                title: 'Apellido',
                hintText: 'Escribe tu Apellido',
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

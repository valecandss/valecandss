import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valecandss/features/shared/presentation/widgets/widgets_shared.dart';

class RegisterName extends ConsumerStatefulWidget {
  const RegisterName({super.key});

  @override
  RegisterNameState createState() => RegisterNameState();
}

class RegisterNameState extends ConsumerState<RegisterName> {
  late TextEditingController name;
  late TextEditingController lastName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TitleShared(title: 'Escribe tu nombre y apellido'),
                  TextFormFilledShared(
                    controller: name,
                    title: 'Nombre',
                    hintText: 'Escribe tu nombre',
                  ),
                  TextFormFilledShared(
                    controller: lastName,
                    title: 'Apellido',
                    hintText: 'Escribe tu Apellido',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

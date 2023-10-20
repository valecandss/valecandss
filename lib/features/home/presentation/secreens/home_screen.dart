import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:valecandss/config/confing.dart';
import 'package:valecandss/features/shared/helpers/herlpers.dart';
import 'package:valecandss/features/shared/presentation/widgets/widgets_shared.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingHorizontyal =
        ResponsivePadding(context, PaddingType.horizontal);
    final paddingVertical = ResponsivePadding(context, PaddingType.vertical);

    const String text =
        'App que te ayuda a controlar tu diabetes de forma sencilla. Registra tus niveles de glucosa en sangre, comparte tus datos con tu equipo médico y crea alertas para la toma de tus medicamentos.';

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontyal,
          vertical: paddingVertical,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    child: Image.asset('assets/pictures/plants_picture.png')),
                const TitleShared(title: 'Valecandss'),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            FilledTextButtonShared(
              text: 'Crear Cuenta',
              onPressed: () {
                context.go(AppRoute.register);
              },
            ),
          ],
        ),
      )),
    );
  }
}

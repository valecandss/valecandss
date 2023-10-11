import 'package:flutter/material.dart';
import 'package:valecandss/config/confing.dart';
import 'package:valecandss/features/register/presentation/screens/screens.dart';

void main() {
  runApp(const Valecandss());
}
class Valecandss extends StatelessWidget {
  const Valecandss({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme().getTheme(),
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
  }
}

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       routerConfig: appRouter,
//       debugShowCheckedModeBanner: false,
//       theme: AppTheme().getTheme(),
//     );
//   }
// }
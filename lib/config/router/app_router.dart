import 'package:go_router/go_router.dart';
import 'package:valecandss/features/home/presentation/secreens/screens.dart';
import 'package:valecandss/features/register/presentation/screens/screens.dart';

//TODO: enrutar las pantallas creadas

class AppRoute {
  static const String register = '/register';
  static const String homeScreen = '/';
}

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
  GoRoute(
    path: '/',
    builder: (context, state) {
      return const HomeScreen();
    },
  ),
  GoRoute(
    path: '/register',
    builder: (context, state) {
      return const RegisterScreen();
    },
  ),
]);

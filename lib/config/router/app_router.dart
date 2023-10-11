import 'package:go_router/go_router.dart';
import 'package:valecandss/features/register/presentation/screens/screens.dart';

//TODO: enrutar las pantallas creadas

class AppRoute {
  static const String register = '/register';
  static const String registerName = 'registerName';
  static const String registerPicture = 'registerPicture';

}

final appRouter = GoRouter(
  initialLocation: '/register',
  routes: [
  GoRoute(
    path: '/register',
    builder: (context, state) {
      return const RegisterScreen();
    },
  ),
]);

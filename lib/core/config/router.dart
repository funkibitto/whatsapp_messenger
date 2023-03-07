import 'package:go_router/go_router.dart';
import 'package:whatsapp_messenger/feature/auth/presentaion/pages/login_page.dart';
import 'package:whatsapp_messenger/feature/welcome/presentation/pages/welcome_page.dart';

final router = GoRouter(initialLocation: '/auth/login', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const WelcomePage(),
  ),
  GoRoute(
    path: '/auth/login',
    builder: (context, state) => const LoginPage(),
  ),
]);

import 'package:go_router/go_router.dart';
import 'package:whatsapp_messenger/feature/welcome/presentation/pages/welcome_page.dart';

final router = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const WelcomePage(),
  ),
]);

import 'package:go_router/go_router.dart';
import 'package:text_maker/presentation/screens/home_screen.dart';

final appRoutes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);

import 'package:go_router/go_router.dart';
import 'package:rental_car_app/domain/car/entity/car.dart';
import 'package:rental_car_app/presentation/pages.dart';

final GoRouter appRouter = GoRouter(initialLocation: '/loginPage', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const OnboardingPage(),
  ),
  GoRoute(
    path: '/carListPage',
    builder: (context, state) => const CarListPage(),
  ),
  GoRoute(
    path: '/loginPage',
    builder: (context, state) => const LoginPage(),
  ),
  GoRoute(
    path: '/mapDetailPage',
    builder: (context, state) {
      final car = state.extra as Car;
      return MapDetailPage(
        car: car,
      );
    },
  ),
  GoRoute(
    path: '/carDetailPage',
    builder: (context, state) {
      final car = state.extra as Car;
      return CarDetailPage(
        car: car,
      );
    },
  ),
]);

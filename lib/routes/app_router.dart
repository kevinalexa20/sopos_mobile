import 'package:go_router/go_router.dart';
import 'package:sopos_mobile/features/auth/presentation/pages/dashboard_page.dart';

final myRoute = GoRouter(initialLocation: '/dashboard', routes: [
  GoRoute(
    path: '/dashboard',
    name: 'dashboard',
    builder: (context, state) => DashboardPage(),
  )
]);

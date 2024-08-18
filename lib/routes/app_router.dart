import 'package:go_router/go_router.dart';
import 'package:sopos_mobile/features/auth/presentation/pages/register_page.dart';
import 'package:sopos_mobile/features/features.dart';

final myRoute = GoRouter(initialLocation: '/dashboard', routes: [
  GoRoute(
    path: '/dashboard',
    name: 'dashboard',
    builder: (context, state) => DashboardPage(),
  ),
  GoRoute(
    path: '/product',
    name: 'product',
    builder: (context, state) => ProductPage(),
  ),
  GoRoute(
    path: '/cashier',
    name: 'cashier',
    builder: (context, state) => CashierPage(),
  ),
  GoRoute(
    path: '/report',
    name: 'report',
    builder: (context, state) => ReportPage(),
  ),
  GoRoute(
    path: '/more',
    name: 'more',
    builder: (context, state) => MorePage(),
  ),
  GoRoute(
    path: '/login',
    name: 'login',
    builder: (context, state) => LoginPage(),
  ),
  GoRoute(
    path: '/register',
    name: 'register',
    builder: (context, state) => RegisterPage(),
  ),
]);

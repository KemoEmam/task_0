import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/layout/nav_bar_layout.dart';
import 'package:task/core/router/routes.dart';
import 'package:task/features/cart/presentation/views/cart_view.dart';
import 'package:task/features/home/presentation/views/burger_view.dart';
import 'package:task/features/home/presentation/views/home_view.dart';

// Root Navigator Key
final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: '_root');

final router = GoRouter(
  initialLocation: Routes.home,
  navigatorKey: _rootNavigatorKey,
  errorBuilder: (context, state) => const Scaffold(
    body: Center(child: Text('Oops! Page not found')),
  ),
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          NavigationBarLayout(shell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.home,
              builder: (context, state) => const HomeView(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.burger,
              builder: (context, state) => const BurgerView(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.cart,
              builder: (context, state) => const CartView(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: Routes.burger,
      builder: (context, state) => const BurgerView(),
    ),
  ],
);

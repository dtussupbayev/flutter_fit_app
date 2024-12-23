import 'package:flutter/material.dart';
import 'package:flutter_fit_app/presentation/features/statistics/statistics_screen.dart';
import 'package:flutter_fit_app/presentation/features/training/training_screen.dart';
import 'package:flutter_fit_app/presentation/features/settings/settings_screen.dart';
import 'package:go_router/go_router.dart';

import 'bottom_nav_scaffold.dart';

final router = GoRouter(
  initialLocation: '/training',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (
        BuildContext context,
        GoRouterState state,
        StatefulNavigationShell navigationShell,
      ) {
        return BottomNavScaffold(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/training',
              builder: (BuildContext context, GoRouterState state) =>
                  const TrainingScreen(),
              routes: [],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/statistics',
              builder: (BuildContext context, GoRouterState state) =>
                  const StatisticsScreen(),
              routes: [],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/settings',
              builder: (BuildContext context, GoRouterState state) =>
                  const SettingsScreen(),
              routes: [],
            ),
          ],
        ),
      ],
    ),
  ],
);

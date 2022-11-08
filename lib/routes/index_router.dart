import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ssf/pages/index_page.dart';
import 'package:ssf/pages/use_router/how_use_router_page.dart';

class IndexRouter {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (
          BuildContext context,
          GoRouterState state,
        ) {
          return const IndexPage();
        },
        routes: [
          GoRoute(
            path: 'HowUseRouterPage',
            builder: (
              BuildContext context,
              GoRouterState state,
            ) =>
                HowUseRouterPage(state.extra as String),
          ),
        ],
      ),
    ],
  );
}

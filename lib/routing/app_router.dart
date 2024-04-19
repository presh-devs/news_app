import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/features/news/presentation/headline_news.dart';
import 'package:news_app/features/news/presentation/news_page.dart';
import 'package:news_app/routing/scaffold_with_nested_naviagtion.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'forYou');
final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'headlineNews');

@riverpod
GoRouter goRouter (GoRouterRef ref) => GoRouter(
    initialLocation: '/forYou',
    navigatorKey: _rootNavigatorKey,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _shellNavigatorAKey,
            routes: [
              // top route inside branch
              GoRoute(
                path: '/forYou',
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: NewsPage(),
                ),
                routes: [
                  // child route
                  // GoRoute(
                  //   path: 'details',
                  //   name: '',
                  //   builder: (context, state) =>
                  //       // const DetailsScreen(label: 'A'),
                  // ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorBKey,
            routes: [
              // top route inside branch
              GoRoute(
                path: '/headlines',
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: HeadlineNewsPage(),
                ),
                routes: [
                  // child route
                  // GoRoute(
                  //   path: 'details',
                  //   builder: (context, state) =>
                  //       const DetailsScreen(label: 'A'),
                  // ),
                ],
              ),
            ],
          ),
        ],
      )
    ],
  
);

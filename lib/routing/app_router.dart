import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/features/news/domain/news.dart';
import 'package:news_app/features/news/presentation/headline_news.dart';
import 'package:news_app/features/news/presentation/news_detail.dart';
import 'package:news_app/features/news/presentation/news_page.dart';
import 'package:news_app/routing/scaffold_with_nested_naviagtion.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorForYouKey = GlobalKey<NavigatorState>(debugLabel: 'forYou');
final _shellNavigatorHeadlineKey = GlobalKey<NavigatorState>(debugLabel: 'headlineNews');

enum AppRoute {
  headineNews,
  news,
  favorites,
}

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
            navigatorKey: _shellNavigatorForYouKey,
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
                  //   name: AppRoute.news.name,
                  //   pageBuilder: (context, state) {
                     
                  //     final news = state.extra is News
                  //         ? state.extra as News
                  //         : null;
                  //     return NoTransitionPage(child: DetailsPage(news: news!)) ;
                  //   }),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorHeadlineKey,
            routes: [
              // top route inside branch
              GoRoute(
                path: '/headlines',
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: HeadlineNewsPage(),
                ),
                routes: [
                  // child route
                  GoRoute(
                    path: 'details',
                    name: AppRoute.news.name,
                    pageBuilder: (context, state) {
                     
                      final news = state.extra is News
                          ? state.extra as News
                          : null;
                      return NoTransitionPage(child: DetailsPage(news: news!)) ;
                    }),
                ],
              ),
            ],
          ),
        ],
      )
    ],
  
);

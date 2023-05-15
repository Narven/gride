import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:gride/core/core.dart';
import 'package:gride/features/auth/presentation/custom_signin_screen.dart';
import 'package:gride/features/blueprint_code/presentation/blueprint_editor_screen.dart';
import 'package:gride/features/home/presentation/home_screen.dart';
import 'package:gride/routing/go_router_refresh_stream.dart';

enum AppRoute {
  signIn,
  home,
  settings,
  calendar,
  classrooms,
  users,
  accidents,
  chat,
  report,
  signOut,
  projects,
  project,
  file,
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/sign-in',
    redirect: (context, state) {
      final isLoggedIn = ref.watch(firebaseAuthProvider).currentUser != null;

      if (isLoggedIn) {
        if (state.location == '/sign-in') {
          return '/home';
        }
      } else {
        if (state.location.startsWith('/home') ||
            state.location.startsWith('/projects')) {
          return '/sign-in';
        }
      }
      return null;
    },
    refreshListenable: GoRouterRefreshStream(
      ref.watch(firebaseAuthProvider).authStateChanges(),
    ),
    routes: [
      GoRoute(
        path: '/sign-in',
        name: AppRoute.signIn.name,
        builder: (context, state) => const CustomSignInScreen(),
      ),
      GoRoute(
        path: '/home',
        name: AppRoute.home.name,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/projects',
        name: AppRoute.projects.name,
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: ':projectId',
            name: AppRoute.project.name,
            builder: (context, state) => const BlueprintEditorScreen(),
            routes: [
              GoRoute(
                path: ':file',
                name: AppRoute.file.name,
                builder: (context, state) => const BlueprintEditorScreen(),
              )
            ],
          ),
        ],
      ),
    ],
  );
});

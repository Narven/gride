import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:gride/core/core.dart';
import 'package:gride/routing/app_router.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                ref.read(firebaseAuthProvider).signOut();
              },
              child: const Text('Sign Out'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Create Project'),
            ),
            const SizedBox(height: 10),
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                ListTile(
                  onTap: () {
                    context.goNamed(AppRoute.project.name,
                        pathParameters: {'projectId': '3892389'});
                  },
                  title: const Text('Project 1'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

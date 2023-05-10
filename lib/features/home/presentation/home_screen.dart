import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Create Project'),
            ),
            const SizedBox(height: 10),
            ListView(
              shrinkWrap: true,
              children: const [
                Text('Project 1'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

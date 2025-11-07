import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: cs.primaryContainer,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.flutter_dash, size: 96, color: cs.onPrimaryContainer),
            const SizedBox(height: 12),
            Text('KB1179 UTS',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: cs.onPrimaryContainer, fontWeight: FontWeight.w700)),
          ],
        ),
      ),
    );
  }
}

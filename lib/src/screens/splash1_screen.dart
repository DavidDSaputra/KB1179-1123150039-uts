import 'package:flutter/material.dart';
import '../routes.dart';
import '../strings.dart';

class Splash1Screen extends StatefulWidget {
  const Splash1Screen({super.key});
  @override
  State<Splash1Screen> createState() => _Splash1ScreenState();
}

class _Splash1ScreenState extends State<Splash1Screen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, Routes.splash2);
    });
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: cs.primaryContainer,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.bolt, size: 96, color: cs.onPrimaryContainer),
            const SizedBox(height: 12),
            Text(
              S.appTitle,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: cs.onPrimaryContainer,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            const SizedBox(height: 6),
            Text('Splash 1', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../routes.dart';
import '../strings.dart';

class Splash2Screen extends StatefulWidget {
  const Splash2Screen({super.key});
  @override
  State<Splash2Screen> createState() => _Splash2ScreenState();
}

class _Splash2ScreenState extends State<Splash2Screen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, Routes.splash3);
    });
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: cs.secondaryContainer,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.security, size: 96, color: cs.onSecondaryContainer),
            const SizedBox(height: 12),
            Text(
              S.appTitle,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: cs.onSecondaryContainer,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            const SizedBox(height: 6),
            Text('Splash 2', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
      ),
    );
  }
}

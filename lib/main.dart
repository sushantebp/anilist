import 'package:anilist/core/core.dart';
import 'package:flutter/material.dart';

void main() {
  setupDependencies();
  runApp(const Anilist());
}

class Anilist extends StatelessWidget {
  const Anilist({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: AppRouter.instance.config());
  }
}

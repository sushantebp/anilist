import 'package:anilist/core/core.dart';
import 'package:flutter/material.dart';

class Anilist extends StatelessWidget {
  const Anilist({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.system,
      routerConfig: AppRouter.instance.config(),
    );
  }
}
